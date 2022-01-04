package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.SelectedTopicMapper;
import com.lgh.modules.admin.mapper.StudentMapper;
import com.lgh.modules.admin.mapper.TutorMapper;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.Tutor;
import com.lgh.modules.admin.service.SelectedTopicService;
import com.lgh.modules.admin.service.TutorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Service
@Transactional
public class TutorServiceImpl extends ServiceImpl<TutorMapper, Tutor> implements TutorService {
    @Autowired
    private SelectedTopicService selectedTopicService;
    @Autowired
    private SelectedTopicMapper selectedTopicMapper;
    @Autowired
    private StudentMapper studentMapper;
    @Autowired
    private TutorMapper tutorMapper;
    @Autowired
    private TutorService tutorService;
    @Override
    public Integer isAdmin(String tutorId) {
       try {
           QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
           queryWrapper.lambda().select(Tutor::getAdminJudge).eq(Tutor::getTutorId,tutorId);
           Tutor tutor = tutorMapper.selectOne(queryWrapper);
           //如果等于1则他为admin
           if(tutor.getAdminJudge()==1){
               return 1;
           }
       }catch (Exception e){

       }
        return 0;
    }

    @Override
    public Tutor login(String tutorId, String pwd) {
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Tutor::getTutorName,tutorId)
        .eq(Tutor::getTutorPwd,pwd).eq(Tutor::getAdminJudge,1);
        Tutor tutor = tutorMapper.selectOne(queryWrapper);
        //如果等于1则他为admin
        return tutor;
    }


    @Override
    public Page list(int curr, int size,String work) {
        Page page=new Page<>(curr,size);
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Tutor::getWork,work);
        return this.page(page,queryWrapper);
    }
    @Override
    public Page tutorList(int curr, int size,Integer junt) {
        Page page=new Page<>(curr,size);
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Tutor::getTutorJudge,junt);
        return this.page(page,queryWrapper);
    }

    @Override
    public Page tutorListByJudge(int curr, int size) {
        Page page=new Page(curr,size);
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper();
        //查询可以继续选择的老师信息
        queryWrapper.lambda().eq(Tutor::getTutorJudge,1).eq(Tutor::getTutorStudentJudge,0);
        return this.page(page,queryWrapper);
    }

    @Override
    public Tutor tutorLogin(String tutorName, String pwd) {
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Tutor::getTutorName,tutorName)
                .eq(Tutor::getTutorPwd,pwd).eq(Tutor::getTutorJudge,1);
        Tutor tutor = tutorMapper.selectOne(queryWrapper);
        //如果等于1则他为admin
        return tutor;
    }

    @Override
    public boolean getOne(Tutor tutor) {
        Integer studentSize = tutor.getStudentSize();
        Integer size = tutorMapper.sizeStudent();
        if(studentSize>=size){
            return false;
        }else{
            return true;
        }

    }

    @Override
    @Transactional
    public boolean thressFp() {

        //查找未选满的教师（还有名额的教师）
        List<Tutor> tutors=tutorMapper.notFull();
        HashMap<String,Integer> hashMapTutor=new HashMap();
        //教师id对应分配的学生
        Map<String,List<Student>> stringListMap=new HashMap();
//        将所有教师剩余名额存进map集合
        for (Tutor tutor : tutors) {
            hashMapTutor.put(tutor.getTutorId(),tutor.getStudentSize());
        }
        //未被选中的学生
        List<Student> list=tutorMapper.notTutor();
        //便利所有老师的key和所带学生数
        for(HashMap.Entry<String,Integer> entry : hashMapTutor.entrySet()) {
            //便利老师的key获取选择的数
            String tutorId = entry.getKey();
            //获取老师的名额
            Integer name = hashMapTutor.get(tutorId);
            Integer nasss = name;
            // 创建一个生产随机数的对象
            Random r = new Random();
            List<Student> students=new ArrayList<>();
            List<String> major=new ArrayList<>();
            //根据老师名额带学生
            for (int i = nasss-1; i >= 0; i--) {

                //学生都分配完成直接跳出本次循环
                if(list.size()==0){
                    continue;
                }
                //对list集合进行筛选（老师分为三个状态：一个没选、已选）
                //（1）根据学号获得教师信息
                if(name==8){
                    name--;
                    // 通过对象方法获取随机数
                    if(list.size()==0){
                        continue;
                    }
                    int i1 = r.nextInt(list.size());
                    //获取学生信息
                    Student integer = list.get(i1);
                    major.add(integer.getMajor());
                    //存入学生的List集合
                    students.add(integer);
                    //移除这个下标对应的值进行下一次循环
                    list.remove(i1);
                }else {
                    if(major.size()==0){
                        Tutor tu = tutorService.getById(tutorId);
                        List<StudentExcel> excelFinalTutor = studentMapper.findExcelFinalTutor(tu.getTutorName());
                        major.add(excelFinalTutor.get(0).getMajor());
                    }
                    String s = major.get(0);
                    List<Student> studentList=new ArrayList<>();
                    for (Student student : list) {

                        if(student.getMajor().equals(s)){
                            studentList.add(student);

                        }
                    }
                    if(studentList.size()==0){
                        continue;
                    }
                    // 通过对象方法获取随机数
                    int i1 = r.nextInt(studentList.size());
                    //获取学生信息
                    Student integer = studentList.get(i1);
                    //存入学生的List集合
                    students.add(integer);
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if(list.get(i2).getStudentId().equals(integer.getStudentId())){
                            list.remove(i2);
                        }
                    }
                    //移除这个下标对应的值进行下一次循环
                    studentList.remove(i1);
                }
            }



            //录入map集合
            stringListMap.put(entry.getKey(),students);
            //判断
            if(list.size()==0){
                break;
            }
        }



        for (Tutor tutor : tutors) {
            int i=0;
            List<Student> students = stringListMap.get(tutor.getTutorId());
            if(students==null){
                continue;
            }
            for (Student student : students) {
                student.setPd(1);
                studentMapper.updateById(student);
                //封装SelectedTopic对象
                SelectedTopic selectedTopic=new SelectedTopic();
                selectedTopic.setPd(1);
                selectedTopic.setStudentId(student.getStudentId());
                selectedTopic.setTutorName(tutor.getTutorName());
                UpdateWrapper<SelectedTopic> updateWrapper=new UpdateWrapper<>();
                updateWrapper.lambda().set(SelectedTopic::getPd,1).set(SelectedTopic::getTutorName,tutor.getTutorName())
                        .eq(SelectedTopic::getStudentId,student.getStudentId());
                QueryWrapper<SelectedTopic> selectedTopicQueryWrapper=new QueryWrapper<>();
                selectedTopicQueryWrapper.lambda().eq(SelectedTopic::getStudentId,student.getStudentId());
                if(selectedTopicMapper.selectOne(selectedTopicQueryWrapper)!=null){
                    selectedTopicMapper.update(selectedTopic,updateWrapper);
                }else{
                    selectedTopic.setTopic("未知");
                    selectedTopic.setDirection("未知");
                    //如果没有该学生的任何信息直接进行录入
                    selectedTopicMapper.insert(selectedTopic);
                }
                i++;
            }
            tutor.setStudentSize(tutor.getStudentSize()-i);
            tutorMapper.updateById(tutor);
            if(tutor.getStudentSize()==0){
                tutor.setTutorStudentJudge(1);
            }
        }

        return true;
    }

    @Override
    public Page tutorListStu(int curr, int size,Integer junt) {
        Page page=new Page<>(curr,size);
        QueryWrapper<Tutor> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Tutor::getTutorJudge,junt).gt(Tutor::getStudentSize,0);
        return this.page(page,queryWrapper);
    }

}

package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.SelectedTopicMapper;
import com.lgh.modules.admin.mapper.StudentMapper;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.Tutor;
import com.lgh.modules.admin.service.SelectedTopicService;
import com.lgh.modules.admin.service.StudentService;
import com.lgh.modules.admin.service.TutorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

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
public class SelectedTopicServiceImpl extends ServiceImpl<SelectedTopicMapper, SelectedTopic> implements SelectedTopicService {

    @Autowired
    private TutorService tutorService;
    @Autowired
    private StudentService studentService;
    @Autowired
    private SelectedTopicMapper selectedTopicMapper;
    @Override
    public List<StudentExcel> findExcelFinal() {
        return selectedTopicMapper.findExcelFinal();
    }

    @Override
    public Boolean updateExcelByStudentId(String topic,String direction, String studentId) {
        SelectedTopic selectedTopic=new SelectedTopic();

        selectedTopic.setSelUpdater(studentId);
        selectedTopic.setTopic(topic);
        selectedTopic.setDirection(direction);
        UpdateWrapper<SelectedTopic> updateWrapper=new UpdateWrapper<>();

        updateWrapper.lambda().set(SelectedTopic::getTopic,topic).set(SelectedTopic::getDirection,direction)
                .eq(SelectedTopic::getStudentId,studentId);
        return this.update(selectedTopic,updateWrapper);

    }


    @Override
    public boolean SelectKTInsert(SelectedTopic selectedTopic) {
        UpdateWrapper<Student> updateWrapper=new UpdateWrapper<>();
        updateWrapper.lambda().eq(Student::getStudentId,selectedTopic.getStudentId()).set(Student::getPd,1);
        studentService.update(updateWrapper);
        selectedTopic.setPd(0);
        QueryWrapper<SelectedTopic> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(SelectedTopic::getStudentId,selectedTopic.getStudentId());
        if(this.getOne(queryWrapper)==null) {
            boolean save = this.save(selectedTopic);
        }else{
            QueryWrapper<SelectedTopic> selectedTopicQueryWrapper=new QueryWrapper<>();
            selectedTopicQueryWrapper.lambda().eq(SelectedTopic::getStudentId,selectedTopic.getStudentId());
            this.update(selectedTopic,selectedTopicQueryWrapper);
        }
        return true;
    }

    @Override
    public Boolean deleteSelectedTopic(Student student) {
       QueryWrapper<SelectedTopic> queryWrapper=new QueryWrapper<>();
       queryWrapper.lambda().eq(SelectedTopic::getStudentId,student.getStudentId());
       this.remove(queryWrapper);
       UpdateWrapper<Student> updateWrapper=new UpdateWrapper<>();
       updateWrapper.lambda().eq(Student::getStudentId,student.getStudentId()).set(Student::getPd,0);

       return studentService.update(updateWrapper);
    }

    @Override
    public Page<SelectedTopic> findSelectedByTutorName(String tutorName,Integer pageNum,Integer pageSize) {
        Page<SelectedTopic> page=new Page<>(pageNum,pageSize);
        QueryWrapper<SelectedTopic> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(SelectedTopic::getTutorName,tutorName);
        return this.page(page, queryWrapper);

    }

    @Override
    @Transactional
    public Boolean xuankecaozuo(Tutor tutor,String studentId) {
        //判断该导师选的学生专业
        //(1)判断是否选择过学生
        Integer studentSize = tutor.getStudentSize();
        if(studentSize==8){
            //查询该教师是否选过学生
            Tutor tutorServiceById0 = tutorService.getById(tutor.getTutorId());
            if(tutorServiceById0.getStudentSize()==0){
                return false;
            }
            if(tutor.getStudentSize()>0){
                UpdateWrapper<Tutor> updateWrapper=new UpdateWrapper<>();
                Tutor tutorServiceById = tutorService.getById(tutor.getTutorId());
                updateWrapper.lambda().set(Tutor::getStudentSize,tutorServiceById.getStudentSize()-1).eq(Tutor::getTutorId,tutor.getTutorId());
                //设置名额-1
                tutorService.update(updateWrapper);
                if(tutor.getStudentSize()==0){
                    UpdateWrapper<Tutor> updateWrapper1=new UpdateWrapper<>();
                    tutor.setTutorStudentJudge(1);
                    //设置该教师余额已满
                    updateWrapper1.lambda().set(Tutor::getTutorStudentJudge,tutor.getTutorStudentJudge()).eq(Tutor::getTutorId,tutor.getTutorId());
                    tutorService.update(updateWrapper);
                }

            }
            UpdateWrapper<SelectedTopic> selectedTopicUpdateWrapper=new UpdateWrapper<>();
            selectedTopicUpdateWrapper.lambda().set(SelectedTopic::getPd,1).eq(SelectedTopic::getTutorName,tutor.getTutorName())
                    .eq(SelectedTopic::getStudentId,studentId);
            return this.update(selectedTopicUpdateWrapper);
        }else{
            //已选过学生
            Student student = studentService.getById(studentId);
            String tutorName = tutor.getTutorName();
            List<StudentExcel> excelFinal = studentService.findExcelFinal(tutor.getTutorName());
            String major = excelFinal.get(0).getMajor();
            //判断该专业的学生是否为该教师的专业类型
            if(student.getMajor().equals(major)){
                //查询该教师是否选过学生
                Tutor tutorServiceById0 = tutorService.getById(tutor.getTutorId());
                if(tutorServiceById0.getStudentSize()==0){
                    return false;
                }
                if(tutor.getStudentSize()>0){
                    UpdateWrapper<Tutor> updateWrapper=new UpdateWrapper<>();
                    Tutor tutorServiceById = tutorService.getById(tutor.getTutorId());
                    updateWrapper.lambda().set(Tutor::getStudentSize,tutorServiceById.getStudentSize()-1).eq(Tutor::getTutorId,tutor.getTutorId());
                    //设置名额-1
                    tutorService.update(updateWrapper);
                    if(tutor.getStudentSize()==0){
                        UpdateWrapper<Tutor> updateWrapper1=new UpdateWrapper<>();
                        tutor.setTutorStudentJudge(1);
                        //设置该教师余额已满
                        updateWrapper1.lambda().set(Tutor::getTutorStudentJudge,tutor.getTutorStudentJudge()).eq(Tutor::getTutorId,tutor.getTutorId());
                        tutorService.update(updateWrapper);
                    }

                }
                UpdateWrapper<SelectedTopic> selectedTopicUpdateWrapper=new UpdateWrapper<>();
                selectedTopicUpdateWrapper.lambda().set(SelectedTopic::getPd,1).eq(SelectedTopic::getTutorName,tutor.getTutorName())
                        .eq(SelectedTopic::getStudentId,studentId);
                return this.update(selectedTopicUpdateWrapper);
            }
            else {return false;}
        }

    }

    @Override
    public Boolean twoStart() {
        //查找待选的学生id
        QueryWrapper<SelectedTopic> selectedTopicServiceQueryWrapper=new QueryWrapper<>();
        selectedTopicServiceQueryWrapper.lambda().eq(SelectedTopic::getPd,0);
        List<SelectedTopic> list = this.list(selectedTopicServiceQueryWrapper);
        //操作待选的学生id对其进行set pd=0
        List<String> studentIds=new ArrayList<>();
        for (SelectedTopic selectedTopic : list) {
            studentIds.add(selectedTopic.getStudentId()) ;
        }
        if(this.remove(selectedTopicServiceQueryWrapper)){
            for (String studentId : studentIds) {
                UpdateWrapper<Student> updateWrapper=new UpdateWrapper<>();
                updateWrapper.lambda().eq(Student::getStudentId,studentId).set(Student::getPd,0);
                studentService.update(updateWrapper);
            }
        }
        //删除selected*中的数据

        return true;
    }
}

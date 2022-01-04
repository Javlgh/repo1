package com.lgh.modules.admin;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.mapper.*;
import com.lgh.modules.admin.model.*;
import com.lgh.modules.admin.service.*;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
import com.lgh.modules.admin.utils.api.Pageable;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.*;

@SpringBootTest
class AdminApplicationTests {

    @Autowired
    private XTimeService xTimeService;
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
    @Autowired
    private ClassONMapper mapper;
    @Autowired
    private ClassONService service;
    @Autowired
    private ClassAllService allService;

//    @Autowired
//    private StudentService service;
    @Test
    void contextLoads() {
//        Student student =new Student();
//        student.setStudentId("2019021017");
//        student.setStudentName("孙银川");
//        student.setMajor("计算机科学与技术");
//        student.setCollege("软件学院");
//        student.setStudentSex("男");
//        student.setPd(0);
//        boolean result = service.save(student);
//        System.out.println(result);
////        List<StudentExcel> excelFinal = studentMapper.findExcelFinal();
////        System.out.println(excelFinal);
//
//        System.out.println(student);

//        List<StudentExcel> excelFinal = studentMapper.findExcelFinal();
//        System.out.println(excelFinal);
//        Page page=new Page(1,5);
//        Page<ClassON> all = mapper.findAll(page);
//        CommonPage<ClassON> classONCommonPage = CommonPage.restPage(all);
//        System.out.println(CommonResult.success(classONCommonPage).toString());
//        Page list = allService.list(1, 5);
//        System.out.println(list.getRecords());
//
//        List<ClassAll> list1 = allService.list();
//        System.out.println(list1);
//        CommonPage<T> tCommonPage = CommonPage.restPage(all);
//        Page page=new Page(1,5);
//        Page page1 = allService.page(page);s
//        System.out.println(page1.getRecords());
//        Page  s= tutorService.list(1, 5, "导员");
//        System.out.println(s.getRecords());
        //老师的key=>id,value=>老师所剩名额
        List<Tutor> tutors=new ArrayList<>();
        HashMap<String,Integer> hashMapTutor=new HashMap();
        Map<String,List<Student>> stringListMap=new HashMap();
        for (Tutor tutor : tutors) {
            hashMapTutor.put(tutor.getTutorId(),tutor.getStudentSize());
        }
        //未选中的学生
        List<Student> list=new ArrayList<>();
        //second way （推荐）
        for(HashMap.Entry<String,Integer> entry : hashMapTutor.entrySet()) {
            Integer name = hashMapTutor.get(entry.getKey());
            // 创建一个生产随机数的对象
            Random r = new Random();
            List<Student> students=new ArrayList<>();
            for (int i = name-1; i >= 0; i--) {
                // 通过对象方法获取随机数
                int i1 = r.nextInt(list.size());
                Student integer = list.get(i1);
                students.add(integer);
                list.remove(i1);
            }
            stringListMap.put(entry.getKey(),students);
        }
        System.out.println(stringListMap);






    }
    @Autowired
    private StudentExcelMapper studentExcelMapper;
    @Test
    public void tests(){
//        Object []obj = new Object[5];
//        obj[0] = 2;
//        obj[1] = 4;
//        obj[2] = 6;
//        obj[3] = 7;
//        obj[4] = 9;
////为了便于操作 将数组转化成List
//        List list= new ArrayList();
//        for(int i=0;i<obj.length;i++){
//            list.add(obj[i]);
//        }
//        int size = list.size();
//        Random ran = new Random();
//        for(int i=0;i<obj.length;i++){
//            int temp = 0;
////产生随机数
//            temp = ran.nextInt(size);
//            System.out.println(temp);
//            System.out.println("=====");
//            System.out.println(list.get(temp));
//
////移除随即产生的下标值的元素
//            list.remove(temp);
////List的大小减1
//            size--;
//        }
//    } @Test
//    public void testss(){
//
//
//
////        List<StudentExcel> excelFinal = studentMapper.findExcelFinal();
//        Pageable pageable=new Pageable();
//        pageable.setPage(1);
//        pageable.setItemsPerPage(1);
//        System.out.println(pageable.getStartRow());
//        List<StudentExcel> excelFinal = studentMapper.findFinal(pageable.getStartRow(),1);
//        System.out.println(excelFinal);


        Page page=new Page(1,1);
//        List<StudentExcel> aFinal = studentMapper.findFinal();
//        System.out.println(aFinal);
    }



    @Test
    public void ceTest() {
        //查找未选满的教师（还有名额的教师）
        List<Tutor> tutors = tutorMapper.notFull();
        HashMap<String, Integer> hashMapTutor = new HashMap();
        //教师id对应分配的学生
        Map<String, List<Student>> stringListMap = new HashMap();
//        将所有教师剩余名额存进map集合
        for (Tutor tutor : tutors) {
            hashMapTutor.put(tutor.getTutorId(), tutor.getStudentSize());
        }
        //未被选中的学生
        List<Student> list = tutorMapper.notTutor();
        //便利所有老师的key和所带学生数
        for (HashMap.Entry<String, Integer> entry : hashMapTutor.entrySet()) {
            //便利老师的key获取选择的数
            String tutorId = entry.getKey();
            //获取老师的名额
            Integer name = hashMapTutor.get(tutorId);
            Integer nasss = name;
            // 创建一个生产随机数的对象
            Random r = new Random();
            List<Student> students = new ArrayList<>();
            List<String> major = new ArrayList<>();
            //根据老师名额带学生
            for (int i = nasss - 1; i >= 0; i--) {

                //学生都分配完成直接跳出本次循环
                if (list.size() == 0) {
                    continue;
                }
                //对list集合进行筛选（老师分为三个状态：一个没选、已选）
                //（1）根据学号获得教师信息
                if (name == 8) {
                    name--;
                    // 通过对象方法获取随机数
                    if (list.size() == 0) {
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
                } else {
                    if (major.size() == 0) {
                        Tutor tu = tutorService.getById(tutorId);
                        List<StudentExcel> excelFinalTutor = studentMapper.findExcelFinalTutor(tu.getTutorName());
                        major.add(excelFinalTutor.get(0).getMajor());
                    }
                    String s = major.get(0);
                    List<Student> studentList = new ArrayList<>();
                    for (Student student : list) {

                        if (student.getMajor().equals(s)) {
                            studentList.add(student);

                        }
                    }
                    if (studentList.size() == 0) {
                        continue;
                    }
                    // 通过对象方法获取随机数
                    int i1 = r.nextInt(studentList.size());
                    //获取学生信息
                    Student integer = studentList.get(i1);
                    //存入学生的List集合
                    students.add(integer);
                    for (int i2 = 0; i2 < list.size(); i2++) {
                        if (list.get(i2).getStudentId().equals(integer.getStudentId())) {
                            list.remove(i2);
                        }
                    }
                    //移除这个下标对应的值进行下一次循环
                    studentList.remove(i1);
                }
            }


            //录入map集合
            stringListMap.put(entry.getKey(), students);
            //判断
            if (list.size() == 0) {
                break;
            }
        }
        System.out.println(stringListMap);
    }
}

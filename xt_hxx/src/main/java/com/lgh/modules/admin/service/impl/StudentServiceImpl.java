package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.StudentMapper;
import com.lgh.modules.admin.model.*;
import com.lgh.modules.admin.service.SelectedTopicService;
import com.lgh.modules.admin.service.StudentService;
import com.lgh.modules.admin.service.TutorService;
import com.lgh.modules.admin.utils.api.CommonPage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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
public class StudentServiceImpl extends ServiceImpl<StudentMapper, Student> implements StudentService {

    @Autowired
    private StudentMapper studentMapper;
    @Autowired
    private SelectedTopicService selectedTopicService;
    @Autowired
    private TutorService tutorService;
    @Override
    public List<StudentExcel> findExcelFinal() {
        return studentMapper.findExcelFinal();
    }

    @Override
    public List<StudentExcel> findExcelFinal(String tutorId) {
        return studentMapper.findExcelFinalTutor(tutorId);
    }


    @Override
    public Page list(Integer pageNum, Integer pageSize) {
        Page page=new Page(pageNum,pageSize);
        QueryWrapper<Student> queryWrapper=new QueryWrapper<>();
//        queryWrapper.eq("parent_id",parentId);
        return this.page(page,queryWrapper);
    }

    @Override
    public Student login(String studentId, String pwd) {
        QueryWrapper<Student> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(Student::getStudentId,studentId).eq(Student::getStudentPwd,pwd);
        return this.getOne(queryWrapper);
    }

    @Override
    public Boolean getStudent(String studentId) {
        QueryWrapper<Student> queryWrapper=new QueryWrapper();

        return null;
    }

    @Override
    public Page<StudentExcel> findFinal(Integer pageNum, Integer pageSize) {
        Page<StudentExcel> page=new Page(pageNum,pageSize);
        List<StudentExcel> excelFinal = studentMapper.findExcelFinal();
        return page.setRecords(excelFinal);


    }

    @Override
    public StudentExcel selectExcelByStudentId(String studentId) {
        StudentExcel studentExcel=studentMapper.selectExcelByStudentId(studentId);
        return studentExcel;
    }

    /**
     * 选择教师
     * @param studentId
     * @param tutorId
     * @return
     */
    @Override
    public boolean selectTutor(String studentId, String tutorId) {
        UpdateWrapper<Student> updateWrapper=new UpdateWrapper<>();
        updateWrapper.lambda().set(Student::getPd,1).eq(Student::getStudentId,studentId);
        boolean update = this.update(updateWrapper);
        if(update){

        }
        return false;
    }

    @Override
    public List<StudentExcel> findExcelFinalD(String tutorName) {
        return studentMapper.findExcelDFinalTutor(tutorName);
    }

    @Override
    public List<StudentImpExc> studentList() {
        return studentMapper.studentList();

    }

    @Override
    public Page list(Integer pageNum, Integer pageSize, String studentName, String studentId) {
        Page<StudentExcel> page=new Page(pageNum,pageSize);
       Page page1= studentMapper.listLike(page,"%"+studentName+"%","%"+studentId+"%");
        return page1;
    }


}

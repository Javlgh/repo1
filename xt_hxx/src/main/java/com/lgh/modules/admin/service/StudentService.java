package com.lgh.modules.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.StudentImpExc;
import com.lgh.modules.admin.utils.api.CommonPage;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
public interface StudentService extends IService<Student> {

    List<StudentExcel> findExcelFinal();
    List<StudentExcel> findExcelFinal(String tutorId);

    Page list(Integer pageNum, Integer pageSize);

    Student login(String studentId, String pwd);

    Boolean getStudent(String studentId);

    Page<StudentExcel> findFinal(Integer pageNum, Integer pageSize);

    StudentExcel selectExcelByStudentId(String studentId);


    boolean selectTutor(String studentId, String tutorId);

    List<StudentExcel> findExcelFinalD(String tutorName);

    List<StudentImpExc> studentList();


    Page list(Integer pageNum, Integer pageSize, String studentName, String studentId);
}

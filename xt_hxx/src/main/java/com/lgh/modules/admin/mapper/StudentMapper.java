package com.lgh.modules.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.StudentImpExc;
import com.lgh.modules.admin.utils.api.CommonPage;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Repository
public interface StudentMapper extends BaseMapper<Student> {

    /**
     * 导出excel表
     * @return
     */
     List<StudentExcel> findExcelFinal();

    StudentExcel selectExcelByStudentId(@Param("studentId") String studentId);

    List<StudentExcel> findExcelFinalTutor(@Param("tutorName") String tutorId);

    List<StudentExcel> findExcelDFinalTutor(String tutorName);

    List<StudentImpExc> studentList();

    Page listLike(Page page, @Param("studentName") String studentName,  @Param("studentId")String studentId);
}

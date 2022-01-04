package com.lgh.modules.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.Tutor;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
public interface SelectedTopicService extends IService<SelectedTopic> {


    /**
     * 查询所有学生选课情况
     * @return
     */
    List<StudentExcel> findExcelFinal();

    Boolean updateExcelByStudentId(String topic,String direction, String session);

    boolean SelectKTInsert(SelectedTopic selectedTopic);

    Boolean deleteSelectedTopic(Student student);

    Page<SelectedTopic> findSelectedByTutorName(String tutorName,Integer pageNum,Integer pageSize);

    Boolean xuankecaozuo(Tutor tutor,String studentId);

    Boolean twoStart();
}

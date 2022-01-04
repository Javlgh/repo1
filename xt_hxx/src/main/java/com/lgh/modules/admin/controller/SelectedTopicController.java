package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.Tutor;
import com.lgh.modules.admin.service.SelectedTopicService;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
import com.sun.org.apache.xpath.internal.operations.Mod;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Controller
public class SelectedTopicController {

    @Autowired
    private SelectedTopicService selectedTopicService;

    @ApiOperation("查询所有学生选课情况")
    @ResponseBody
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public CommonResult<List<StudentExcel>> list(){
        List<StudentExcel> list=selectedTopicService.findExcelFinal();
        return CommonResult.success(list);
    }

    @ApiOperation(value = "根据id查找这个人的所有详情")
    @RequestMapping(value = "admin/updateExcelByStudentId", method = RequestMethod.POST)
    public String updateExcelByStudentId(StudentExcel studentExcel , Model model, HttpSession session) {
        Boolean b=selectedTopicService.updateExcelByStudentId(studentExcel.getTopic(),studentExcel.getDirection()
                ,studentExcel.getStudentId());
        return "redirect:/admin/findFinal";

    }

    @ApiOperation(value = "学生确定课题")
    @RequestMapping(value = "student/SelectKTInsert", method = RequestMethod.GET)
    public String SelectKTInsert(SelectedTopic selectedTopic,HttpSession session)  {
        boolean s =selectedTopicService.SelectKTInsert(selectedTopic);
        Student student = (Student)session.getAttribute("student");
        student.setPd(1);
        session.setAttribute("student",student);
        return "redirect:/student/stuTutorList?junt=1";
    }
    @ApiOperation("查询单个学生选课情况")
    @ResponseBody
    @RequestMapping(value = "/student/selectOne",method = RequestMethod.GET)
    public CommonResult<SelectedTopic> list(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        QueryWrapper<SelectedTopic> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(SelectedTopic::getStudentId,student.getStudentId());
        SelectedTopic serviceOne = selectedTopicService.getOne(queryWrapper);
        System.out.println(serviceOne);
        return CommonResult.success(serviceOne);
    }
    @ApiOperation("delete")
    @RequestMapping(value = "/student/deleteSelectedTopic",method = RequestMethod.GET)
    public String deleteSelectedTopic(HttpSession session){
        Student student = (Student) session.getAttribute("student");
        String studentId = student.getStudentId();
        QueryWrapper<SelectedTopic> queryWrapper=new QueryWrapper<>();
        queryWrapper.lambda().eq(SelectedTopic::getStudentId,studentId).eq(SelectedTopic::getPd,1);
        SelectedTopic s = selectedTopicService.getOne(queryWrapper);
        if(s!=null){
            return "redirect:/student/stuTutorList?junt=1";
        }


        Boolean b=selectedTopicService.deleteSelectedTopic(student);

        student.setPd(0);
        session.setAttribute("student",student);


        return "redirect:/student/stuTutorList?junt=1";
    }

//    @ApiOperation("查找报名该老师的所有学生")
//    @RequestMapping(value = "/tutor/findSelectedByTutorName",method = RequestMethod.GET)
//    public String findSelectedByTutorName(Model model,HttpSession session, @RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,
//                                          @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize){
//        Tutor tutor = (Tutor) session.getAttribute("tutor");
//        Page<SelectedTopic> page= selectedTopicService.findSelectedByTutorName(tutor.getTutorName(),pageNum,pageSize);
//        CommonResult<CommonPage<SelectedTopic>> success = CommonResult.success(CommonPage.restPage(page));
//
//        model.addAttribute("studentList",success);
//
//        return "selectedStudentList";
//    }


    @ApiOperation(value = "选课操作")
    @RequestMapping(value = "tutor/xuanzecaozuo", method = RequestMethod.GET)
    public String xuanzecaozuo(Model model,HttpSession session,String studentId) {
        Tutor tutor = (Tutor) session.getAttribute("tutor");

        Boolean boo = selectedTopicService.xuankecaozuo(tutor, studentId);
        if (boo) {
            return "redirect:/tutor/findSelectedByTutorNameD";
        }
        return "redirect:/tutor/findSelectedByTutorNameD";
    }
    @ApiOperation(value = "第二轮开始")
    @RequestMapping(value = "admin/twoStart", method = RequestMethod.GET)
    public String twoStart() {
        Boolean boo=selectedTopicService.twoStart();
       return "redirect:/admin/timeList";
    }

}


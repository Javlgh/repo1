package com.lgh.modules.admin.controller;


import cn.afterturn.easypoi.entity.vo.NormalExcelConstants;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.enmus.ExcelType;
import cn.afterturn.easypoi.view.PoiBaseView;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.model.Tutor;
import com.lgh.modules.admin.service.StudentService;
import com.lgh.modules.admin.service.TutorService;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
public class StudentController {

    @Autowired
    private StudentService studentService;


    @ApiOperation("学生登录")
    @ResponseBody
    @RequestMapping(value = "/student/login",method = RequestMethod.GET)
    public CommonResult<Student> login(@RequestParam String studentId, @RequestParam String pwd, HttpServletRequest httpServletRequest){
        Student student = studentService.login(studentId,pwd);
        if(student!=null){
            httpServletRequest.getSession().removeAttribute("student");
            httpServletRequest.getSession().setAttribute("student",student);
            return CommonResult.success(student);
        }else {
            return CommonResult.failed();
        }
    }
    @ApiOperation("根据学号查询学生")
    @RequestMapping(value = "/student/findById",method = RequestMethod.GET)
    public String findById( Model model,HttpSession session){
        Student student1 = (Student)session.getAttribute("student");
        Student student = studentService.getById(student1.getStudentId());
        if(student!=null){
            model.addAttribute("student",student);
            return "studentUpdateId";
        }else {
            return "studentUpdateId";
        }
    }


    @ApiOperation("根据状态查询")
    @ResponseBody
    @RequestMapping(value = "studentJu",method = RequestMethod.GET)
    public CommonResult studentJu( HttpSession session){
        Student student = (Student)session.getAttribute("student");
        if(student.getPd()==1){
            return CommonResult.success("已被选中");
        }else {
            return CommonResult.failed("落选");
        }
    }
//    @ApiOperation("查询所有学生")
//    @RequestMapping(value = "admin/studentList",method = RequestMethod.GET)
//    public String list( @RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,
//                                             @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize,Model model){
//       Page list=studentService.list(pageNum,pageSize);
//       model.addAttribute("studentList", CommonResult.success(CommonPage.restPage(list)));
//       return "studentList";
//    }
    @ApiOperation("根据学号查询学生")
    @RequestMapping(value = "/admin/findStudentById",method = RequestMethod.GET)
    public String listById( String studentId,Model model){
        Student student = studentService.getById(studentId);
        if(student!=null){
            model.addAttribute("student",student);
            return "updateStudentForm";
        }else {
            return "redirect:/admin/studentLikeList";
        }
    }

    @ApiOperation("根据学号修改学生信息")
    @RequestMapping(value = "/admin/adminUpdateStudentById",method = RequestMethod.GET)
    public String updateById( Student student , Model model){
        boolean result = studentService.updateById(student);
        if(result){

            return "redirect:/admin/studentLikeList";
        }
        else {
            return "redirect:/admin/studentLikeList";
        }
    }

    @ApiOperation("根据学号修改学生信息")
    @RequestMapping(value = "/admin/updateStudentById",method = RequestMethod.GET)
    public String studentUpdateById( Student student , Model model){
        boolean result = studentService.updateById(student);
        if(result){

            return "redirect:/login.html";
        }
        else {
            return "redirect:/login.html";
        }
    }

    @ApiOperation("删除学生")
    @RequestMapping(value = "admin/deleteStudentById/{studentId}",method = RequestMethod.GET)
    public String deleteById(@PathVariable("studentId") String studentId){
        boolean result = studentService.removeById(studentId);
        if(result){
            return "redirect:/admin/studentLikeList";
        }
        else {
            return "redirect:/admin/studentLikeList";
        }
    }

    @ApiOperation("添加学生信息")
    @RequestMapping(value = "admin/insertStudent",method = RequestMethod.GET)
    public String insert( Student student){
        boolean result = studentService.save(student);
        if(result){
            return "redirect:/admin/studentLikeList";
        }
        else {
            return "redirect:/admin/studentLikeList";
        }
    }

    @ApiOperation(value = "导出会员列表Excel")
    @ResponseBody
    @RequestMapping(value = "admin/findExcelFinal", method = RequestMethod.GET)
    public CommonResult findExcelFinal(ModelMap map,
                                       HttpServletRequest request,
                                       HttpServletResponse response,
                                       HttpSession session) {
        List<StudentExcel> studentExcelList =studentService.findExcelFinal();
        for (int i=1;i<=studentExcelList.size();i++) {
            studentExcelList.get(i-1).setId(i);
        }
        try{
        String excelName="毕业设计论文题目汇总";
        ExportParams params = new ExportParams(excelName, excelName, ExcelType.XSSF);
        map.put(NormalExcelConstants.DATA_LIST, studentExcelList);
        map.put(NormalExcelConstants.CLASS, StudentExcel.class);
        map.put(NormalExcelConstants.PARAMS, params);
        map.put(NormalExcelConstants.FILE_NAME, excelName);
        PoiBaseView.render(map, request, response, NormalExcelConstants.EASYPOI_EXCEL_VIEW);
        return CommonResult.success("成功");
        }catch (Exception e){
            return CommonResult.failed();
        }
    }
    @ApiOperation(value = "选课详情")
    @RequestMapping(value = "admin/findFinal", method = RequestMethod.GET)
    public String findFinal(Model model) {
        List<StudentExcel> excelFinal = studentService.findExcelFinal();
        for (int i=1;i<=excelFinal.size();i++) {
            excelFinal.get(i-1).setId(i);
        }
        model.addAttribute("commonStudentExcel",excelFinal);
        return "excelStudentList";
    }
    @ApiOperation(value = "根据id查找这个人的所有详情")
    @RequestMapping(value = "admin/selectExcelByStudentId", method = RequestMethod.GET)
    public String selectExcelByStudentId(@RequestParam("studentId") String studentId ,Model model) {
        StudentExcel studentExcel=studentService.selectExcelByStudentId(studentId);
        model.addAttribute("studentExcel",studentExcel);
        return "updateExcelStudent";
    }


    @ApiOperation(value = "学生选中的教师")
    @RequestMapping(value = "student/selectTutor", method = RequestMethod.GET)
    public String selectTutor(@RequestParam("tutorName") String tutorName ,Model model,HttpServletRequest request) {
        Student student =(Student) request.getSession().getAttribute("student");
//        boolean p=studentService.selectTutor(student.getStudentId(),tutorId);
        model.addAttribute("tutorName",tutorName);
        return "stuSelectToturForm";
    }

    @ApiOperation(value = "选课详情")
    @RequestMapping(value = "tutor/findSelectedByTutorName", method = RequestMethod.GET)
    public String findSelectedByTutorName(Model model,HttpSession session) {
        Tutor tutor = (Tutor) session.getAttribute("tutor");
        List<StudentExcel> excelFinal = studentService.findExcelFinal(tutor.getTutorName());
        for (int i=1;i<=excelFinal.size();i++) {
            excelFinal.get(i-1).setId(i);
        }
        model.addAttribute("commonStudentExcel",excelFinal);
        return "selectedStudentList";
    }

    @Autowired
    private TutorService tutorService;
    @ApiOperation(value = "D选课详情")
    @RequestMapping(value = "tutor/findSelectedByTutorNameD", method = RequestMethod.GET)
    public String findSelectedByTutorNameD(Model model,HttpSession session) {
        Tutor tutor = (Tutor) session.getAttribute("tutor");
        List<StudentExcel> excelFinal = studentService.findExcelFinalD(tutor.getTutorName());
        List<StudentExcel> studentServiceExcelFinalD = new ArrayList<>();
        for (int i=1;i<=excelFinal.size();i++) {
            excelFinal.get(i-1).setId(i);
        }
        Integer size = tutorService.getById(tutor.getTutorId()).getStudentSize();
        if(size==0){
            model.addAttribute("xuanzeTS","您已选够8名学生");
            return "selectedStudentListD";
        }
        if(size==8){
            model.addAttribute("commonStudentExcel",excelFinal);
            return "selectedStudentListD";
        }else {
            List<StudentExcel> excelFinal1 = studentService.findExcelFinal(tutor.getTutorName());
            for (StudentExcel studentExcel : excelFinal) {
                String major = excelFinal1.get(0).getMajor();
                if(studentExcel.getMajor().equals(major)){
                    studentServiceExcelFinalD.add(studentExcel);
                }
            }
            model.addAttribute("commonStudentExcel",studentServiceExcelFinalD);
            return "selectedStudentListD";
        }
    }

    @ApiOperation("查询所有学生")
    @RequestMapping(value = "admin/studentLikeList",method = RequestMethod.GET)
    public String studentLikeList( @RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,
                        @RequestParam(value = "pageSize",defaultValue = "15")Integer pageSize,Model model,
                                   @RequestParam(value = "studentName",defaultValue ="")String studentName,
                                   @RequestParam(value = "studentId",defaultValue = "")String studentId){
        Page list=studentService.list(pageNum,pageSize,studentName,studentId);
        model.addAttribute("studentList", CommonResult.success(CommonPage.restPage(list)));
        Student student =new Student();
        student.setStudentName(studentName);
        student.setStudentId(studentId);
        model.addAttribute("studentLike",student);
        return "studentList";
    }
    @ApiOperation("根据学号修改学生信息")
    @RequestMapping(value = "/student/updateStudentById",method = RequestMethod.GET)
    public String studentUpdateByd( Student student , Model model){
        boolean result = studentService.updateById(student);
        if(result){

            return "redirect:/student/studentStart";
        }
        else {
            return "redirect:/student/studentStart";
        }
    }


/**
 * select
 * stu.student_id,stu.student_name,stu.student_sex,stu.student_phone,stu.major,
 * stu.college,con.class_name, con.old_class_name,cte.new_teacher,cte.old_teacher,cte.counselor,sel.topic,sel.direction,
 * sel.tutor_name,sel.topic from student stu
 * join class_o_n con on con.student_id=stu.student_id join class_teacher cte on cte.student_id=stu.student_id join selected_topic sel on sel.student_id=stu.student_id
 * where stu.pd=1 and sel.pd=1
 */



}


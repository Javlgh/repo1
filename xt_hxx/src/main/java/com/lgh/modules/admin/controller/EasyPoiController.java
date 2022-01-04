package com.lgh.modules.admin.controller;

import cn.afterturn.easypoi.entity.vo.NormalExcelConstants;
import cn.afterturn.easypoi.excel.ExcelImportUtil;
import cn.afterturn.easypoi.excel.entity.ExportParams;
import cn.afterturn.easypoi.excel.entity.ImportParams;
import cn.afterturn.easypoi.excel.entity.enmus.ExcelType;

import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import cn.afterturn.easypoi.view.PoiBaseView;
import com.alibaba.fastjson.JSONObject;

import com.lgh.modules.admin.model.*;
import com.lgh.modules.admin.service.StudentService;
import com.lgh.modules.admin.service.TutorService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.poi.ss.formula.functions.T;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * EasyPoi导入导出测试Controller
 * Created by macro on 2021/10/12.
 */
@Controller
@Api(tags = "EasyPoiController", description = "EasyPoi导入导出测试")
@RequestMapping("/admin/excel")
public class EasyPoiController {

    @Autowired
    private StudentService studentService;

    @ApiOperation(value = "导出会员列表Excel")
    @RequestMapping(value = "/findExcelFinal/{excelName}", method = RequestMethod.GET)
    public void findExcelFinal(ModelMap map,
                                 HttpServletRequest request,
                                 HttpServletResponse response,
                               @PathVariable("excelName") String excelName) {
        List<StudentExcel> studentExcelList =studentService.findExcelFinal();
        for (int i=1;i<=studentExcelList.size();i++) {
            studentExcelList.get(i-1).setId(i);
        }


        ExportParams params = new ExportParams(excelName, "最终表格", ExcelType.XSSF);
        map.put(NormalExcelConstants.DATA_LIST, studentExcelList);
        map.put(NormalExcelConstants.CLASS, StudentExcel.class);
        map.put(NormalExcelConstants.PARAMS, params);
        map.put(NormalExcelConstants.FILE_NAME, excelName);
        PoiBaseView.render(map, request, response, NormalExcelConstants.EASYPOI_EXCEL_VIEW);
    }


    @ApiOperation(value = "导出会员列表Excel")
    @RequestMapping(value = "/studentExcel", method = RequestMethod.GET)
    public void studentExcel(ModelMap map,
                                 HttpServletRequest request,
                                 HttpServletResponse response
                              ) {
        List<StudentImpExc> list = studentService.studentList();



        ExportParams params = new ExportParams("学生基本信息", "学生基本信息", ExcelType.XSSF);
        map.put(NormalExcelConstants.DATA_LIST, list);
        map.put(NormalExcelConstants.CLASS, StudentImpExc.class);
        map.put(NormalExcelConstants.PARAMS, params);
        map.put(NormalExcelConstants.FILE_NAME, "学生基本信息");
        PoiBaseView.render(map, request, response, NormalExcelConstants.EASYPOI_EXCEL_VIEW);

    }

    @PostMapping("/importStudentExcel")
    public String importExcel2(@RequestParam("file") MultipartFile file) {
        ImportParams importParams = new ImportParams();
        // 数据处理
        //表格标题行数,默认0
        importParams.setHeadRows(1);
        //表头行数,默认1
        importParams.setTitleRows(1);

        List<Student> students=new ArrayList<>();

        try {
            ExcelImportResult<StudentImpExc> result = ExcelImportUtil.importExcelMore(file.getInputStream(), StudentImpExc.class, importParams);
            List<StudentImpExc> userList = result.getList();
            for (StudentImpExc studentImpExc : userList) {
                Student student =new Student();
                student.setStudentId(studentImpExc.getStudentId());
                student.setStudentSex(studentImpExc.getStudentSex());
                student.setCollege(studentImpExc.getCollege());
                student.setMajor(studentImpExc.getMajor());
                student.setClassTeacherName(studentImpExc.getClassTeacherName());
                student.setOldTeacherClass(studentImpExc.getOldTeacherClass());
                student.setStudentName(studentImpExc.getStudentName());
                student.setDy(studentImpExc.getDy());
                student.setOldClass(studentImpExc.getOldClass());
                student.setNewClass(studentImpExc.getNewClass());
                student.setStudentPhone(studentImpExc.getStudentPhone());
                if(null==student.getStudentName()||"".equals(student.getStudentName())){}else{
                students.add(student);}

            }

            studentService.saveBatch(students);
            System.out.println("从Excel导入数据一共 {} 行 "+userList.size());
        } catch (IOException e) {
            System.out.println("导入失败：{}"+ e.getMessage());
        } catch (Exception e1) {
            System.out.println("导入失败：{}"+ e1.getMessage());
        }
        return "redirect:/admin/studentLikeList";
    }
  @Autowired
  private TutorService tutorService;
  @PostMapping("/imTutorExcel")
  public String tutorExcel(@RequestParam("file") MultipartFile file) {
        ImportParams importParams = new ImportParams();
        // 数据处理
        //表格标题行数,默认0
        importParams.setHeadRows(1);
        //表头行数,默认1
        importParams.setTitleRows(1);

        try {
            ExcelImportResult<TutorExcel> result = ExcelImportUtil.importExcelMore(file.getInputStream(), TutorExcel.class, importParams);
            List<TutorExcel> tutorExcels = result.getList();
            List<Tutor> tutors=new ArrayList<>();
            for (TutorExcel tutorExcel : tutorExcels) {
                Tutor tutor=new Tutor();
                tutor.setTutorJudge("1");
                tutor.setJobName(tutorExcel.getJobName());
                tutor.setTutorId(tutorExcel.getTutorId());
                tutor.setTutorText(tutorExcel.getTutorText());
                tutor.setWork(tutorExcel.getWork());
                tutor.setTutorName(tutorExcel.getTutorName());
                if("".equals(tutor.getTutorName())||null==tutor.getTutorName()){}else {
                tutors.add(tutor);
                }
            }
            tutorService.saveBatch(tutors);
        } catch (IOException e) {
            System.out.println("导入失败：{}"+ e.getMessage());
        } catch (SQLException e){
            e.printStackTrace();
        }catch (Exception e1) {
            System.out.println("导入失败：{}"+ e1.getMessage());
        }
        return "redirect:/admin/tutorList?junt=1";
    }

    @ApiOperation(value = "教师基本信息列表Excel")
    @RequestMapping(value = "/tutorExcel", method = RequestMethod.GET)
    public void tutorExcel(ModelMap map,
                             HttpServletRequest request,
                             HttpServletResponse response
    ) {
      List<TutorExcel> tutorExcels=new ArrayList<>();
        List<Tutor> tu = tutorService.list();
        for (Tutor tutor : tu) {
            TutorExcel tutorExcel=new TutorExcel();
            tutorExcel.setTutorName(tutor.getTutorName());
            tutorExcel.setTutorId(tutor.getTutorId());
            tutorExcel.setJobName(tutor.getJobName());
//            tutorExcel.setTutorJudge("1");
            tutorExcel.setWork(tutor.getWork());
            tutorExcel.setTutorText(tutor.getTutorText());
            tutorExcels.add(tutorExcel);
        }
        ExportParams params = new ExportParams("教师基本信息列表Excel", "教师基本信息列表Excel", ExcelType.XSSF);
        map.put(NormalExcelConstants.DATA_LIST, tutorExcels);
        map.put(NormalExcelConstants.CLASS, TutorExcel.class);
        map.put(NormalExcelConstants.PARAMS, params);
        map.put(NormalExcelConstants.FILE_NAME, "教师基本信息列表Excel");
        PoiBaseView.render(map, request, response, NormalExcelConstants.EASYPOI_EXCEL_VIEW);

    }


}
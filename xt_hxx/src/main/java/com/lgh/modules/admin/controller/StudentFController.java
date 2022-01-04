package com.lgh.modules.admin.controller;

import cn.afterturn.easypoi.excel.ExcelImportUtil;
import cn.afterturn.easypoi.excel.entity.ImportParams;
import cn.afterturn.easypoi.excel.entity.result.ExcelImportResult;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentImpExc;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Controller
public class StudentFController {
    @RequestMapping("/student/studentStart")
    public String studentStart(){
        return "student";
    }
//    @ResponseBody
//    @RequestMapping("/student/studentcs")
//    public String studentcs(@RequestParam("file") MultipartFile file, HttpServletRequest request, HttpServletResponse response){
//        ImportParams importParams = new ImportParams();
//        // 数据处理
//        //表格标题行数,默认0
//        importParams.setHeadRows(1);
//        //表头行数,默认1
//        importParams.setTitleRows(1);
//
//        List<Student> students=new ArrayList<>();
//
//        try {
//            ExcelImportResult<StudentImpExc> result = ExcelImportUtil.importExcelMore(file.getInputStream(), StudentImpExc.class, importParams);
//            List<StudentImpExc> userList = result.getList();
//            for (StudentImpExc studentImpExc : userList) {
//               response.sendRedirect("/student/login?studentId="+studentImpExc.getStudentId()+"&pwd=888888");
//                System.out.println(studentImpExc.getStudentName()+"登录成功");
//            }
//
//            System.out.println("从Excel导入数据一共 {} 行 "+userList.size());
//        } catch (IOException e) {
//            System.out.println("导入失败：{}"+ e.getMessage());
//        } catch (Exception e1) {
//            System.out.println("导入失败：{}"+ e1.getMessage());
//        }
//        return "success";
//    }

}

package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.Tutor;
import com.lgh.modules.admin.service.TutorService;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
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
public class TutorController {
    @Autowired
    private TutorService tutorService;

    /**
     * admin
     * @param tutorId
     * @return
     */
    @ApiOperation("判断是否为管理员")
    @ResponseBody
    @RequestMapping(value = "admin/isAdmin/{tutorId}",method = RequestMethod.GET)
    public CommonResult isAdmin(@PathVariable("tutorId") String tutorId){
        Integer pd=tutorService.isAdmin(tutorId);
        if(pd==1){
            return CommonResult.success(pd);
        }else {
            return CommonResult.failed();
        }

    }
    @ApiOperation("判断是否为管理员")
    @ResponseBody
    @RequestMapping(value = "student/getTutorById/{tutorId}",method = RequestMethod.GET)
    public CommonResult getTutorById(@PathVariable("tutorId") String tutorId){
        Tutor tutor = tutorService.getById(tutorId);

        if(tutor!=null){
            return CommonResult.success(tutor.getTutorName());
        }else {
            return CommonResult.failed();
        }

    }
    @ApiOperation("登录")
    @ResponseBody
    @RequestMapping(value = "admin/login",method = RequestMethod.GET)
    public CommonResult<Tutor> login(@RequestParam String tutorName, @RequestParam String pwd,HttpSession session){
        Tutor tutor=tutorService.login(tutorName,pwd);
        if(tutor!=null){
            session.setAttribute("adminTutor",tutor);
            return CommonResult.success(tutor);
        }
        else {
            return CommonResult.failed();
        }

    }
    @ApiOperation("查询所有老师")
    @ResponseBody
    @RequestMapping(value = "admin/teacherList")
    public CommonResult<CommonPage<List<Tutor>>> list(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                         @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                      @RequestParam(value = "work")String work){
        Page list=tutorService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize),work);
        return CommonResult.success(CommonPage.restPage(list));
    }
    @ApiOperation("查询所有导师")
    @RequestMapping(value = "admin/tutorList",method = RequestMethod.GET)
    public String tutorList(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                           @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                           @RequestParam(value = "junt")Integer junt, Model model){
        Page list=tutorService.tutorList(Integer.parseInt(pageNum),Integer.parseInt(pageSize),junt);
        model.addAttribute("tutorList",CommonResult.success(CommonPage.restPage(list))) ;
        return "tutorList";
    }
    @ApiOperation("查询所有导师")
    @RequestMapping(value = "student/stuTutorList",method = RequestMethod.GET)
    public String stuTutorList(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                           @RequestParam(value = "pageSize",defaultValue = "12")String pageSize,
                                                           @RequestParam(value = "junt")Integer junt, Model model){
        Page list=tutorService.tutorListStu(Integer.parseInt(pageNum),Integer.parseInt(pageSize),junt);
        model.addAttribute("tutorList",CommonResult.success(CommonPage.restPage(list))) ;
        return "stuTutorList";
    }

    @ApiOperation("查询所有导师选课情况")
    @ResponseBody
    @RequestMapping(value = "admin/tutorListByJudge",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<Tutor>>> tutorListByJudge(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                         @RequestParam(value = "pageSize",defaultValue = "5")String pageSize){
        Page list=tutorService.tutorListByJudge(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
        return CommonResult.success(CommonPage.restPage(list));
    }

    /**
     * 导师身份
     */
    @ApiOperation("登录")
    @ResponseBody
    @RequestMapping(value = "tutor/tutorLogin",method = RequestMethod.GET)
    public CommonResult<Tutor> tutorLogin(@RequestParam String tutorName, @RequestParam String pwd,HttpSession session){
        Tutor tutor=tutorService.tutorLogin(tutorName,pwd);
        if(tutor!=null){
            session.setAttribute("tutor",tutor);
            return CommonResult.success(tutor);
        }
        else {
            return CommonResult.failed();
        }

    }
    @ApiOperation("判断导师是否选满")
    @ResponseBody
    @RequestMapping(value = "tutor/isChoosse",method = RequestMethod.GET)
    public CommonResult isChoose(HttpSession session){
        Tutor tutor = (Tutor) session.getAttribute("tutor");
        boolean isC=tutorService.getOne(tutor);
        if(isC){
            return CommonResult.success("");
        }else {
            return CommonResult.failed("选满");
        }

    }

    @ApiOperation("三轮随机分配")
    @RequestMapping(value = "admin/thressFp",method = RequestMethod.GET)
    public String thressFp(HttpSession session){
        boolean msg=tutorService.thressFp();
        if(msg){
            return "redirect:/admin/findFinal";
        }else {
            return "redirect:/admin/findFinal";
        }

    }


    @ApiOperation("修改个人信息")
    @RequestMapping(value = "tutor/tutorUpdate",method = RequestMethod.GET)
    public String tutorUpdate(Tutor tutor,HttpSession session){
        Tutor tutor1 = (Tutor)session.getAttribute("tutor");
        UpdateWrapper<Tutor> updateWrapper=new UpdateWrapper<>();
        updateWrapper.lambda().set(Tutor::getTutorText,tutor.getTutorText()).set(Tutor::getTutorPwd,tutor.getTutorPwd()).eq(Tutor::getTutorId,tutor1.getTutorId());
        boolean b = tutorService.update(updateWrapper);
        if(b){
            return "redirect:/tutor/tutorById";
        }else {
            return "redirect:/tutor/tutorById";
        }

    }
    @ApiOperation("修改个人信息")
    @RequestMapping(value = "tutor/tutorById",method = RequestMethod.GET)
    public String tutorById(HttpSession session, Model model){
        Tutor tutor = (Tutor)session.getAttribute("tutor");
        Tutor byId = tutorService.getById(tutor.getTutorId());
        model.addAttribute("tutor",byId);
        return "tutorUpdate";


    }
 @ApiOperation("设置管理员")
    @RequestMapping(value = "admin/settingAdmin",method = RequestMethod.GET)
    public String settingAdmin(String tutorId, Model model){
       UpdateWrapper<Tutor> updateWrapper=new UpdateWrapper<>();
       updateWrapper.lambda().eq(Tutor::getTutorId,tutorId).set(Tutor::getAdminJudge,1);
     boolean update = tutorService.update(updateWrapper);

     return "redirect:/admin/tutorList?junt=1";

 }
    @ApiOperation("stu教师详情")
    @RequestMapping(value = "student/teacherDetails",method = RequestMethod.GET)
    public String stuteacherDetails(String tutorId, Model model){
     Tutor tutor = tutorService.getById(tutorId);
     model.addAttribute("tutor",tutor);
     return "stuTutorXq";
 }


    @ApiOperation("adm教师详情")
    @RequestMapping(value = "admin/teacherDetails",method = RequestMethod.GET)
    public String admteacherDetails(String tutorId, Model model){
     Tutor tutor = tutorService.getById(tutorId);
     model.addAttribute("tutor",tutor);
     return "teacherText";
 }






}


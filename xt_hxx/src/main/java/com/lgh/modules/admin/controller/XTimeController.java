package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.core.conditions.update.UpdateWrapper;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.XTime;
import com.lgh.modules.admin.service.SelectedTopicService;
import com.lgh.modules.admin.service.StudentService;
import com.lgh.modules.admin.service.XTimeService;
import com.lgh.modules.admin.utils.api.CommonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-08
 */
@Controller
public class XTimeController {
    @Autowired
    private SelectedTopicService selectedTopicService;

    @Autowired
    private StudentService studentService;
    @Autowired
    private XTimeService xTimeService;
    @RequestMapping(value = "admin/xTime",method = RequestMethod.POST)
    public String xTimeUpdate(@RequestParam("newTime") String newTime, @RequestParam("twoTime") String twoTime
            , @RequestParam("studentSize") Integer studentSize, Model model) throws ParseException {

       boolean b= xTimeService.updateByIs(newTime,twoTime,studentSize);

        if(b){
            return "redirect:/admin/timeList";
        }else{
            model.addAttribute("msg", CommonResult.failed("修改失败"));
            return "xTimeList";
        }

    }
    @RequestMapping(value = "admin/timeList")
    public String getTime(Model model) throws ParseException {
        XTime byId = xTimeService.getById(1);
        CommonResult<XTime> success = CommonResult.success(byId);
        if(byId!=null){
            model.addAttribute("xTime",success);
            return "xTimeList";
        }else{
            return "xTimeList";
        }

    }
    @RequestMapping(value = "admin/startFirst")
    public String startFirst(Model model)  {
        Student student=new Student();
        student.setPd(0);
        UpdateWrapper<Student> updateWrapper=new UpdateWrapper();
        updateWrapper.lambda().set(Student::getPd,student.getPd());
        boolean update = studentService.update(updateWrapper);
        UpdateWrapper<SelectedTopic> selectedTopicUpdateWrapper=new UpdateWrapper<>();
        selectedTopicUpdateWrapper.lambda().set(SelectedTopic::getPd,0);
        boolean update1 = selectedTopicService.update(selectedTopicUpdateWrapper);
        return "redirect:/admin/timeList";
    }
}


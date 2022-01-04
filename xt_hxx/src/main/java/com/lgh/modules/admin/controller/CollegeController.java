package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.ClassAll;
import com.lgh.modules.admin.model.College;
import com.lgh.modules.admin.service.CollegeService;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * <p>
 *  前端控制器
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@RestController
@RequestMapping("/admin/college")
public class CollegeController {

    @Autowired
    private CollegeService collegeService;
    @ApiOperation("查询所有学院")
    @ResponseBody
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<ClassAll>>> list(@RequestParam(value = "pageNum",defaultValue = "1")Integer pageNum,
                                                         @RequestParam(value = "pageSize",defaultValue = "5")Integer pageSize){
        Page list=collegeService.list(pageNum,pageSize);
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("根据id删除学院")
    @ResponseBody
    @RequestMapping(value = "delete/{ids}",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<ClassAll>>> delete(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                           @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                           @PathVariable("ids") Integer[] ids){
        boolean b = collegeService.removeById(ids);
        if(b){
            Page list=collegeService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
            return CommonResult.success(CommonPage.restPage(list));
        }else {
            return CommonResult.failed();
        }
    }
    @ApiOperation("添加学院")
    @ResponseBody
    @RequestMapping(value = "save",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<College>>> save(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                        @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                        @RequestBody College college ){
        boolean b = collegeService.save(college);
        if(b){
            Page list=collegeService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
            return CommonResult.success(CommonPage.restPage(list));
        }else {
            return CommonResult.failed();
        }
    }
}


package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.ClassAll;
import com.lgh.modules.admin.model.Major;
import com.lgh.modules.admin.service.MajorService;
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
@RequestMapping("/admin/major")
public class MajorController {

    @Autowired
    private MajorService majorService;

    @ApiOperation("查询所有班级")
    @ResponseBody
    @RequestMapping(value = "list",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<Major>>> list(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                      @RequestParam(value = "pageSize",defaultValue = "5")String pageSize){
        Page list=majorService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
        return CommonResult.success(CommonPage.restPage(list));
    }

    @ApiOperation("根据id删除班级")
    @ResponseBody
    @RequestMapping(value = "delete/{ids}",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<Major>>> delete(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                           @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                           @PathVariable("ids") Integer[] ids){
        boolean b = majorService.removeById(ids);
        if(b){
            Page list=majorService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
            return CommonResult.success(CommonPage.restPage(list));
        }else {
            return CommonResult.failed();
        }
    }
    @ApiOperation("添加班级")
    @ResponseBody
    @RequestMapping(value = "save",method = RequestMethod.GET)
    public CommonResult<CommonPage<List<Major>>> save(@RequestParam(value = "pageNum",defaultValue = "1")String pageNum,
                                                         @RequestParam(value = "pageSize",defaultValue = "5")String pageSize,
                                                         @RequestBody Major major ){
        boolean b = majorService.save(major);
        if(b){
            Page list=majorService.list(Integer.parseInt(pageNum),Integer.parseInt(pageSize));
            return CommonResult.success(CommonPage.restPage(list));
        }else {
            return CommonResult.failed();
        }
    }
}


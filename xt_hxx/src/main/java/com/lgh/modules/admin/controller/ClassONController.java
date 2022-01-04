package com.lgh.modules.admin.controller;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.ClassON;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.StudentExcel;
import com.lgh.modules.admin.service.ClassONService;
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
@RequestMapping("/admin/classON")
public class ClassONController {
    @Autowired
    private ClassONService classONService;

}


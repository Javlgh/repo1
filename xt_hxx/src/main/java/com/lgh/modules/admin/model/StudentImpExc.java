package com.lgh.modules.admin.model;

import cn.afterturn.easypoi.excel.annotation.Excel;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;
import java.util.Date;

/**
 * <p>
 * 
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class StudentImpExc implements Serializable {


    @ApiModelProperty(value = "学生学号")
    @Excel(name = "学号", width = 15)
    private String studentId;

    @ApiModelProperty(value = "学生姓名")
    @Excel(name = "姓名", width = 15)
    private String studentName;


    @ApiModelProperty(value = "性别")
    @Excel(name = "性别", width = 15)
    private String studentSex;

    @ApiModelProperty(value = "联系方式")
    @Excel(name = "手机号", width = 15)
    private String studentPhone;

    @ApiModelProperty(value = "专业")
    @Excel(name = "专业", width = 15)
    private String major;


    @ApiModelProperty(value = "学院")
    @Excel(name = "学院", width = 15)
    private String college;




    @ApiModelProperty(value = "班主任")
    @Excel(name = "现班主任", width = 15)
    private String classTeacherName;

    @ApiModelProperty(value = "old班主任")
    @Excel(name = "原班主任", width = 15)
    private String oldTeacherClass;

    @ApiModelProperty(value = "导")
    @Excel(name = "导员", width = 15)
    private String dy;

    @ApiModelProperty(value = "新班级")
    @Excel(name = "现班级", width = 15)
    private String newClass;

    @ApiModelProperty(value = "旧班级")
    @Excel(name = "原班级", width = 15)
    private String oldClass;



}

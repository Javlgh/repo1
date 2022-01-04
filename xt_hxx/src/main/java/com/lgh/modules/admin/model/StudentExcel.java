package com.lgh.modules.admin.model;

import cn.afterturn.easypoi.excel.annotation.Excel;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;


@Data
@EqualsAndHashCode(callSuper = false)
public class StudentExcel {

    @ApiModelProperty(value = "序号")
    @Excel(name = "序号", width = 15)
    private Integer id;

    @ApiModelProperty(value = "学院")
    @Excel(name = "学院", width = 15)
    private String college;

    @ApiModelProperty(value = "专业")
    @Excel(name = "专业", width = 20)
    private String major;

    @ApiModelProperty(value = "原班级")
    @Excel(name = "原班级", width = 15)
    private String oldClassName;


    @ApiModelProperty(value = "班级名")
    @Excel(name = "现班级", width = 15)
    private String className;

    @ApiModelProperty(value = "学生学号")
    @Excel(name = "学号", width = 15)
    private String studentId;

    @ApiModelProperty(value = "学生姓名")
    @Excel(name = "姓名", width = 15)
    private String studentName;

    @ApiModelProperty(value = "性别")
    @Excel(name = "性别", width = 10)
    private String studentSex;

    @ApiModelProperty(value = "联系方式")
    @Excel(name = "手机号", width = 18)
    private String studentPhone;

    @ApiModelProperty(value = "导员")
    @Excel(name = "导员", width = 18)
    private String counselor;

    @ApiModelProperty(value = "选题方向")
    @Excel(name = "选题方向", width = 15)
    private String direction;

    @ApiModelProperty(value = "毕设题目")
    @Excel(name = "毕设题目", width = 15)
    private String topic;

    @ApiModelProperty(value = "毕设导师")
    @Excel(name = "毕设导师", width = 15)
    private String tutorName;

    @ApiModelProperty(value = "备注")
    @Excel(name = "备注", width = 15 )
    private String remarks;

}

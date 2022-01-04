package com.lgh.modules.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
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
@TableName("student")
@ApiModel(value="Student对象", description="")
public class Student implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "学生学号")
    @TableId(value = "student_id")
    private String studentId;

    @ApiModelProperty(value = "学生姓名")
    private String studentName;

    @ApiModelProperty(value = "学生密码默认888888")
    private String studentPwd;

    @ApiModelProperty(value = "性别")
    private String studentSex;

    @ApiModelProperty(value = "联系方式")
    private String studentPhone;

    @ApiModelProperty(value = "专业")
    private String major;

    @ApiModelProperty(value = "判断值0表示选了1表示未选")
    private Integer pd;

    @ApiModelProperty(value = "学院")
    private String college;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;

    @ApiModelProperty(value = "修改者")
    private String studentUpdater;

    @ApiModelProperty(value = "班主任")
    private String classTeacherName;

    @ApiModelProperty(value = "old班主任")
    private String oldTeacherClass;

    @ApiModelProperty(value = "导")
    private String dy;

    @ApiModelProperty(value = "新班级")
    private String newClass;

    @ApiModelProperty(value = "旧班级")
    private String oldClass;



}

package com.lgh.modules.admin.model;

import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.io.Serializable;

/**
 * <p>
 * 
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("class_teacher")
@ApiModel(value="ClassTeacher对象", description="")
public class ClassTeacher implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "现班主任")
    private String newTeacher;

    @ApiModelProperty(value = "原班主任")
    private String oldTeacher;

    @ApiModelProperty(value = "学生学号")
    private String studentId;

    @ApiModelProperty(value = "导员")
    private String counselor;


}

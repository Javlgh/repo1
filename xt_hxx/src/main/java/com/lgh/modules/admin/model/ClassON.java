package com.lgh.modules.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
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
@TableName("class_o_n")
@ApiModel(value="ClassON对象", description="")
public class ClassON implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "班级id")
    @TableId(value = "class_id", type = IdType.AUTO)
    private Integer classId;

    @ApiModelProperty(value = "班级名")
    private String className;

    @ApiModelProperty(value = "学生id")
    private String studentId;

    @ApiModelProperty(value = "父班级")
    private String oldClassName;

//    private String studentName;


}

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
 * @since 2021-11-07
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("class_all")
@ApiModel(value="ClassAll对象", description="")
public class ClassAll implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "班级id")
    @TableId(value = "class_id", type = IdType.AUTO)
    private Integer classId;

    @ApiModelProperty(value = "班级name")
    private String className;

    @ApiModelProperty(value = "判断新旧")
    private String newOldPs;


}

package com.lgh.modules.admin.model;

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
 * @since 2021-11-08
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("x_time")
@ApiModel(value="XTime对象", description="")
public class XTime implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "id")
    private String id;

    @ApiModelProperty(value = "每位教师最多选择人数")
    private Integer studentSize;

    @ApiModelProperty(value = "第一次开始时间")
    private Date firstTime;

    @ApiModelProperty(value = "第二次开始时间")
    private Date twoTime;


}

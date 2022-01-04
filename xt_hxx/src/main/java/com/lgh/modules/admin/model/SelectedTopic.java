package com.lgh.modules.admin.model;

import com.baomidou.mybatisplus.annotation.*;
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
 * @since 2021-11-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
@TableName("selected_topic")
@ApiModel(value="SelectedTopic对象", description="")
public class SelectedTopic implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "id")
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;

    @ApiModelProperty(value = "判断是否成立1表示成立")
    private Integer pd;

    @ApiModelProperty(value = "学生id")
    private String studentId;

    @ApiModelProperty(value = "导师姓名")
    private String tutorName;

    @ApiModelProperty(value = "论文题目")
    private String topic;

    @ApiModelProperty(value = "选题方向")
    private String direction;

    @ApiModelProperty(value = "创建时间")
    @TableField(fill= FieldFill.INSERT)
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    @TableField(fill=FieldFill.INSERT_UPDATE)
    private Date updateTime;

    @ApiModelProperty(value = "修改人")
    private String selUpdater;


}

package com.lgh.modules.admin.model;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
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
@TableName("tutor")
@ApiModel(value="Tutor对象", description="")
public class Tutor implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "导师简介")
    private String tutorText;

    @ApiModelProperty(value = "职称")
    private String jobName;

    @ApiModelProperty(value = "密码")
    private String tutorPwd;

    @ApiModelProperty(value = "导师id")
    @TableId(value = "tutor_id", type = IdType.UUID)
    private String tutorId;

    @ApiModelProperty(value = "导师姓名")
    private String tutorName;

    @ApiModelProperty(value = "判断是否满足继续选学生0满足，1不满足")
    private Integer tutorStudentJudge;

    @ApiModelProperty(value = "教师工作")
    private String work;

    @ApiModelProperty(value = "是否为课题导师0表示不为导师1表示导师")
    private String tutorJudge;

    @ApiModelProperty(value = "是否为管理员")
    private Integer adminJudge;

    @ApiModelProperty(value = "创建时间")
    private Date createTime;

    @ApiModelProperty(value = "更新时间")
    private Date updateTime;

    @ApiModelProperty(value = "修改者")
    private String updater;

    @ApiModelProperty(value = "学生人数")
    private Integer studentSize;


}

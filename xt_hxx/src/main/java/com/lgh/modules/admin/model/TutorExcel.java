package com.lgh.modules.admin.model;

import cn.afterturn.easypoi.excel.annotation.Excel;
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
 * @since 2021-11-05
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class TutorExcel implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "导师简介")
    @Excel(name = "导师简介", width = 15)
    private String tutorText;

    @ApiModelProperty(value = "职称")
    @Excel(name = "职称", width = 15)
    private String jobName;



    @ApiModelProperty(value = "导师id")
    @Excel(name = "工号", width = 15)
    private String tutorId;

    @ApiModelProperty(value = "导师姓名")
    @Excel(name = "导师姓名", width = 15)
    private String tutorName;



    @ApiModelProperty(value = "教师工作")
    @Excel(name = "教师工作", width = 15)
    private String work;

    @ApiModelProperty(value = "是否为课题导师0表示不为导师1表示导师")
    private String tutorJudge;






}

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
@TableName("major")
@ApiModel(value="Major对象", description="")
public class Major implements Serializable {

    private static final long serialVersionUID=1L;

    @ApiModelProperty(value = "专业id")
    @TableId(value = "major_id", type = IdType.AUTO)
    private Integer majorId;

    @ApiModelProperty(value = "专业名")
    private String majorName;

    @ApiModelProperty(value = "关联学院的外键")
    private Integer collegeIdFk;


}

package com.lgh.modules.admin.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.lgh.modules.admin.model.XTime;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-08
 */
public interface XTimeService extends IService<XTime> {

    Boolean updateByIs(String newTime, String twoTime, Integer studentSize);
}

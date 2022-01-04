package com.lgh.modules.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lgh.modules.admin.model.ClassON;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
public interface ClassONService extends IService<ClassON> {

    Page findAll(Integer pageNum,Integer pageSize);
}

package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.ClassAllMapper;
import com.lgh.modules.admin.model.ClassAll;
import com.lgh.modules.admin.service.ClassAllService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-07
 */
@Service
public class ClassAllServiceImpl extends ServiceImpl<ClassAllMapper, ClassAll> implements ClassAllService {

    @Override
    public Page list(Integer pageNum, Integer pageSize) {

        Page<ClassAll> page=new Page<>(pageNum,pageSize);
        return this.page(page);
    }
}

package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.ClassONMapper;
import com.lgh.modules.admin.model.ClassON;
import com.lgh.modules.admin.service.ClassONService;
import com.lgh.modules.admin.utils.api.CommonPage;
import com.lgh.modules.admin.utils.api.CommonResult;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Service
public class ClassONServiceImpl extends ServiceImpl<ClassONMapper, ClassON> implements ClassONService {

    @Autowired
    private ClassONMapper mapper;
    @Override
    public Page findAll(Integer pageNum,Integer pageSize) {
        Page page=new Page(pageNum,pageSize);
        return mapper.findAll(page);
    }

}

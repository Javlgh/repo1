package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.CollegeMapper;
import com.lgh.modules.admin.model.College;
import com.lgh.modules.admin.service.CollegeService;
import org.springframework.stereotype.Service;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Service
public class CollegeServiceImpl extends ServiceImpl<CollegeMapper, College> implements CollegeService {

    @Override
    public Page list(Integer pageNum, Integer pageSize) {
        Page page=new Page(pageNum,pageSize);

        return this.page(page);
    }
}

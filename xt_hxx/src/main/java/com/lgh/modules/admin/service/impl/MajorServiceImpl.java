package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.MajorMapper;
import com.lgh.modules.admin.model.Major;
import com.lgh.modules.admin.service.MajorService;
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
public class MajorServiceImpl extends ServiceImpl<MajorMapper, Major> implements MajorService {

    @Override
    public Page list(int curr, int size) {
        Page page =new Page(curr,size);
        return this.page(page);
    }
}

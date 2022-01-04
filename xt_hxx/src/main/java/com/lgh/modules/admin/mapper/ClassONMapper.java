package com.lgh.modules.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.lgh.modules.admin.model.ClassON;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
@Repository
public interface ClassONMapper extends BaseMapper<ClassON> {

    public Page<ClassON> findAll(Page page);
}

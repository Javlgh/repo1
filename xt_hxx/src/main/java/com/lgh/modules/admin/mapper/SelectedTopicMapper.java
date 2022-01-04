package com.lgh.modules.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lgh.modules.admin.model.SelectedTopic;
import com.lgh.modules.admin.model.StudentExcel;
import org.apache.ibatis.annotations.Param;
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
public interface SelectedTopicMapper extends BaseMapper<SelectedTopic> {

    /**
     * 导出excel表
     * @return
     */
    List<StudentExcel> findExcelFinal();

}

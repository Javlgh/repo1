package com.lgh.modules.admin.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.lgh.modules.admin.model.Student;
import com.lgh.modules.admin.model.Tutor;
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
public interface TutorMapper extends BaseMapper<Tutor> {

    public Tutor adminLogin(@Param("tutorName") String tutorName , @Param("pwd") String pwd);

    public Integer sizeStudent();
    public List<Tutor> notFull();
    public List<Student> notTutor();
    public int timeUpdate(@Param("size") Integer size);


}

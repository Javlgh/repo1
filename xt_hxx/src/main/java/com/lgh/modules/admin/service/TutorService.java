package com.lgh.modules.admin.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.baomidou.mybatisplus.extension.service.IService;
import com.lgh.modules.admin.model.Tutor;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-05
 */
public interface TutorService extends IService<Tutor> {

    /**
     * 判断
     * @param tutorName
     * @return
     */
    Integer isAdmin(String tutorName);

    /**
     * 登录
     * @param tutorId
     * @param pwd
     * @return
     */
    Tutor login(String tutorId, String pwd);
    Page list(int curr, int size,String work);
    Page tutorList(int curr, int size,Integer junt);

    /**
     * 判断老师选课情况
     * @return
     */
    Page tutorListByJudge(int curr, int size);

    Tutor tutorLogin(String tutorName, String pwd);

    /**
     * 判断是否选满
     * @param tutor
     * @return
     */
    boolean getOne(Tutor tutor);

    boolean thressFp();

    Page tutorListStu(int parseInt, int parseInt1, Integer junt);
}

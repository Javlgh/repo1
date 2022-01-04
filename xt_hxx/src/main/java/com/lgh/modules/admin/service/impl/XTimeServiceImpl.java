package com.lgh.modules.admin.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.lgh.modules.admin.mapper.TutorMapper;
import com.lgh.modules.admin.mapper.XTimeMapper;
import com.lgh.modules.admin.model.XTime;
import com.lgh.modules.admin.service.XTimeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author 李广辉
 * @since 2021-11-08
 */
@Service
public class XTimeServiceImpl extends ServiceImpl<XTimeMapper, XTime> implements XTimeService {

    @Autowired
    private TutorMapper tutorMapper;
    @Override
    public Boolean updateByIs(String newTime, String twoTime, Integer studentSize) {
        SimpleDateFormat simpleDateFormat=new SimpleDateFormat("yyyy-MM-dd");
        Date newTimed = null;
        try {
            newTimed = simpleDateFormat.parse(newTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        Date twoDate = null;
        try {
            twoDate = simpleDateFormat.parse(twoTime);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        XTime xTime=new XTime();
        xTime.setId("1");
        xTime.setTwoTime(twoDate);
        xTime.setFirstTime(newTimed);
        xTime.setStudentSize(studentSize);
        boolean update = this.updateById(xTime);
        if(update){
            int i = tutorMapper.timeUpdate(studentSize);
            if(i>0){
                return true;
            }
        }
        return update;
    }
}

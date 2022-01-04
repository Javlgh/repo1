package com.lgh.modules.admin.listener;


import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.conditions.query.QueryChainWrapper;
import com.lgh.modules.admin.mapper.ClassAllMapper;
import com.lgh.modules.admin.model.ClassAll;
import com.lgh.modules.admin.service.ClassAllService;
import com.lgh.modules.admin.service.impl.ClassAllServiceImpl;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.support.WebApplicationContextUtils;


import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.util.List;

@Component
public class AdminServletContextListener implements ServletContextListener {


    @Override
    public void contextInitialized(ServletContextEvent sce) {


//        System.out.println("servlet容器被初始化");
    }

    @Override
    public void contextDestroyed(ServletContextEvent sce) {
//
//        sce.getServletContext().removeAttribute("classAllList");
//        System.out.println("Servlet容器被销毁");
    }
}

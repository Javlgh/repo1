package com.lgh.modules.admin.config;


import com.lgh.modules.admin.interceptor.AdminInterceptor;
import com.lgh.modules.admin.interceptor.StudentInterceptor;
import com.lgh.modules.admin.interceptor.TutorInterceptor;
import com.lgh.modules.admin.model.Tutor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Autowired
    private TutorInterceptor tutorInterceptor;
    @Autowired
    private StudentInterceptor studentInterceptor;

    @Autowired
    private AdminInterceptor adminInterceptor;

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        this.loginInterceptor(registry);//登录拦截
        this.adminInterceptor(registry);//管理员拦截
        this.tutorInterceptor(registry);//教师拦截
    }

    private void tutorInterceptor(InterceptorRegistry registry) {
        registry.addInterceptor(tutorInterceptor)
                .addPathPatterns("/tutor/**")
                .excludePathPatterns(//释放登陆接口
                        "/login.html"    ,       //登录
                        "/js/**",            //html静态资源
                        "/css/**",              //js静态资源
                        "/fonts/**",             //css静态资源
                        "/img/**",
                        "/admin/login",
                        "/student/login",
                        "/tutor/tutorLogin"
                );
    }

    private void loginInterceptor(InterceptorRegistry registry){
        registry.addInterceptor(studentInterceptor)
                .addPathPatterns("/student/**")
                .excludePathPatterns(//释放登陆接口
                        "/login.html"    ,       //登录
                        "/js/**",            //html静态资源
                        "/css/**",              //js静态资源
                        "/fonts/**",             //css静态资源
                        "/img/**",
                        "/admin/login",
                        "/student/login",
                        "/tutor/tutorLogin"
                );
    }
    private void adminInterceptor(InterceptorRegistry registry){
        registry.addInterceptor(adminInterceptor)
                .addPathPatterns("/admin/**")
                .excludePathPatterns(//释放登陆接口
                "/login.html"    ,       //登录
                "/js/**",            //html静态资源
                "/css/**",              //js静态资源
                "/fonts/**",             //css静态资源
                "/img/**",
                "/admin/login",
                "/student/login",
                "/tutor/tutorLogin"
        );//拦截管理员接口
    }


}
package com.lgh.modules.admin.config;
import com.lgh.modules.admin.interceptor.AdminInterceptor;
import com.lgh.modules.admin.interceptor.StudentInterceptor;
import com.lgh.modules.admin.interceptor.TutorInterceptor;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;


/**
 * 拦截器设置
 */
//@Configuration
public class LoginConfig implements WebMvcConfigurer {

    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        //注册TestInterceptor拦截器
        InterceptorRegistration registration = registry.addInterceptor(new AdminInterceptor());
        registration.addPathPatterns("/**");                      //所有路径都被拦截
        registration.excludePathPatterns(                         //添加不拦截路径
//                "你的登陆路径"           //登录
                "/**/adminLogin.html",            //html静态资源
                "/**/*.js",              //js静态资源
                "/**/*.css",             //css静态资源
                "/**/*.woff",
                "/**/*.ttf"
        );
        //注册TestInterceptor拦截器
        InterceptorRegistration registration1 = registry.addInterceptor(new StudentInterceptor());
        registration1.addPathPatterns("/**");                      //所有路径都被拦截
        registration1.excludePathPatterns(                         //添加不拦截路径
                "/login.html"    ,       //登录
                "/**/adminLogin.html",            //html静态资源
                "/**/*.js",              //js静态资源
                "/**/*.css",             //css静态资源
                "/**/*.woff",
                "/**/*.ttf"
        );
        //注册TestInterceptor拦截器
        InterceptorRegistration registration2 = registry.addInterceptor(new TutorInterceptor());
        registration2.addPathPatterns("/**");                      //所有路径都被拦截
        registration2.excludePathPatterns(                         //添加不拦截路径
//                "你的登陆路径"           //登录
                "/**/adminLogin.html",            //html静态资源
                "/**/*.js",              //js静态资源
                "/**/*.css",             //css静态资源
                "/**/*.woff",
                "/**/*.ttf"
        );
    }

}
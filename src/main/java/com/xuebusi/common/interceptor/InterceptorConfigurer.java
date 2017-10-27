package com.xuebusi.common.interceptor;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ViewControllerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;

/**
 * Created by SYJ on 2017/10/26.
 */
@Configuration
public class InterceptorConfigurer extends WebMvcConfigurerAdapter {

    /**
     * 拦截路径配置:
     * 多个拦截器组成一个拦截器链
     * addPathPatterns 用于添加拦截规则
     * excludePathPatterns 用户排除拦截
     * @param registry
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new CommonIntercepter()).addPathPatterns("/settings/**", "/my/**", "/courses/learning");
        super.addInterceptors(registry);
    }

    /**
     * url跳转配置（类似Controller的功能）
     * @param registry
     */
    @Override
    public void addViewControllers(ViewControllerRegistry registry) {
        //测试url跳转
        registry.addViewController("/test").setViewName("/test/test");
        super.addViewControllers(registry);
    }
}

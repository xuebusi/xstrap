package com.xuebusi.common.listener;

import com.alibaba.fastjson.JSON;
import com.xuebusi.common.cache.BaseDataCacheUtils;
import com.xuebusi.entity.LoginInfo;
import com.xuebusi.service.LoginInfoService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import java.util.List;

/**
 * Created by SYJ on 2017/10/26.
 */
@Component
public class InitDataListener implements InitializingBean, ServletContextAware {

    @Autowired
    private LoginInfoService loginInfoService;

    private ServletContext servletContext;

    @Override
    public void afterPropertiesSet() throws Exception {
        List<LoginInfo> loginInfoList = loginInfoService.findAll();
        if (loginInfoList != null && loginInfoList.size() > 0) {
            for (LoginInfo loginInfo : loginInfoList) {
                BaseDataCacheUtils.getUserCacheMap().put(loginInfo.getUsername(), loginInfo);
            }
        }
        System.out.println(">>>>>> 缓存用户数据: " + JSON.toJSONString(loginInfoList));
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}

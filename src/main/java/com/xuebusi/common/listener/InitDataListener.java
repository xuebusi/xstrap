package com.xuebusi.common.listener;

import com.xuebusi.entity.LoginInfo;
import com.xuebusi.service.LoginInfoService;
import org.springframework.beans.factory.InitializingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;

import javax.servlet.ServletContext;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by SYJ on 2017/10/26.
 */
@Component
public class InitDataListener implements InitializingBean, ServletContextAware {

    @Autowired
    private LoginInfoService loginInfoService;

    private ServletContext servletContext;

    private static Map<String, LoginInfo> userCacheMap = new HashMap<>();

    @Override
    public void afterPropertiesSet() throws Exception {
        List<LoginInfo> loginInfoList = loginInfoService.findAll();
        if (loginInfoList != null && loginInfoList.size() > 0) {
            for (LoginInfo loginInfo : loginInfoList) {
                userCacheMap.put(loginInfo.getUsername(), loginInfo);
            }
        }
        /**
         * 缓存用户信息
         */
        servletContext.setAttribute("userCacheMap", userCacheMap);
    }

    @Override
    public void setServletContext(ServletContext servletContext) {
        this.servletContext = servletContext;
    }
}

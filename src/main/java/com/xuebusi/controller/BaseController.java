package com.xuebusi.controller;

import com.xuebusi.common.utils.CommonUtils;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by SYJ on 2017/10/23.
 */
public class BaseController {

    /**
     * 获取HttpServletRequest
     * @return
     */
    public HttpServletRequest getHttpServletRequest(){
        ServletRequestAttributes requestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return requestAttributes.getRequest();
    }

    /**
     * 获取IP地址
     * @return
     */
    public String getIpAddr(){
        HttpServletRequest request = getHttpServletRequest();
        return CommonUtils.getIpAddr(request);
    }

}

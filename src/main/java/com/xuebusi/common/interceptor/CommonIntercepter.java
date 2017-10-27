package com.xuebusi.common.interceptor;

import com.alibaba.fastjson.JSON;
import com.xuebusi.common.utils.CommonUtils;
import com.xuebusi.common.utils.RequestUtils;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * 拦截器
 * Created by SYJ on 2017/10/26.
 */
public class CommonIntercepter implements HandlerInterceptor {

    private static final Logger logger = LoggerFactory.getLogger(CommonIntercepter.class);

    /**
     * 前置方法
     * 在Controller的方法执行之前调用, 只有返回true才会继续向下执行, 返回false取消当前请求
     * @param request
     * @param response
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        //设置taskId
        String taskId = request.getParameter("taskId");
        if (StringUtils.isNoneEmpty(taskId)) {
            RequestUtils.setRequestId(taskId);
        }else {
            RequestUtils.setRequestId();
        }
        //日志拦截
        logger.info("{}-统一拦截请求日志: 请求url={}, 请求方式={}, 请求IP={}, 请求参数={}, Http请求头={}",
                RequestUtils.getRequestId(), request.getRequestURL(), request.getMethod(), request.getRemoteAddr(),
                JSON.toJSONString(request.getParameterMap()), CommonUtils.getHttpHeader(request));
        if (request.getSession().getAttribute("user") == null) {
            response.sendRedirect("/login");
            return false;
        }
        return true;
    }

    /**
     * 后置方法
     * 在Controller的方法执行之后调用, 即请求处理之后进行调用，但是在视图被渲染之前被调用
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    /**
     * 完成方法
     * 在整个请求结束之后被调用，也就是在DispatcherServlet在视图渲染完成之后调用（主要是用于进行资源清理工作）
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param e
     * @throws Exception
     */
    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {

    }
}

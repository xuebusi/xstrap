package com.xuebusi.common.utils;

import javax.servlet.http.HttpServletRequest;
import java.util.Enumeration;

/**
 * Created by SYJ on 2017/10/23.
 */
public class CommonUtils {

    /**
     * 获取http头
     * @param request
     * @return
     */
    public static String getHttpHeader(HttpServletRequest request) {
        String strRes = null;
        if (request != null) {
            StringBuilder sb = new StringBuilder();
            Enumeration enumerations = request.getHeaderNames();
            sb.append("url=" + request.getRequestURL().toString());
            sb.append(" ； ");
            while (enumerations.hasMoreElements()) {
                String name = (String) enumerations.nextElement();
                String val = request.getHeader(name);
                sb.append(name + "=" + val);
                sb.append(" ； ");
            }
            strRes = sb.toString();
        }
        return strRes;
    }

    /**
     * 获取IP
     * @param request
     * @return
     */
    public static String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("X-Real-IP");
        }

        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }

        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }

        if(ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }

        if(ip != null) {
            ip = ip.split(",")[0];
        } else {
            ip = "";
        }

        return ip;
    }
}

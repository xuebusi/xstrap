package com.xuebusi.common.utils;

import java.util.UUID;

/**
 * Created by SYJ on 2017/10/27.
 */
public class RequestUtils {

    private static ThreadLocal<String> requestId = new ThreadLocal<>();
    private static ThreadLocal<Long> requestTime = new ThreadLocal<>();

    public static String getRequestId() {
        return requestId.get();
    }

    public static void setRequestId() {
        RequestUtils.requestId.set(UUID.randomUUID().toString());
        RequestUtils.requestTime.set(System.currentTimeMillis());
    }

    public static Long getRequestTime() {
        return requestTime.get();
    }

    public static void setRequestId(String taskId) {
        RequestUtils.requestId.set(taskId);
        RequestUtils.requestTime.set(System.currentTimeMillis());
    }
}

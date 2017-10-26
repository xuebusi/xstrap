package com.xuebusi.common.cache;

import com.xuebusi.entity.LoginInfo;

import java.util.HashMap;
import java.util.Map;

/**
 * 基础数据缓存工具类
 * Created by SYJ on 2017/10/26.
 */
public class BaseDataCacheUtils {

    /**
     * 缓存用户基本信息
     */
    private static Map<String, LoginInfo> userCacheMap = new HashMap<>();

    public static Map<String, LoginInfo> getUserCacheMap() {
        return userCacheMap;
    }
}

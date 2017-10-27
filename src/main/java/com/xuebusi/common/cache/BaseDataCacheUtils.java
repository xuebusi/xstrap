package com.xuebusi.common.cache;

import com.xuebusi.entity.*;

import java.util.HashMap;
import java.util.Map;

/**
 * 基础数据缓存工具类
 * Created by SYJ on 2017/10/26.
 */
public class BaseDataCacheUtils {

    /**
     * 缓存登录信息
     */
    private static Map<String, LoginInfo> loginInfoCacheMap = new HashMap<>();

    /**
     * 缓存课程基本信息
     */
    private static Map<String, Course> courseCacheMap = new HashMap<>();

    /**
     * 缓存课程详情信息
     */
    private static Map<String, CourseDetail> courseDetailCacheMap = new HashMap<>();

    /**
     * 缓存课时信息
     */
    private static Map<String, Lesson> lessonCacheMap = new HashMap<>();

    /**
     * 缓存讲师信息
     */
    private static Map<String, Teacher>teacherCacheMap = new HashMap<>();

    /**
     * 缓存用户基本信息
     */
    private static Map<String, User> userCacheMap = new HashMap<>();

    public static Map<String, LoginInfo> getLoginInfoCacheMap() {
        return loginInfoCacheMap;
    }

    public static Map<String, Course> getCourseCacheMap() {
        return courseCacheMap;
    }

    public static Map<String, CourseDetail> getCourseDetailCacheMap() {
        return courseDetailCacheMap;
    }

    public static Map<String, Lesson> getLessonCacheMap() {
        return lessonCacheMap;
    }

    public static Map<String, Teacher> getTeacherCacheMap() {
        return teacherCacheMap;
    }

    public static Map<String, User> getUserCacheMap() {
        return userCacheMap;
    }
}

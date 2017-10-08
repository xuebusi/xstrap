package com.xuebusi.enums;

/**
 * 课程分类
 * systematic   系统课
 * open         公开课
 * bootcamp     训练营
 * Created by SYJ on 2017/10/8.
 */
public enum CourseCategoryEnum {

    systematic(1, "系统课"),
    open(2, "公开课"),
    bootcamp(3, "训练营");

    private int code;
    private String value;

    CourseCategoryEnum(int code, String value) {
        this.code = code;
        this.value = value;
    }

    public int getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }
}

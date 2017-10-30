package com.xuebusi.enums;

/**
 * Created by SYJ on 2017/10/29.
 */
public enum SelectiveTypeEnum {

    courseDesc("1", "课程介绍"),
    courseCatalog("2", "课程目录"),
    courseNotice("3", "课程须知"),
    courseReviews("4", "往期评论");

    private String code;
    private String value;

    SelectiveTypeEnum(String code, String value) {
        this.code = code;
        this.value = value;
    }

    public String getCode() {
        return code;
    }

    public String getValue() {
        return value;
    }
}

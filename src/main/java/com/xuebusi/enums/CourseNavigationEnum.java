package com.xuebusi.enums;

/**
 * 课程所属导航菜单
 * ai       人工智能
 * bigdata  大数据
 * da       数据分析
 * basic    基础课程
 * Created by SYJ on 2017/10/8.
 */
public enum CourseNavigationEnum {

    all(0, "所有"),

    ai(1, "人工智能"),

    bigdata(2, "大数据"),

    da(3, "数据分析"),

    basic(4, "基础课程");

    private int code;
    private String value;

    CourseNavigationEnum(int code, String value) {
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

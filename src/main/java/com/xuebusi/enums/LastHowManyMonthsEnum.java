package com.xuebusi.enums;

/**
 * 最近几周或几个月
 * Created by SYJ on 2017/10/28.
 */
public enum LastHowManyMonthsEnum {

    oneWeek(1, "最近一周"),
    twoWeeks(2, "最近两周"),
    oneMonth(3, "最近一个月"),
    twoMonths(4, "最近两个月"),
    threeMonths(5, "最近三个月");

    private int code;
    private String value;

    LastHowManyMonthsEnum(int code, String value) {
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

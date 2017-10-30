package com.xuebusi.enums;

/**
 * 订单状态枚举
 * Created by SYJ on 2017/10/28.
 */
public enum OrderStatusEnum {

    created(1, "待付款"),
    paid(2, "已付款");

    private int code;
    private String value;

    OrderStatusEnum(int code, String value) {
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

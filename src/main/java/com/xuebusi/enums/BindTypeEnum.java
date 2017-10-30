package com.xuebusi.enums;

/**
 * 绑定类型(第三方登录:微博、qq、微信)
 * Created by SYJ on 2017/10/29.
 */
public enum BindTypeEnum {

    weibo(1,"微博"),
    qq(2, "QQ"),
    weixin(3, "微信");

    private int code;
    private String value;

    BindTypeEnum(int code, String value) {
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

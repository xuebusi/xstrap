package com.xuebusi.enums;

/**
 * 订单支付方式枚举
 * Created by SYJ on 2017/10/28.
 */
public enum PayWaysEnum {

    alipay(1, "支付宝"),
    wxpay(2, "微信支付"),
    heepay(3, "网银支付"),
    quickpay(4, "快捷支付"),
    llpay(5, "连连支付"),
    bankpay(6, "银行直付"),
    none(7, "其他支付");

    private int code;
    private String value;

    PayWaysEnum(int code, String value) {
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

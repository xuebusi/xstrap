package com.xuebusi.common.result;

/**
 * 返回Code码
 * Created by SYJ on 2017/5/19.
 */
public enum ViewHint {

    Success("成功", 200),
    Fail("失败", 500);

    private  String message;
    private  int code;

    ViewHint(String message, int code) {
        this.message = message;
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public int getCode() {
        return code;
    }
}

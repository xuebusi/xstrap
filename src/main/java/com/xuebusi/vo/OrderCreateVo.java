package com.xuebusi.vo;

import com.alibaba.fastjson.annotation.JSONField;

/**
 * 提交订单参数
 * Created by SYJ on 2017/10/29.
 */
public class OrderCreateVo {

    private String password;
    private String targetType;
    private String targetId;
    private String totalPrice;
    private String shouldPayMoney;
    private String smsCode;
    private String mobile;
    private String csrfToken;
    private String courseTitle;
    private String courseImgUrl;
    private String courseLink;

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getTargetType() {
        return targetType;
    }

    public void setTargetType(String targetType) {
        this.targetType = targetType;
    }

    public String getTargetId() {
        return targetId;
    }

    public void setTargetId(String targetId) {
        this.targetId = targetId;
    }

    public String getTotalPrice() {
        return totalPrice;
    }

    public void setTotalPrice(String totalPrice) {
        this.totalPrice = totalPrice;
    }

    public String getShouldPayMoney() {
        return shouldPayMoney;
    }

    public void setShouldPayMoney(String shouldPayMoney) {
        this.shouldPayMoney = shouldPayMoney;
    }

    public String getSmsCode() {
        return smsCode;
    }

    public void setSmsCode(String smsCode) {
        this.smsCode = smsCode;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCsrfToken() {
        return csrfToken;
    }

    public void setCsrfToken(String csrfToken) {
        this.csrfToken = csrfToken;
    }

    public String getCourseTitle() {
        return courseTitle;
    }

    public void setCourseTitle(String courseTitle) {
        this.courseTitle = courseTitle;
    }

    public String getCourseImgUrl() {
        return courseImgUrl;
    }

    public void setCourseImgUrl(String courseImgUrl) {
        this.courseImgUrl = courseImgUrl;
    }

    public String getCourseLink() {
        return courseLink;
    }

    public void setCourseLink(String courseLink) {
        this.courseLink = courseLink;
    }
}

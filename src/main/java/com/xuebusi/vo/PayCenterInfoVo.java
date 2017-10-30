package com.xuebusi.vo;

/**
 * 支付信息
 * Created by SYJ on 2017/10/29.
 */
public class PayCenterInfoVo {

    private String targetType;
    private String targetId;//课程id
    private String totalPrice;//总价格
    private String shouldPayMoney;//应付价格
    private String courseTitle;//课程标题
    private String courseImgUrl;//课程图片地址
    private String courseLink;//课程链接地址
    private String orderNo;//订单号

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

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }
}

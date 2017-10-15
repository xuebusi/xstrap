package com.xuebusi.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 用户
 * Created by SYJ on 2017/10/15.
 */
@Entity
@Table(name="tb_user")
public class User {

    @Id
    @GeneratedValue
    private Integer id;
    private String username;//用户名
    private String password;//密码
    private String rememberMe;//记住我
    private Date createTime;//创建时间
    private String truename;//真实姓名
    private String gender;//性别
    private String idcard;//身份证号码
    private String mobile;//手机号码
    private String company;//公司
    private String job;//职业
    private String title;//头衔
    private String signature;//个人签名
    private String about;//自我介绍
    private String site;//个人空间
    private String weibo;//微博
    private String isWeiboPublic;//微博是否公开
    private String weixin;//微信
    private String isWeixinPublic;//微信是否公开
    private String qq;//QQ
    private String isQqPublic;//QQ是否公开
    private String position;//职位
    private String city;//所在城市

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRememberMe() {
        return rememberMe;
    }

    public void setRememberMe(String rememberMe) {
        this.rememberMe = rememberMe;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getTruename() {
        return truename;
    }

    public void setTruename(String truename) {
        this.truename = truename;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public String getCompany() {
        return company;
    }

    public void setCompany(String company) {
        this.company = company;
    }

    public String getJob() {
        return job;
    }

    public void setJob(String job) {
        this.job = job;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getSignature() {
        return signature;
    }

    public void setSignature(String signature) {
        this.signature = signature;
    }

    public String getAbout() {
        return about;
    }

    public void setAbout(String about) {
        this.about = about;
    }

    public String getSite() {
        return site;
    }

    public void setSite(String site) {
        this.site = site;
    }

    public String getWeibo() {
        return weibo;
    }

    public void setWeibo(String weibo) {
        this.weibo = weibo;
    }

    public String getIsWeiboPublic() {
        return isWeiboPublic;
    }

    public void setIsWeiboPublic(String isWeiboPublic) {
        this.isWeiboPublic = isWeiboPublic;
    }

    public String getWeixin() {
        return weixin;
    }

    public void setWeixin(String weixin) {
        this.weixin = weixin;
    }

    public String getIsWeixinPublic() {
        return isWeixinPublic;
    }

    public void setIsWeixinPublic(String isWeixinPublic) {
        this.isWeixinPublic = isWeixinPublic;
    }

    public String getQq() {
        return qq;
    }

    public void setQq(String qq) {
        this.qq = qq;
    }

    public String getIsQqPublic() {
        return isQqPublic;
    }

    public void setIsQqPublic(String isQqPublic) {
        this.isQqPublic = isQqPublic;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
}

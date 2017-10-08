package com.xuebusi.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 课程信息
 * Created by SYJ on 2017/10/7.
 */
@Entity
@Table(name = "tb_course")
public class Course {

    @Id
    private Integer id;
    private String courseTitle;
    private String courseImgUrl;
    private Integer courseUserCount;
    private String courseTeacherName;
    private Double coursePrice;
    private String courseLink;
    private Date createTime;
    /**
     * systematic   系统课
     * open         公开课
     * bootcamp     训练营
     */
    private String courseCategory;//所属分类
    /**
     * ai       人工智能
     * bigdata  大数据
     * da       数据分析
     * basic    基础课程
     */
    private String courseNavigation;//所属导航菜单

    private Integer courseTeacherId;//讲师id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getCourseUserCount() {
        return courseUserCount;
    }

    public void setCourseUserCount(Integer courseUserCount) {
        this.courseUserCount = courseUserCount;
    }

    public String getCourseTeacherName() {
        return courseTeacherName;
    }

    public void setCourseTeacherName(String courseTeacherName) {
        this.courseTeacherName = courseTeacherName;
    }

    public Double getCoursePrice() {
        return coursePrice;
    }

    public void setCoursePrice(Double coursePrice) {
        this.coursePrice = coursePrice;
    }

    public String getCourseLink() {
        return courseLink;
    }

    public void setCourseLink(String courseLink) {
        this.courseLink = courseLink;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getCourseCategory() {
        return courseCategory;
    }

    public void setCourseCategory(String courseCategory) {
        this.courseCategory = courseCategory;
    }

    public String getCourseNavigation() {
        return courseNavigation;
    }

    public void setCourseNavigation(String courseNavigation) {
        this.courseNavigation = courseNavigation;
    }

    public Integer getCourseTeacherId() {
        return courseTeacherId;
    }

    public void setCourseTeacherId(Integer courseTeacherId) {
        this.courseTeacherId = courseTeacherId;
    }

    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", courseTitle='" + courseTitle + '\'' +
                ", courseImgUrl='" + courseImgUrl + '\'' +
                ", courseUserCount=" + courseUserCount +
                ", courseTeacherName='" + courseTeacherName + '\'' +
                ", coursePrice=" + coursePrice +
                ", courseLink='" + courseLink + '\'' +
                ", createTime=" + createTime +
                ", courseCategory='" + courseCategory + '\'' +
                ", courseNavigation='" + courseNavigation + '\'' +
                ", courseTeacherId=" + courseTeacherId +
                '}';
    }
}

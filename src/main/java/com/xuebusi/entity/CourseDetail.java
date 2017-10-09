package com.xuebusi.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * Created by SYJ on 2017/10/8.
 */
@Entity
@Table(name = "tb_course_detail")
public class CourseDetail {

    @Id
    private int id;
    private String courseDesc;//课程介绍
    private String courseCatalog;// 课程目录
    private String courseNotice;//课程须知
    private int courseId;//课程id
    private Date createTime;//创建时间

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCourseDesc() {
        return courseDesc;
    }

    public void setCourseDesc(String courseDesc) {
        this.courseDesc = courseDesc;
    }

    public String getCourseCatalog() {
        return courseCatalog;
    }

    public void setCourseCatalog(String courseCatalog) {
        this.courseCatalog = courseCatalog;
    }

    public String getCourseNotice() {
        return courseNotice;
    }

    public void setCourseNotice(String courseNotice) {
        this.courseNotice = courseNotice;
    }

    public int getCourseId() {
        return courseId;
    }

    public void setCourseId(int courseId) {
        this.courseId = courseId;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "CourseDetail{" +
                "id=" + id +
                ", courseDesc='" + courseDesc + '\'' +
                ", courseCatalog='" + courseCatalog + '\'' +
                ", courseNotice='" + courseNotice + '\'' +
                ", courseId=" + courseId +
                ", createTime=" + createTime +
                '}';
    }
}

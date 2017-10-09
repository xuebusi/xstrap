package com.xuebusi.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

/**
 * 课程目录（课时章节）
 * Created by SYJ on 2017/10/9.
 */
@Entity
@Table(name = "tb_lesson")
public class Lesson {

    @Id
    private Integer id;
    private Integer lessonParentId;
    private String lessonName;
    private Integer lessonType;
    private Date createTime;
    private Integer lessonSort;
    private Integer courseId;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getLessonParentId() {
        return lessonParentId;
    }

    public void setLessonParentId(Integer lessonParentId) {
        this.lessonParentId = lessonParentId;
    }

    public String getLessonName() {
        return lessonName;
    }

    public void setLessonName(String lessonName) {
        this.lessonName = lessonName;
    }

    public Integer getLessonType() {
        return lessonType;
    }

    public void setLessonType(Integer lessonType) {
        this.lessonType = lessonType;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Integer getLessonSort() {
        return lessonSort;
    }

    public void setLessonSort(Integer lessonSort) {
        this.lessonSort = lessonSort;
    }

    public Integer getCourseId() {
        return courseId;
    }

    public void setCourseId(Integer courseId) {
        this.courseId = courseId;
    }

    @Override
    public String toString() {
        return "Lesson{" +
                "id=" + id +
                ", lessonParentId=" + lessonParentId +
                ", lessonName='" + lessonName + '\'' +
                ", lessonType=" + lessonType +
                ", createTime=" + createTime +
                ", lessonSort=" + lessonSort +
                ", courseId=" + courseId +
                '}';
    }
}

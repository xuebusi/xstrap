package com.xuebusi.entity;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 讲师
 * Created by SYJ on 2017/10/8.
 */
@Entity
@Table(name = "tb_teacher")
public class Teacher {

    @Id
    private Integer id;
    private String teacherName;
    private String teacherAbout;
    private String teacherLearn;
    private String teacherLearningClassroom;
    private String teacherFavorited;
    private String teacherGroup;
    private String teacherFollowing;
    private String teacherFollower;
    private String teacherRank;
    private String teacherSign;
    private String createTime;
    private String teacherPhotoUrl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTeacherName() {
        return teacherName;
    }

    public void setTeacherName(String teacherName) {
        this.teacherName = teacherName;
    }

    public String getTeacherAbout() {
        return teacherAbout;
    }

    public void setTeacherAbout(String teacherAbout) {
        this.teacherAbout = teacherAbout;
    }

    public String getTeacherLearn() {
        return teacherLearn;
    }

    public void setTeacherLearn(String teacherLearn) {
        this.teacherLearn = teacherLearn;
    }

    public String getTeacherLearningClassroom() {
        return teacherLearningClassroom;
    }

    public void setTeacherLearningClassroom(String teacherLearningClassroom) {
        this.teacherLearningClassroom = teacherLearningClassroom;
    }

    public String getTeacherFavorited() {
        return teacherFavorited;
    }

    public void setTeacherFavorited(String teacherFavorited) {
        this.teacherFavorited = teacherFavorited;
    }

    public String getTeacherGroup() {
        return teacherGroup;
    }

    public void setTeacherGroup(String teacherGroup) {
        this.teacherGroup = teacherGroup;
    }

    public String getTeacherFollowing() {
        return teacherFollowing;
    }

    public void setTeacherFollowing(String teacherFollowing) {
        this.teacherFollowing = teacherFollowing;
    }

    public String getTeacherFollower() {
        return teacherFollower;
    }

    public void setTeacherFollower(String teacherFollower) {
        this.teacherFollower = teacherFollower;
    }

    public String getTeacherRank() {
        return teacherRank;
    }

    public void setTeacherRank(String teacherRank) {
        this.teacherRank = teacherRank;
    }

    public String getTeacherSign() {
        return teacherSign;
    }

    public void setTeacherSign(String teacherSign) {
        this.teacherSign = teacherSign;
    }

    public String getCreateTime() {
        return createTime;
    }

    public void setCreateTime(String createTime) {
        this.createTime = createTime;
    }

    public String getTeacherPhotoUrl() {
        return teacherPhotoUrl;
    }

    public void setTeacherPhotoUrl(String teacherPhotoUrl) {
        this.teacherPhotoUrl = teacherPhotoUrl;
    }

    @Override
    public String toString() {
        return "Teacher{" +
                "id=" + id +
                ", teacherName='" + teacherName + '\'' +
                ", teacherAbout='" + teacherAbout + '\'' +
                ", teacherLearn='" + teacherLearn + '\'' +
                ", teacherLearningClassroom='" + teacherLearningClassroom + '\'' +
                ", teacherFavorited='" + teacherFavorited + '\'' +
                ", teacherGroup='" + teacherGroup + '\'' +
                ", teacherFollowing='" + teacherFollowing + '\'' +
                ", teacherFollower='" + teacherFollower + '\'' +
                ", teacherRank='" + teacherRank + '\'' +
                ", teacherSign='" + teacherSign + '\'' +
                ", createTime='" + createTime + '\'' +
                ", teacherPhotoUrl='" + teacherPhotoUrl + '\'' +
                '}';
    }
}

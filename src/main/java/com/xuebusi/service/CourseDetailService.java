package com.xuebusi.service;

import com.xuebusi.entity.CourseDetail;

import java.util.List;

/**
 * 课程详情
 * Created by SYJ on 2017/10/8.
 */
public interface CourseDetailService {
    /**
     * 根据课程id查询课程详情
     * @param courseId
     * @return
     */
    CourseDetail findOne(Integer courseId);

    /**
     * 查询所有课程详情
     * @return
     */
    List<CourseDetail> findAll();
}

package com.xuebusi.service;

import com.xuebusi.entity.CourseDetail;

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
}

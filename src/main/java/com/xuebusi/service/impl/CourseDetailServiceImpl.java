package com.xuebusi.service.impl;

import com.xuebusi.entity.CourseDetail;
import com.xuebusi.repository.CourseDetailRepository;
import com.xuebusi.service.CourseDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * 课程详情
 * Created by SYJ on 2017/10/8.
 */
@Service
public class CourseDetailServiceImpl implements CourseDetailService {

    @Autowired
    private CourseDetailRepository courseDetailRepository;

    /**
     * 根据课程id查询课程详情
     * @param courseId
     * @return
     */
    @Override
    public CourseDetail findOne(Integer courseId) {
        return courseDetailRepository.findOne(courseId);
    }
}

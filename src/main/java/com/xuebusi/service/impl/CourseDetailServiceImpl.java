package com.xuebusi.service.impl;

import com.xuebusi.common.cache.InitDataCacheMap;
import com.xuebusi.entity.CourseDetail;
import com.xuebusi.repository.CourseDetailRepository;
import com.xuebusi.service.CourseDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

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
        CourseDetail courseDetail = InitDataCacheMap.getCourseDetailCacheMap().get(String.valueOf(courseId));
        if (courseDetail != null) {
            return courseDetail;
        }
        return courseDetailRepository.findOne(courseId);
    }

    /**
     * 查询所有课程详情
     * @return
     */
    @Override
    public List<CourseDetail> findAll() {
        return courseDetailRepository.findAll();
    }
}

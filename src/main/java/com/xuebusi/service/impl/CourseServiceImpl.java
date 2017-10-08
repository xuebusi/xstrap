package com.xuebusi.service.impl;

import com.xuebusi.entity.Course;
import com.xuebusi.repository.CourseRepository;
import com.xuebusi.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

/**
 * 课程
 * Created by SYJ on 2017/10/8.
 */
@Service
public class CourseServiceImpl implements CourseService {

    @Autowired
    private CourseRepository courseRepository;

    /**
     * 课程分页查询
     * @param pageable
     * @return
     */
    @Override
    public Page<Course> findList(Pageable pageable) {
        return courseRepository.findAll(pageable);
    }

    /**
     * 根据id查询课程详情
     * @param id
     * @return
     */
    @Override
    public Course findOne(Integer id) {
        return courseRepository.findOne(id);
    }

    /**
     * 根据类别分页查询课程列表
     * @param courseCategory
     * @param pageable
     * @return
     */
    @Override
    public Page<Course> findByCourseCategory(String courseCategory, Pageable pageable) {
        return courseRepository.findByCourseCategory(courseCategory, pageable);
    }

    /**
     * 根据类别分页查询课程列表
     * @param courseNavigation
     * @param pageable
     * @return
     */
    @Override
    public Page<Course> findByCourseNavigation(String courseNavigation, Pageable pageable) {
        return courseRepository.findByCourseNavigation(courseNavigation, pageable);
    }

    /**
     * 根据导航和类别分页查询课程列表
     * @param courseNavigation
     * @param courseCategory
     * @param pageable
     * @return
     */
    @Override
    public Page<Course> findByCourseNavigationAndCourseCategory(String courseNavigation, String courseCategory, Pageable pageable) {
        return courseRepository.findByCourseNavigationAndCourseCategory(courseNavigation, courseCategory, pageable);
    }

}

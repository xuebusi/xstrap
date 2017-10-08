package com.xuebusi.service;

import com.xuebusi.entity.Course;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

/**
 * 课程
 * Created by SYJ on 2017/10/7.
 */
public interface CourseService {
    /**
     * 分页查询所有课程
     * @param pageable
     * @return
     */
    Page<Course> findList(Pageable pageable);

    /**
     * 根据id查询课程详情
     * @param id
     * @return
     */
    Course findOne(Integer id);

    /**
     * 根据类别分页查询课程列表
     * @param courseCategory
     * @param pageable
     * @return
     */
    Page<Course> findByCourseCategory(String courseCategory, Pageable pageable);

    /**
     * 根据类别分页查询课程列表
     * @param courseNavigation
     * @param pageable
     * @return
     */
    Page<Course> findByCourseNavigation(String courseNavigation, Pageable pageable);

    /**
     * 根据导航和类别分页查询课程列表
     * @param courseNavigation
     * @param courseCategory
     * @param pageable
     * @return
     */
    Page<Course> findByCourseNavigationAndCourseCategory(String courseNavigation, String courseCategory, Pageable pageable);
}

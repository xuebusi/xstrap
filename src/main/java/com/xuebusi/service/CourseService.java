package com.xuebusi.service;

import com.xuebusi.entity.Course;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;

import java.util.List;

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
     * 查询所有课程
     * @return
     */
    List<Course> findAll();

    /**
     * 根据id查询课程详情
     * @param id
     * @return
     */
    Course findOne(Integer id);

    /**
     * 根据多个id查询课程
     * @param ids
     * @return
     */
    List<Course> findByIdIn(List<Integer> ids);

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

    Page<Course> findList(String navigation, String category, Pageable pageable);

    /**
     * 根据讲师id查询所教的课程
     * @param courseTeacherId
     * @return
     */
    List<Course> findBycourseTeacherId(Integer courseTeacherId);

}

package com.xuebusi.repository;

import com.xuebusi.entity.Course;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

/**
 * Created by SYJ on 2017/10/8.
 */
public interface CourseRepository extends JpaRepository<Course, Integer>, JpaSpecificationExecutor<Course>{

    @Query("select u from Course u where u.id in ?1")
    List<Course> findByIdIn(List<Integer> ids);

    /**
     * 根据列表分页查询课程列表
     * @param courseCategory
     * @param pageable
     * @return
     */
    Page<Course> findByCourseCategory(String courseCategory, Pageable pageable);

    /**
     * 根据导航分页查询课程列表
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

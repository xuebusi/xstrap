package com.xuebusi.service.impl;

import com.xuebusi.entity.Course;
import com.xuebusi.enums.CourseCategoryEnum;
import com.xuebusi.enums.CourseNavigationEnum;
import com.xuebusi.repository.CourseRepository;
import com.xuebusi.service.CourseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.jpa.domain.Specification;
import org.springframework.stereotype.Service;

import javax.persistence.criteria.*;

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

    @Override
    public Page<Course> findList(final String navigation, final String category, Pageable pageable) {

        Specification<Course> specification = new Specification<Course>() {
            @Override
            public Predicate toPredicate(Root root, CriteriaQuery query, CriteriaBuilder cb) {
                Path courseNavigationPath = root.get("courseNavigation");
                Path courseCategoryPath = root.get("courseCategory");
                Predicate courseNavigationPredicate = null;
                Predicate courseCategoryPredicate = null;
                if (!CourseNavigationEnum.all.name().equals(navigation)) {
                    courseNavigationPredicate = cb.equal(courseNavigationPath, navigation);
                }
                if (!CourseCategoryEnum.all.name().equals(category)) {
                    courseCategoryPredicate = cb.equal(courseCategoryPath, category);
                }
                if (courseNavigationPredicate != null && courseCategoryPredicate == null) {
                    query.where(courseNavigationPredicate);
                }
                if (courseNavigationPredicate == null && courseCategoryPredicate != null) {
                    query.where(courseCategoryPredicate);
                }
                if (courseNavigationPredicate != null && courseCategoryPredicate != null) {
                    query.where(courseNavigationPredicate, courseCategoryPredicate);
                }
                return null;
            }
        };
        Page<Course> coursePage = courseRepository.findAll(specification, pageable);
        return coursePage;
    }

}

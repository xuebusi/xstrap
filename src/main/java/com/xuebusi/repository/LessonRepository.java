package com.xuebusi.repository;

import com.xuebusi.entity.Lesson;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

/**
 * 课程目录
 * Created by SYJ on 2017/10/9.
 */
public interface LessonRepository extends JpaRepository<Lesson, Integer> {

    /**
     * 根据课程id查询课程目录
     * @param courseId
     * @return
     */
    List<Lesson> findByCourseId(Integer courseId);
}

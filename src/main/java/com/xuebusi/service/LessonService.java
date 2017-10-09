package com.xuebusi.service;

import com.xuebusi.entity.Lesson;

import java.util.List;

/**
 * 课程目录
 * Created by SYJ on 2017/10/9.
 */
public interface LessonService {

    /**
     * 根据id查询课时
     * @param id
     * @return
     */
    Lesson findOne(Integer id);

    /**
     * 根据课程id查询课程目录
     * @param courseId
     * @return
     */
    List<Lesson> findByCourseId(Integer courseId);
}

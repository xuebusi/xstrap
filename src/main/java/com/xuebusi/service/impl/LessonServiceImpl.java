package com.xuebusi.service.impl;

import com.xuebusi.entity.Lesson;
import com.xuebusi.repository.LessonRepository;
import com.xuebusi.service.LessonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 课程目录
 * Created by SYJ on 2017/10/9.
 */
@Service
public class LessonServiceImpl implements LessonService {

    @Autowired
    private LessonRepository lessonRepository;

    @Override
    public Lesson findOne(Integer id) {
        return lessonRepository.findOne(id);
    }

    /**
     * 根据课程id查询课程目录
     * @param courseId
     * @return
     */
    @Override
    public List<Lesson> findByCourseId(Integer courseId) {
        return lessonRepository.findByCourseId(courseId);
    }
}

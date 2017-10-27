package com.xuebusi.service.impl;

import com.xuebusi.common.cache.BaseDataCacheUtils;
import com.xuebusi.entity.Teacher;
import com.xuebusi.repository.TeacherRepository;
import com.xuebusi.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * 讲师
 * Created by SYJ on 2017/10/8.
 */
@Service
public class TeacherServiceImpl implements TeacherService {

    @Autowired
    private TeacherRepository teacherRepository;

    /**
     * 查询讲师信息
     * @param id
     * @return
     */
    @Override
    public Teacher findOne(Integer id) {
        Teacher teacher = BaseDataCacheUtils.getTeacherCacheMap().get(String.valueOf(id));
        if (teacher != null) {
            return teacher;
        }
        return teacherRepository.findOne(id);
    }

    /**
     * 查询所有讲师信息
     * @return
     */
    @Override
    public List<Teacher> findAll() {
        Collection<Teacher> teachers = BaseDataCacheUtils.getTeacherCacheMap().values();
        if (teachers != null && teachers.size() > 0) {
            return (List<Teacher>) teachers;
        }
        return teacherRepository.findAll();
    }

}

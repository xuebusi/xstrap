package com.xuebusi.service.impl;

import com.xuebusi.entity.Teacher;
import com.xuebusi.repository.TeacherRepository;
import com.xuebusi.service.TeacherService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
        return teacherRepository.findOne(id);
    }

}

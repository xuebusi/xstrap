package com.xuebusi.service;

import com.xuebusi.entity.Teacher;

import java.util.List;

/**
 * 讲师
 * Created by SYJ on 2017/10/8.
 */
public interface TeacherService {

    /**
     * 根据id查询讲师信息
     * @param id
     * @return
     */
    Teacher findOne(Integer id);

    /**
     * 查询所有讲师信息
     * @return
     */
    List<Teacher> findAll();

}

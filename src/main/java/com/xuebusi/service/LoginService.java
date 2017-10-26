package com.xuebusi.service;

import com.xuebusi.entity.LoginInfo;

import java.util.List;

/**
 * 用户
 * Created by SYJ on 2017/10/15.
 */
public interface LoginService {

    /**
     * 根据id查询用户
     * @param id
     * @return
     */
    LoginInfo findOne(Integer id);

    /**
     * 查询所有用户
     * @return
     */
    List<LoginInfo> findAll();

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    LoginInfo findByUsername(String username);

    /**
     * 保存注册信息
     * @param loginInfo
     * @return
     */
    LoginInfo save(LoginInfo loginInfo);
}

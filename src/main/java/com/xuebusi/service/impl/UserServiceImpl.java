package com.xuebusi.service.impl;

import com.xuebusi.entity.User;
import com.xuebusi.repository.UserRepository;
import com.xuebusi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

/**
 * 用户
 * Created by SYJ on 2017/10/15.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User findOne(Integer id) {
        return userRepository.findOne(id);
    }

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    @Override
    public User findByUsername(String username) {
        return userRepository.findByUsername(username);
    }

    /**
     * 保存个人设置
     * @param user
     * @return
     */
    @Override
    public User save(User user) {
        return userRepository.save(user);
    }
}

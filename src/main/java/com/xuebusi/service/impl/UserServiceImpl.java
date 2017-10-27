package com.xuebusi.service.impl;

import com.xuebusi.common.cache.BaseDataCacheUtils;
import com.xuebusi.entity.User;
import com.xuebusi.repository.UserRepository;
import com.xuebusi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Collection;
import java.util.List;

/**
 * 用户基础信息
 * Created by SYJ on 2017/10/15.
 */
@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserRepository userRepository;

    @Override
    public User findOne(Integer id) {
        Collection<User> users = BaseDataCacheUtils.getUserCacheMap().values();
        for (User user : users) {
            if (id == user.getId()) {
                return user;
            }
        }
        return userRepository.findOne(id);
    }

    @Override
    public List<User> findAll() {
        Collection<User> users = BaseDataCacheUtils.getUserCacheMap().values();
        if (users != null && users.size() > 0) {
            return (List<User>) users;
        }
        return userRepository.findAll();
    }

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    @Override
    public User findByUsername(String username) {
        User user = BaseDataCacheUtils.getUserCacheMap().get(username);
        if (user != null) {
            return user;
        }
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

package com.xuebusi.service.impl;

import com.xuebusi.common.cache.InitDataCacheMap;
import com.xuebusi.entity.LoginInfo;
import com.xuebusi.entity.User;
import com.xuebusi.repository.LoginRepository;
import com.xuebusi.repository.UserRepository;
import com.xuebusi.service.LoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import java.util.Collection;
import java.util.List;

/**
 * 用户
 * Created by SYJ on 2017/10/15.
 */
@Service
@Transactional(readOnly = true)
public class LoginServiceImpl implements LoginService {

    @Autowired
    private LoginRepository loginRepository;

    @Autowired
    private UserRepository userRepository;

    @Override
    public LoginInfo findOne(Integer id) {
        Collection<LoginInfo> loginInfos = InitDataCacheMap.getLoginInfoCacheMap().values();
        for (LoginInfo loginInfo : loginInfos) {
            if (id == loginInfo.getId()) {
                return loginInfo;
            }
        }
        return loginRepository.findOne(id);
    }

    @Override
    public List<LoginInfo> findAll() {
        Collection<LoginInfo> loginInfos = InitDataCacheMap.getLoginInfoCacheMap().values();
        if (loginInfos != null && loginInfos.size() > 0) {
            return (List<LoginInfo>) loginInfos;
        }
        return loginRepository.findAll();
    }

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    @Override
    public LoginInfo findByUsername(String username) {
        //先查缓存
        LoginInfo loginInfo = InitDataCacheMap.getLoginInfoCacheMap().get(username);
        if (loginInfo != null) {
            return loginInfo;
        }
        return loginRepository.findByUsername(username);
    }

    /**
     * 保存注册信息
     * @param loginInfo
     * @return
     */
    @Transactional(readOnly = false)
    public LoginInfo save(LoginInfo loginInfo) {
        LoginInfo newLoginInfo = loginRepository.save(loginInfo);
        InitDataCacheMap.getLoginInfoCacheMap().put(newLoginInfo.getUsername(), newLoginInfo);

        //同时生成一条用户基本信息
        User user = new User();
        user.setUsername(loginInfo.getUsername());
        User newUser = userRepository.save(user);
        InitDataCacheMap.getUserCacheMap().put(newUser.getUsername(), newUser);
        return newLoginInfo;
    }
}

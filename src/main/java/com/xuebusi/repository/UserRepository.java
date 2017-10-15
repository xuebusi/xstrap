package com.xuebusi.repository;

import com.xuebusi.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * 用户
 * Created by SYJ on 2017/10/15.
 */
public interface UserRepository extends JpaRepository<User, Integer> {

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    User findByUsername(String username);
}

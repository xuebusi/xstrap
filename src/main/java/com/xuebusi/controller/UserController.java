package com.xuebusi.controller;

import com.xuebusi.common.cache.InitDataCacheMap;
import com.xuebusi.entity.Course;
import com.xuebusi.entity.LoginInfo;
import com.xuebusi.entity.User;
import com.xuebusi.service.CourseService;
import com.xuebusi.service.LoginService;
import com.xuebusi.service.UserService;
import com.xuebusi.vo.UserVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Map;

/**
 * 用户信息
 * Created by SYJ on 2017/10/30.
 */
@Controller
@RequestMapping(value = "/user")
public class UserController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private LoginService loginService;

    @Autowired
    private CourseService courseService;

    /**
     * 用户信息页面
     * @param id 用户id
     * @param map
     * @return
     */
    @RequestMapping(value = "/{id}")
    public ModelAndView toUser(@PathVariable("id") Integer id, Map<String, Object> map) {
        //查询讲师所教课程
        List<Course> courseList = courseService.findBycourseTeacherId(id);
        //查询用户资料
        UserVo userVo = this.getUserVo(id);
        map.put("user", userVo);
        map.put("courseList", courseList);
        return new ModelAndView("/user/teach", map);
    }

    /**
     * 获取用户资料
     * @param id 用户id(课程讲师id)
     * @return
     */
    private UserVo getUserVo(Integer id) {
        UserVo userVo = new UserVo();
        User user = userService.findOne(id);
        if (user != null) {
            BeanUtils.copyProperties(user, userVo);
            LoginInfo loginInfo = loginService.findByUsername(user.getUsername());
            if (loginInfo != null) {
                userVo.setTitleImgUrl(loginInfo.getTitleUrl());//头像
            }
        }
        return userVo;
    }
}

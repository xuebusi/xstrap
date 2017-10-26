package com.xuebusi.controller;

import com.xuebusi.common.utils.MD5Utils;
import com.xuebusi.entity.User;
import com.xuebusi.service.UserService;
import com.xuebusi.vo.UserFormVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Map;

/**
 * Created by SYJ on 2017/10/14.
 */
@Controller
@RequestMapping
public class UserController {

    @Autowired
    private UserService userService;

    /**
     * 跳转到注册页
     * @param map
     * @return
     */
    @GetMapping(value = "/register")
    public ModelAndView register(HttpServletRequest request, Map<String, Object> map) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            map.put("usre", user);
            return new ModelAndView(new RedirectView("/"), map);
        }
        return new ModelAndView("/user/register", map);
    }

    /**
     * 跳转到登录页
     * @param map
     * @return
     */
    @GetMapping(value = "/login")
    public ModelAndView login(HttpServletRequest request, Map<String, Object> map) {
        User user = (User) request.getSession().getAttribute("user");
        if (user != null) {
            //map.put("usre", user);
            //return new ModelAndView(new RedirectView("/"), map);
            return new ModelAndView(new RedirectView("/my/courses/learning"));
        }
        return new ModelAndView("/user/login", map);
    }

    /**
     * 登录成功后的loading页
     * @param map
     * @return
     */
    /*@GetMapping(value = "/login/loading")
    public ModelAndView loginLoading(Map<String, Object> map) {
        return new ModelAndView("/user/login-loading", map);
    }*/

    /**
     * 跳转到密码重置页
     * @param map
     * @return
     */
    @GetMapping(value = "/reset")
    public ModelAndView reset(Map<String, Object> map) {
        return new ModelAndView("/user/reset", map);
    }

    /**
     * 退出登录
     * @param request
     * @param map
     * @return
     */
    @GetMapping(value = "/logout")
    public ModelAndView logout(HttpServletRequest request, Map<String, Object> map) {
        HttpSession session = request.getSession();
        if (session != null) {
            session.removeAttribute("user");
        }
        return new ModelAndView("/user/login", map);
    }

    @PostMapping(value = "/register/captcha/check")
    public String check() {

        return "";
    }

    /**
     * 手机注册获取验证码
     * @return
     */
    @PostMapping(value = "/register/captcha/modal")
    public String captcha() {
        return "";
    }

    /**
     * 用户登录
     * @param username 用户名
     * @param password 密码
     * @return
     */
    @PostMapping(value = "/login")
    public ModelAndView login(@RequestParam("username")String username,
                             @RequestParam("password")String password,
                             HttpServletRequest request, Map<String, Object> map) {
        ModelAndView modelAndView = new ModelAndView();
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user != null){
            //modelAndView.setViewName("forward:/my/courses/learning");
            //return modelAndView;
            return new ModelAndView(new RedirectView("/my/courses/learning"), map);
        }
        User userFromDb = userService.findByUsername(username);
        if (userFromDb != null && userFromDb.getPassword().equals(MD5Utils.md5(password))) {
            //userFromDb.setRememberme(rememberme);
            //userService.save(userFromDb);
            session.setAttribute("user", userFromDb);
            map.put("user", userFromDb);
            //return new ModelAndView("/user/login-loading", map);
            //return new ModelAndView("/user/settings", map);
            return new ModelAndView(new RedirectView("/my/courses/learning"), map);
            //modelAndView.setViewName("forward:/my/courses/learning");
            //return modelAndView;
        }
        map.put("errMsg", "用户名或密码不正确");
        return new ModelAndView("/user/login", map);
    }

    /**
     * 用户注册
     * @param username
     * @param password
     * @param request
     * @param map
     * @return
     */
    @PostMapping(value = "/u/register")
    public ModelAndView register(@RequestParam("username")String username,
                                   @RequestParam("password")String password,
                                   HttpServletRequest request,
                                   Map<String, Object> map) {
        User userFromDb = userService.findByUsername(username);
        if (userFromDb == null) {
            User user = new User();
            user.setUsername(username);
            user.setPassword(MD5Utils.md5(password));
            userService.save(user);
            map.put("successMsg", "注册成功，请登录！");
            return new ModelAndView("/user/login", map);
        }
        map.put("errMsg", "用户名已存在，请重新输入！");
        return new ModelAndView("/user/register", map);
    }

    /**
     * 基础信息
     * @param map
     * @return
     */
    @GetMapping(value = "/settings")
    public ModelAndView settings(HttpServletRequest request, Map<String, Object> map) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user != null) {
            User userFromDb = userService.findOne(user.getId());
            map.put("user", userFromDb);
            return new ModelAndView("/user/settings", map);
        }
        return new ModelAndView(new RedirectView("redirect:/user/login"));
    }

    /**
     * 保存基础信息
     * @param map
     * @return
     */
    @PostMapping(value = "/settings")
    public ModelAndView saveSettings(UserFormVo userFormVo, HttpServletRequest request, Map<String, Object> map) {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");
        if (user != null) {
            User userFromDb = userService.findOne(user.getId());
            BeanUtils.copyProperties(userFormVo, userFromDb);
            User newUser = userService.save(userFromDb);
            map.put("successMsg", "基础信息保存成功");
            map.put("user", newUser);
            return new ModelAndView("/user/settings", map);
        }
        return new ModelAndView(new RedirectView("redirect:/user/login"));
    }


    /**
     * 实名认证
     * @param map
     * @return
     */
    @GetMapping(value = "/settings/approval/submit")
    public ModelAndView approval(Map<String, Object> map) {

        return new ModelAndView("/approval", map);
    }

    /**
     * 安全设置
     * @param map
     * @return
     */
    @GetMapping(value = "/settings/security")
    public ModelAndView security(Map<String, Object> map) {

        return new ModelAndView("/security", map);
    }

    /**
     * 邮箱设置
     * @param map
     * @return
     */
    @GetMapping(value = "/settings/email")
    public ModelAndView email(Map<String, Object> map) {

        return new ModelAndView("/email", map);
    }
    /**
     * 第三方登录
     * @param map
     * @return
     */
    @GetMapping(value = "/settings/binds")
    public ModelAndView binds(Map<String, Object> map) {

        return new ModelAndView("/binds", map);
    }

    /**
     * 绑定手机
     * @param map
     * @return
     */
    @GetMapping(value = "/settings/bind_mobile")
    public ModelAndView bindMobile(Map<String, Object> map) {

        return new ModelAndView("/bind_mobile", map);
    }
}

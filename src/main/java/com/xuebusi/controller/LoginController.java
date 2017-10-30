package com.xuebusi.controller;

import com.xuebusi.common.utils.MD5Utils;
import com.xuebusi.entity.LoginInfo;
import com.xuebusi.entity.User;
import com.xuebusi.service.LoginService;
import com.xuebusi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 登录
 * Created by SYJ on 2017/10/14.
 */
@Controller
@RequestMapping
public class LoginController extends BaseController {

    @Autowired
    private LoginService loginService;

    @Autowired
    private UserService userService;

    /**
     * 跳转到注册页
     * @param map
     * @return
     */
    @GetMapping(value = "/register")
    public ModelAndView register(HttpServletRequest request, Map<String, Object> map) {
        if (this.getUserInfo() != null) {
            return new ModelAndView(new RedirectView("/my/courses/learning"));
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
        if (this.getUserInfo() != null) {
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
        request.getSession().invalidate();
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
        if (this.getUserInfo() != null){
            return new ModelAndView(new RedirectView("/my/courses/learning"), map);
        }

        LoginInfo loginInfo = loginService.findByUsername(username);

        if (loginInfo != null && loginInfo.getPassword().equals(MD5Utils.md5(password))) {
            User user = userService.findByUsername(username);
            //登录后将用户信息放入Session
            request.getSession().setAttribute("user", user);
            map.put("user", user);
            return new ModelAndView(new RedirectView("/my/courses/learning"), map);
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

        if (this.getUserInfo() != null) {
            return new ModelAndView(new RedirectView("/my/courses/learning"), map);
        }

        if (loginService.findByUsername(username) != null) {
            map.put("errMsg", "用户名已存在，请重新输入！");
            return new ModelAndView("/user/register", map);
        }

        //保存注册用户
        LoginInfo loginInfo = new LoginInfo();
        loginInfo.setUsername(username);
        loginInfo.setPassword(MD5Utils.md5(password));
        loginService.save(loginInfo);

        map.put("successMsg", "注册成功，请登录！");
        return new ModelAndView("/user/login", map);
    }

}

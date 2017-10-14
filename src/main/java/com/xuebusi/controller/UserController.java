package com.xuebusi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.Map;

/**
 * Created by SYJ on 2017/10/14.
 */
@Controller
@RequestMapping
public class UserController {

    @GetMapping(value = "/register")
    public ModelAndView register(Map<String, Object> map) {


        return new ModelAndView("/user/register", map);
    }

    @GetMapping(value = "/login")
    public ModelAndView login(Map<String, Object> map) {


        return new ModelAndView("/user/login", map);
    }

    @GetMapping(value = "/reset")
    public ModelAndView reset(Map<String, Object> map) {


        return new ModelAndView("/user/reset", map);
    }

    @GetMapping(value = "/setting")
    public ModelAndView setting(Map<String, Object> map) {


        return new ModelAndView("/user/setting", map);
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
     * 登录
     * @param map
     * @return
     */
    @PostMapping(value = "/login_check")
    public ModelAndView loginCheck(Map<String, Object> map) {

        return new ModelAndView("/setting", map);
    }

}

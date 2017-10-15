package com.xuebusi.controller;

import com.xuebusi.entity.User;
import com.xuebusi.service.UserService;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.ws.rs.FormParam;
import java.util.Map;

/**
 * Created by SYJ on 2017/10/14.
 */
@Controller
@RequestMapping
public class UserController {

    @Autowired
    private UserService userService;

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

    /**
     * 登出
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
     * 登录
     * @param username 用户名
     * @param password 密码
     * @param rememberMe 记住我
     * @return
     */
    @PostMapping(value = "/login_check")
    public ModelAndView loginCheck(@RequestParam("username")String username,
                             @RequestParam("password")String password,
                             @RequestParam("rememberme")String rememberMe,
                                   HttpServletRequest request,
                             Map<String, Object> map) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null){
            map.put("user", (User)session.getAttribute("user"));
            return new ModelAndView("/user/settings", map);
        }
        User user = userService.findByUsername(username);
        if (user != null) {
            session.setAttribute("user", user);
            map.put("user", user);
            return new ModelAndView("/user/settings", map);
        }
        return new ModelAndView("/user/login");
    }

    /**
     * 基础信息
     * @param map
     * @return
     */
    @GetMapping(value = "/settings")
    public ModelAndView settings(HttpServletRequest request, Map<String, Object> map) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {
            User user = (User) session.getAttribute("user");
            User newUser = userService.findOne(user.getId());
            map.put("user", newUser);
            return new ModelAndView("/user/settings", map);
        }
        return new ModelAndView(new RedirectView("redirect:/user/login"));
    }

    /**
     * 保存基础信息
     * @param map
     * @return
     */
    @PostMapping(value = "/settings/save")
    public ModelAndView saveSettings(User userForm, HttpServletRequest request, Map<String, Object> map) {
        HttpSession session = request.getSession();
        if (session.getAttribute("user") != null) {

            User user = new User();
            //如果id为空, 说明是新增
            if (!StringUtils.isEmpty(userForm.getId())) {
                user = userService.findOne(userForm.getId());
            }
            BeanUtils.copyProperties(userForm, user);
            userService.save(user);
            return new ModelAndView(new RedirectView("/settings"));
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

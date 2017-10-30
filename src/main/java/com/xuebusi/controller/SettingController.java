package com.xuebusi.controller;

import com.xuebusi.entity.User;
import com.xuebusi.enums.BindTypeEnum;
import com.xuebusi.service.UserService;
import com.xuebusi.vo.UserFormVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * 个人设置
 * Created by SYJ on 2017/10/28.
 */
@Controller
@RequestMapping(value = "/settings")
public class SettingController extends BaseController {

    @Autowired
    private UserService userService;

    /**
     * 基础信息页面
     *
     * @param map
     * @return
     */
    @GetMapping
    public ModelAndView settings(HttpServletRequest request, Map<String, Object> map) {
        if (this.getUserInfo() != null) {
            //显示最新基础信息
            User user = userService.findByUsername(this.getUserInfo().getUsername());
            request.getSession().setAttribute("user", user);
            map.put("user", user);
            return new ModelAndView("/settings/settings", map);
        }
        return new ModelAndView(new RedirectView("redirect:/user/login"));
    }

    /**
     * 保存基础信息
     *
     * @param map
     * @return
     */
    @PostMapping
    public ModelAndView saveSettings(UserFormVo userFormVo, HttpServletRequest request, Map<String, Object> map) {
        if (this.getUserInfo() != null && this.getUserInfo().getUsername().equals(userFormVo.getUsername())) {
            User user = userService.findByUsername(userFormVo.getUsername());
            if (user == null) {
                user = new User();
            }
            if (StringUtils.isEmpty(userFormVo.getUsername())) {
                user.setUsername(this.getUserInfo().getUsername());
            }
            BeanUtils.copyProperties(userFormVo, user);
            User userFromDb = userService.save(user);
            map.put("successMsg", "基础信息保存成功");
            map.put("user", userFromDb);//回显最新数据
            return new ModelAndView("/settings/settings", map);
        }
        return new ModelAndView(new RedirectView("redirect:/user/login"));
    }

    /**
     * 头像设置页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/avatar")
    public ModelAndView avatar(Map<String, Object> map) {

        return new ModelAndView("/settings/avatar", map);
    }

    /**
     * 上传头像
     *
     * @param map
     * @return
     */
    @PostMapping(value = "/avatar")
    public ModelAndView uploadAvatar(Map<String, Object> map) {

        return new ModelAndView("/settings/avatar", map);
    }

    /**
     * 实名认证页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/approval")
    public ModelAndView approval(Map<String, Object> map) {

        return new ModelAndView("/settings/approval", map);
    }

    /**
     * 实名认证提交
     * @param map
     * @return
     */
    @PostMapping(value = "/approval")
    public ModelAndView approvalSubmit(Map<String, Object> map) {

        //跳转到认证中页面
        return new ModelAndView("/settings/approval-waiting", map);
    }

    /**
     * 安全设置页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/security")
    public ModelAndView security(Map<String, Object> map) {

        return new ModelAndView("/settings/security", map);
    }

    /**
     * 邮箱设置页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/email")
    public ModelAndView email(Map<String, Object> map) {

        return new ModelAndView("/settings/email", map);
    }

    /**
     * 邮箱设置提交
     * 1.输入新的邮箱和登录密码提交表单，如果密码不正确则提示"密码不正确，请重试。"，
     *    如果输入的不是新的邮箱则提示"新邮箱，不能跟当前邮箱一样。"
     * 2.提示"请到邮箱 xxxxx@qq.com中接收确认邮件，并点击确认邮件中的链接完成修改"
     * 3.登录邮箱点击链接跳转到 /help/email-confirm.ftl 页面
     * 4.输入登录密码，如果密码不对提示"密码不正确，请重试。",若成功则跳转到网站首页
     * 5.进入邮箱设置页面，当前登录邮箱显示 "xxxxx@qq.com (已验证)"
     * @param map
     * @return
     */
    @PostMapping(value = "/email")
    public ModelAndView emailSubmit(Map<String, Object> map) {

        //发送邮件后，跳转到设置新邮箱页面
        return new ModelAndView("/settings/email-confirm", map);
    }

    /**
     * 设置新邮箱提交表单
     * @param map
     * @return
     */
    @PostMapping(value = "/newemail")
    public ModelAndView settingNewEmail(Map<String, Object> map) {

        return new ModelAndView("/settings/email-confirm", map);
    }

    /**
     * 第三方登录页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/binds")
    public ModelAndView toBinds(Map<String, Object> map) {

        return new ModelAndView("/settings/binds", map);
    }

    /**
     * 绑定(第三方登录:微博、QQ、微信)
     *
     * 未绑定时显示"绑定"按钮(图标下方会显示未绑定的状态),
     * 已绑定时显示"已绑定按钮";
     * 点击绑定按钮,跳转到第三方登录页面,输入第三方的账号和密码登录,
     * 登录成功会(即绑定成功)后会跳转回第三方登录页面,在上方提示"账号绑定成功".
     *
     * @param map
     * @return
     */
    @PostMapping(value = "/binds/{bindType}")
    public ModelAndView bind(@PathVariable("bindType") String bindType, Map<String, Object> map) {
        if (BindTypeEnum.weibo.name().equals(bindType)) {
            //微博绑定
        } else if (BindTypeEnum.qq.name().equals(bindType)) {
            //QQ绑定
        } else if (BindTypeEnum.weixin.name().equals(bindType)){
            //微信绑定
        } else {
            //其他
        }
        return new ModelAndView("/settings/binds", map);
    }

    /**
     * 取消绑定(第三方登录:微博、QQ、微信)
     * @param map
     * @return
     */
    @PostMapping(value = "/unbind/{bindType}")
    public ModelAndView unbindWeibo(@PathVariable("bindType") String bindType, Map<String, Object> map) {
        if (BindTypeEnum.weibo.name().equals(bindType)) {
            //微博取消绑定
        } else if (BindTypeEnum.qq.name().equals(bindType)) {
            //QQ取消绑定
        } else if (BindTypeEnum.weixin.name().equals(bindType)){
            //微信取消绑定
        } else {
            //其他取消绑定
        }
        return new ModelAndView("/settings/binds", map);
    }

    /**
     * 绑定手机页面
     *
     * @param map
     * @return
     */
    @GetMapping(value = "/bind_mobile")
    public ModelAndView bindMobile(Map<String, Object> map) {

        return new ModelAndView("/bind_mobile", map);
    }
}

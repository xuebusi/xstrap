package com.xuebusi.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import java.util.Map;

/**
 * 私信
 * Created by SYJ on 2017/10/28.
 */
@Controller
@RequestMapping(value = "/message")
public class MessageController {

    /**
     * 私信列表页面
     * @param map
     * @return
     */
    @GetMapping
    public ModelAndView message(Map<String, Object> map) {

        return new ModelAndView("/message/message", map);
    }

    /**
     * 写私信页面
     * @param map
     * @return
     */
    @GetMapping(value = "/send")
    public ModelAndView toSend(Map<String, Object> map) {

        return new ModelAndView("/message/send", map);
    }

    /**
     * 私信提交
     * @param map
     * @return
     */
    @PostMapping(value = "/send")
    public ModelAndView sendMessage(Map<String, Object> map) {

        //私信发送成功之后重定向到私信列表页
        return new ModelAndView(new RedirectView("/message"), map);
    }

    /**
     * 私信详情页
     * @param map
     * @return
     */
    @GetMapping(value = "/conversation")
    public ModelAndView conversation(Map<String, Object> map) {

        return new ModelAndView("/message/conversation", map);
    }
}

package com.xuebusi.controller;

import com.xuebusi.common.result.JsonResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * 接口测试
 * Created by SYJ on 2017/10/28.
 */
@RestController
@RequestMapping(value = "/test")
public class TestController {

    /**
     * 测试
     * @return
     */
    @RequestMapping
    public String getTime(){
        Map<String, Object> map = new HashMap<>();
        map.put("1", System.currentTimeMillis());
        return new JsonResult().JsonSuccess(map);
    }
}

package com.xuebusi.controller;

import com.xuebusi.entity.Course;
import com.xuebusi.service.CourseService;
import com.xuebusi.vo.OrderCreateVo;
import com.xuebusi.vo.PayCenterInfoVo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Map;

/**
 * 订单
 * Created by SYJ on 2017/10/29.
 */
@Controller
@RequestMapping(value = "/order")
public class OrderController extends BaseController {

    private static final SimpleDateFormat dateFormart = new SimpleDateFormat("yyyyMMddHHssmm");

    @Autowired
    private CourseService courseService;

    /**
     * 订单确认页
     * /order/show?targetId=1024&targetType=course
     * @param map
     * @return
     */
    @GetMapping(value = "/show")
    public ModelAndView orderShow(@RequestParam("targetId") Integer targetId,
                                  @RequestParam("targetType") String targetType,
                                  Map<String, Object> map) {

        Course course = courseService.findOne(targetId);
        map.put("course", course);
        return new ModelAndView("/order/order-show", map);
    }



    /**
     * 支付中心页面
     * /pay/center?sn=C2017102922375190611&targetType=course
     * @param sn
     * @param targetType
     * @param map
     * @return
     */
    @PostMapping(value = "/create")
    public ModelAndView payCenter(OrderCreateVo orderCreateVo,
                                  @RequestParam(value = "sn", required = false) String sn,
                                  @RequestParam(value = "targetType", required = false) String targetType,
                                  Map<String, Object> map) {

        PayCenterInfoVo payCenterInfo = new PayCenterInfoVo();
        BeanUtils.copyProperties(orderCreateVo, payCenterInfo);

        //生成订单号, 例如: C2017102922375190611
        payCenterInfo.setOrderNo("C" + dateFormart.format(new Date()) + (int)((Math.random()*9+1)*10000));

        map.put("payCenterInfo", payCenterInfo);
        return new ModelAndView("/order/pay-center", map);
    }
}

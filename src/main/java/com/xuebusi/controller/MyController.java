package com.xuebusi.controller;

import com.xuebusi.entity.Course;
import com.xuebusi.entity.User;
import com.xuebusi.enums.OrderStatusEnum;
import com.xuebusi.service.CourseService;
import com.xuebusi.service.UserService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * 我的课程、我的订单
 * Created by SYJ on 2017/10/22.
 */
@Controller
@RequestMapping(value = "/my")
public class MyController extends BaseController {

    @Autowired
    private UserService userService;

    @Autowired
    private CourseService courseService;

    /**
     * 跳转到我的学习-即我的课程页
     * @param map
     * @return
     */
    @RequestMapping(value = {"", "/courses/learning"})
    public ModelAndView toMyCoursesLearning(HttpServletRequest request, Map<String, Object> map){
        User user = this.getUserInfo();
        if (user != null) {
            String courseIds = user.getCourseIds();
            if (StringUtils.isEmpty(courseIds)) {
                User userFromDb = userService.findOne(user.getId());
                if (userFromDb != null) {
                    courseIds = userFromDb.getCourseIds();
                }
            }
            List<Integer> idList = new ArrayList<>();
            List<Course> courseList = new ArrayList<>();
            if (StringUtils.isNotEmpty(courseIds)) {
                List<String> courseIdList = Arrays.asList(courseIds.split(","));
                if (courseIdList != null && courseIdList.size() > 0) {
                    for (String courseId : courseIdList) {
                        idList.add(Integer.parseInt(courseId));
                    }
                }
            }
            if (idList.size() > 0) {
                courseList = courseService.findByIdIn(idList);
            }
            map.put("courseList", courseList);
            return new ModelAndView("/my/courses/learning", map);
        }
        return new ModelAndView("/user/login", map);
    }

    /**
     * 继续学习-我的某个课程详情页
     * @param session
     * @param map
     * @return
     */
    /*@RequestMapping(value = "/courses/learning/mylesson")
    public ModelAndView toMyLesson(HttpSession session, Map<String, Object> map){

        return null;
    }*/

    /**
     * 账户中心-我的账户-我的金币页面
     * @return
     */
    @GetMapping(value = "/coin")
    public ModelAndView myCoin(){

        return new ModelAndView("/my/account/coin");
    }

    /**
     * 账户中心-我的账户-我的现金账单
     * @param map
     * @return
     */
    @RequestMapping(value = "/bill")
    public ModelAndView bill(@RequestParam(value = "lastHowManyMonths", required = false, defaultValue = "") String lastHowManyMonths,
                             Map<String, Object> map) {
        System.out.println("lastHowManyMonths=" + lastHowManyMonths);
        return new ModelAndView("/my/account/bill", map);
    }

    /**
     *  账户中心-我的订单
     * @param status    订单状态
     * @param lastHowManyMonths 最近几周或几个月
     * @param payWays   支付方式
     * @param map
     * @return
     */
    @RequestMapping(value = "/orders")
    public ModelAndView orders(@RequestParam(value = "status", required = false, defaultValue = "") String status,
                               @RequestParam(value = "lastHowManyMonths", required = false, defaultValue = "") String lastHowManyMonths,
                               @RequestParam(value = "payWays", required = false, defaultValue = "") String payWays,
                               Map<String, Object> map) {
        if (OrderStatusEnum.created.name().equals(status)) {
            //待付款订单
            return new ModelAndView("/my/orders/order-created", map);
        } else if (OrderStatusEnum.paid.name().equals(status)) {
            //已付款订单
            return new ModelAndView("/my/orders/order-paid", map);
        }
        //全部订单
        return new ModelAndView("/my/orders/order-all", map);
    }


}

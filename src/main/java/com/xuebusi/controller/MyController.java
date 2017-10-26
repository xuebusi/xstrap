package com.xuebusi.controller;

import com.xuebusi.entity.Course;
import com.xuebusi.entity.User;
import com.xuebusi.service.CourseService;
import com.xuebusi.service.LoginInfoService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/**
 * Created by SYJ on 2017/10/22.
 */
@Controller
@RequestMapping(value = "/my")
public class MyController extends BaseController {

    @Autowired
    private LoginInfoService loginInfoService;

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

}

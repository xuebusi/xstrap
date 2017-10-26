package com.xuebusi.controller;

import com.xuebusi.dto.LoginUserInfo;
import com.xuebusi.entity.Course;
import com.xuebusi.service.CourseService;
import com.xuebusi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by SYJ on 2017/10/22.
 */
@Controller
@RequestMapping(value = "/my")
public class MyController {

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
    public ModelAndView toMyCoursesLearning(HttpSession session, Map<String, Object> map){
        LoginUserInfo loginUserInfo = (LoginUserInfo)session.getAttribute("user");
        if (loginUserInfo != null) {
            //User userFromDb = userService.findOne(user.getId());
            String courseIds = loginUserInfo.getCourseIds();
            String[] courseIdArr = courseIds.split(",");
            List<Integer> idList = new ArrayList<>();
            for (String courseId : courseIdArr) {
                idList.add(Integer.parseInt(courseId));
            }
            List<Course> courseList = courseService.findByIdIn(idList);
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

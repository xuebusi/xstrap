package com.xuebusi.controller;

import com.xuebusi.entity.*;
import com.xuebusi.enums.CourseCategoryEnum;
import com.xuebusi.enums.CourseNavigationEnum;
import com.xuebusi.service.CourseDetailService;
import com.xuebusi.service.CourseService;
import com.xuebusi.service.LessonService;
import com.xuebusi.service.TeacherService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * 课程
 * Created by SYJ on 2017/10/8.
 */
@Controller
@RequestMapping(value="/course")
public class CourseController extends BaseController{

    private static SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

    @Autowired
    private CourseService courseService;

    @Autowired
    private CourseDetailService courseDetailService;

    @Autowired
    private TeacherService teacherService;

    @Autowired
    private LessonService lessonService;

    /**
     * 查询课程详情
     * @param id
     * @param map
     * @return
     */
    @GetMapping(value = "/{id}")
    public ModelAndView detail(@PathVariable("id") Integer id, Map<String, Object> map) {

        Course course = courseService.findOne(id);
        CourseDetail courseDetail = null;
        Teacher teacher = null;
        String courseNavigationStr = "";
        String courseCategoryStr = "";
        if (course != null) {
            courseNavigationStr = getCourseNavigationStr(course.getCourseNavigation());
            courseCategoryStr = getCourseCategoryStr(course.getCourseCategory());
            courseDetail = courseDetailService.findOne(course.getId());
            teacher = teacherService.findOne(course.getCourseTeacherId());
        }
        List<Lesson> lessonList = lessonService.findByCourseId(id);
        map.put("course", course);
        map.put("courseDetail", courseDetail);
        map.put("teacher", teacher);
        map.put("lessonCount", (lessonList != null && lessonList.size() > 0) ? lessonList.size() : 0);
        map.put("courseNavigationStr", courseNavigationStr);
        map.put("courseCategoryStr", courseCategoryStr);

        //当前用户是否已购买该课程
        User userInfo = this.getUserInfo();
        if (userInfo != null) {
            if (StringUtils.isNoneEmpty(userInfo.getCourseIds())) {
                String[] courseArr = userInfo.getCourseIds().split(",");
                for (String courseId : courseArr) {
                    if (courseId.equals(String.valueOf(id))){
                        return new ModelAndView("/my/courses/mylesson", map);
                    }
                }
            }
        }

        return new ModelAndView("/course/detail", map);
    }

    /**
     * 查询课程目录
     * @param courseId
     * @param map
     * @return
     */
    @GetMapping("/{courseId}/lesson")
    public ModelAndView lesson(@PathVariable("courseId") Integer courseId,HttpSession session, Map<String, Object> map) {

        Course course = courseService.findOne(courseId);
        Teacher teacher = null;
        String courseNavigationStr = "";
        String courseCategoryStr = "";
        if (course != null) {
            courseNavigationStr = getCourseNavigationStr(course.getCourseNavigation());
            courseCategoryStr = getCourseCategoryStr(course.getCourseCategory());
            map.put("courseIsEnd", course.getCourseEndTime().getTime() - System.currentTimeMillis() < 0 ? 1 : 0);//1课程更新完毕
            teacher = teacherService.findOne(course.getCourseTeacherId());
        }
        CourseDetail courseDetail = courseDetailService.findOne(courseId);
        List<Lesson> lessonList = lessonService.findByCourseId(courseId);
        map.put("course", course);
        map.put("courseDetail", courseDetail);
        map.put("teacher", teacher);
        map.put("lessonList", lessonList);
        map.put("lessonCount", (lessonList != null && lessonList.size() > 0) ? lessonList.size() : 0);
        map.put("courseNavigationStr", courseNavigationStr);
        map.put("courseCategoryStr", courseCategoryStr);

        if (this.getUserInfo() != null) {
            String courseIds = this.getUserInfo().getCourseIds();
            if (StringUtils.isNotEmpty(courseIds)) {
                List<String> idList = Arrays.asList(courseIds.split(","));
                if (idList != null && idList.size() > 0 && idList.contains(String.valueOf(courseId))) {
                    return new ModelAndView("/my/courses/mylesson", map);
                }
            }
        }

        return new ModelAndView("/course/lesson", map);
    }

    /**
     * 播放页
     * @param id        课程id
     * @param lessonId  课时id
     * @param map
     * @return
     */
    @GetMapping(value = "/{courseId}/play/{lessonId}")
    public ModelAndView play(
                            @PathVariable("courseId") Integer id,
                            @PathVariable("lessonId") Integer lessonId,
                            Map<String, Object> map) {

        Course course = courseService.findOne(id);
        Lesson lesson = lessonService.findOne(lessonId);
        map.put("course", course);
        map.put("lesson", lesson);
        return new ModelAndView("/course/kuplay", map);
    }

    /**
     * 获取课程分类对应的中文
     * @param courseCategory
     * @return
     */
    private String getCourseCategoryStr(String courseCategory) {
        if (CourseCategoryEnum.systematic.name().equals(courseCategory)) {
            return CourseCategoryEnum.systematic.getValue();
        } else if (CourseCategoryEnum.open.name().equals(courseCategory)) {
            return CourseCategoryEnum.open.getValue();
        } else if (CourseCategoryEnum.bootcamp.name().equals(courseCategory)) {
            return CourseCategoryEnum.bootcamp.getValue();
        }
        return "";
    }

    /**
     * 获取课程所属导航菜单对应的中文
     * @param courseNavigation
     * @return
     */
    private String getCourseNavigationStr(String courseNavigation) {
        if (CourseNavigationEnum.ai.name().equals(courseNavigation)) {
            return CourseNavigationEnum.ai.getValue();
        } else if (CourseNavigationEnum.basic.name().equals(courseNavigation)) {
            return CourseNavigationEnum.basic.getValue();
        } else if (CourseNavigationEnum.bigdata.name().equals(courseNavigation)) {
            return CourseNavigationEnum.bigdata.getValue();
        } else if (CourseNavigationEnum.da.name().equals(courseNavigation)) {
            return CourseNavigationEnum.da.getValue();
        }
        return "";
    }
}

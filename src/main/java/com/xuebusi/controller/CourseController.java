package com.xuebusi.controller;

import com.xuebusi.common.cache.InitDataCacheMap;
import com.xuebusi.entity.*;
import com.xuebusi.enums.CourseCategoryEnum;
import com.xuebusi.enums.CourseNavigationEnum;
import com.xuebusi.service.*;
import com.xuebusi.vo.UserVo;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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

    @Autowired
    private LoginService loginService;

    @Autowired
    private UserService userService;

    /**
     * 查询课程详情
     * @param id
     * @param map
     * @return
     */
    @GetMapping(value = "/{id}")
    public ModelAndView detail(@PathVariable("id") Integer id,
                               @RequestParam(value = "selectiveType", required = false, defaultValue = "2") String selectiveType,
                               Map<String, Object> map) {

        Course course = courseService.findOne(id);
        CourseDetail courseDetail = null;
        Teacher teacher = null;
        String courseNavigationStr = "";
        String courseCategoryStr = "";

        if (course != null) {
            courseNavigationStr = getCourseNavigationStr(course.getCourseNavigation());
            courseCategoryStr = getCourseCategoryStr(course.getCourseCategory());
            courseDetail = courseDetailService.findOne(course.getId());
            //teacher = teacherService.findOne(course.getCourseTeacherId());
        }
        List<Lesson> lessonList = lessonService.findByCourseId(id);
        //相关课程
        List<Course> courseRelevantList = this.getCourseRelevant(course.getId(), course.getCourseNavigation(), course.getCourseCategory());

        map.put("selectiveType", selectiveType);
        map.put("course", course);
        map.put("courseDetail", courseDetail);
        map.put("user", this.getUserVo(course.getCourseTeacherId()));
        map.put("lessonCount", (lessonList != null && lessonList.size() > 0) ? lessonList.size() : 0);
        map.put("courseNavigationStr", courseNavigationStr);
        map.put("courseCategoryStr", courseCategoryStr);
        map.put("courseRelevantList", courseRelevantList);

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
    public ModelAndView lesson(@PathVariable("courseId") Integer courseId,
                               @RequestParam(value = "selectiveType", required = false, defaultValue = "2") String selectiveType,
                               Map<String, Object> map) {

        Course course = courseService.findOne(courseId);
        Teacher teacher = null;
        String courseNavigationStr = "";
        String courseCategoryStr = "";
        if (course != null) {
            courseNavigationStr = getCourseNavigationStr(course.getCourseNavigation());
            courseCategoryStr = getCourseCategoryStr(course.getCourseCategory());
            map.put("courseIsEnd", course.getCourseEndTime().getTime() - System.currentTimeMillis() < 0 ? 1 : 0);//1课程更新完毕
            //teacher = teacherService.findOne(course.getCourseTeacherId());
        }
        CourseDetail courseDetail = courseDetailService.findOne(courseId);
        List<Lesson> lessonList = lessonService.findByCourseId(courseId);
        //相关课程
        List<Course> courseRelevantList = this.getCourseRelevant(course.getId(), course.getCourseNavigation(), course.getCourseCategory());

        map.put("selectiveType", selectiveType);
        map.put("course", course);
        map.put("courseDetail", courseDetail);
        map.put("user", this.getUserVo(course.getCourseTeacherId()));
        map.put("lessonList", lessonList);
        map.put("lessonCount", (lessonList != null && lessonList.size() > 0) ? lessonList.size() : 0);
        map.put("courseNavigationStr", courseNavigationStr);
        map.put("courseCategoryStr", courseCategoryStr);
        map.put("courseRelevantList", courseRelevantList);

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
     * 获取用户资料
     * @param id 用户id(课程讲师id)
     * @return
     */
    private UserVo getUserVo(Integer id) {
        UserVo userVo = new UserVo();
        User user = userService.findOne(id);
        if (user != null) {
            BeanUtils.copyProperties(user, userVo);
            LoginInfo loginInfo = loginService.findByUsername(user.getUsername());
            if (loginInfo != null) {
                userVo.setTitleImgUrl(loginInfo.getTitleUrl());//头像
            }
        }
        return userVo;
    }

    /**
     * 查询相关课程
     * @param id 课程主键
     * @param navigation 所属导航菜单
     * @param category 所属二级分类
     * @return
     */
    private List<Course> getCourseRelevant(Integer id, String navigation, String category) {
        List<Sort.Order> orders= new ArrayList<>();
        orders.add(new Sort.Order(Sort.Direction.DESC, "createTime"));
        PageRequest pageRequest = new PageRequest(0, 6, new Sort(orders));
        Page<Course> courseRelevantPage = courseService.findList(navigation, category, pageRequest);

        List<Course> courseList = courseRelevantPage.getContent();
        if (courseList != null && courseList.size() > 2) {
            List<Course> courseRelevantList = new ArrayList<>();
            for (Course course : courseList) {
                if (course.getId() != id) {
                    courseRelevantList.add(course);
                }
                if (courseRelevantList.size() == 3) {
                    return courseRelevantList;
                }
            }
        }

        return null;
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

package com.xuebusi.controller;

import com.xuebusi.entity.Course;
import com.xuebusi.mapper.CourseMapper;
import com.xuebusi.service.CourseService;
import org.apache.commons.lang3.StringUtils;
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

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * 首页
 * Created by SYJ on 2017/10/7.
 */
@Controller
@RequestMapping
public class IndexController extends BaseController {

    @Autowired
    private CourseService courseService;

    /**
     * 首页
     * @return
     */
    @GetMapping(value = {"", "/index", "/list", "/all", "/all/list"})
    public ModelAndView index() {
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("forward:/all/all/list");
        return modelAndView;
    }

    /**
     * 课程列表
     * @param navigation 导航菜单
     * @param category 二级分类
     * @param page 页码
     * @param size 条数
     * @param map
     * @return
     */
    @GetMapping("/{navigation}/{category}/list")
    public ModelAndView list(
            @PathVariable(value = "navigation") String navigation,
            @PathVariable(value = "category") String category,
            @RequestParam(value = "page", defaultValue = "1") Integer page,
            @RequestParam(value = "size", defaultValue = "12") Integer size,
            Map<String, Object> map) {
        size = size > 12 ? 12 : size;
        navigation = StringUtils.isBlank(navigation) ? "all" : navigation;
        category = StringUtils.isBlank(category) ? "all" : category;
        List<Sort.Order> orders= new ArrayList<>();
        orders.add(new Sort.Order(Sort.Direction.DESC, "createTime"));
        PageRequest pageRequest = new PageRequest(page - 1, size, new Sort(orders));
        Page<Course> coursePage = courseService.findList(navigation, category, pageRequest);

        map.put("coursePage", coursePage);
        map.put("currentPage", page);
        map.put("size", size);
        map.put("category", category);
        map.put("navigation", navigation);
        return new ModelAndView("/course/list", map);
    }

    /**
     * 单页跳转
     * @param tag
     * @param map
     * @return
     */
    @GetMapping(value = "/page/{tag}")
    public ModelAndView page(@PathVariable(value = "tag") String tag, Map<String, Object> map) {
        map.put("tag", tag);
        return new ModelAndView("/help/page", map);
    }
}

package com.xuebusi.mapper;

import com.xuebusi.entity.Course;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;

import java.util.List;

/**
 * Created by SYJ on 2017/10/7.
 */
@Mapper
public interface CourseMapper {

    /**
     * 所有课程列表
     * @return
     */
    @Select("select * from tb_course")
    @Results({
            @Result(column = "course_title", property = "courseTitle"),
            @Result(column = "course_img_url", property = "courseImgUrl"),
            @Result(column = "course_user_count", property = "courseUserCount"),
            @Result(column = "course_teacher_name", property = "courseTeacherName"),
            @Result(column = "course_price", property = "coursePrice"),
            @Result(column = "course_link", property = "courseLink"),
    })
    List<Course> list();

    Page<Course> findList(PageRequest request);
}

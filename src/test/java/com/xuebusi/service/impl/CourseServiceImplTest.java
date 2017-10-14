package com.xuebusi.service.impl;

import com.alibaba.fastjson.JSON;
import com.xuebusi.entity.Course;
import com.xuebusi.service.CourseService;
import junit.framework.TestCase;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Sort;
import org.springframework.test.context.junit4.SpringRunner;

/**
 * Created by SYJ on 2017/10/14.
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class CourseServiceImplTest extends TestCase {

    @Autowired
    private CourseService courseService;

    @Test
    public void testFindList() throws Exception {

    }
}
<!DOCTYPE html>
<!--[if lt IE 7]>
    <html class="lt-ie9 lt-ie8 lt-ie7">
    <![endif]-->
<!--[if IE 7]>
        <html class="lt-ie9 lt-ie8">
        <![endif]-->
<!--[if IE 8]>
            <html class="lt-ie9">
            <![endif]-->
<!--[if gt IE 8]>
                <!-->
<html lang="zh_CN">
<!--<![endif]-->
<!-- Mirrored from www.xuebusi.cn/course/1040/lesson/hflist/all by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:11:51 GMT -->
<!-- Added by HTTrack -->
<#include "../common/head.ftl">
<body class="course-dashboard-page" onbeforeunload="return CheckUnsave();">
<div class="es-wrap">
    <script type="text/javascript">
        function baidusearch(id) {
            var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url, "_blank");
        }

        function coursesearch(id) {
            var url = "/search" + "?q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url, "_self");
        }
    </script>
    <script>
        window.onload = function() {

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('../../../../index.html')[3].toString()
            var index = 0;
            var data = {
                '': aA[0].innerText,
                'ai': aA[1].innerText,
                'bigdata': aA[2].innerText,
                'da': aA[3].innerText,
                'basic': aA[4].innerText,
            }
            for (var i = 0; i < 5; i++) {
                if (aA[i].innerText == data[curCategory]) {
                    index = i;
                }
            }
            /*      aA[index].style.borderBottom = '2px solid red';
aA[index].style.color = 'red'*/

            var borderStr = document.createElement('div')
            borderStr.innerHTML = '<div style="border-bottom: 4px solid red; margin-top: -2px; color: red; border-radius: 4px"></div>'

            aLi[index].appendChild(borderStr)

        }
    </script>
    <#include "../common/header.ftl">
    <section class="course-detail-header before">
        <div class="container">
            <ol class="breadcrumb breadcrumb-o">
                <li><a href="/all/all/list">首页</a> </li>
                <li><a href="/${course.courseNavigation}/all/list">${courseNavigationStr}</a> </li>
                <li><a href="/${course.courseNavigation}/${course.courseCategory}/list">${courseCategoryStr}</a> </li>
                <li class="active hidden-xs hidden-sm">${course.courseTitle}</li>
            </ol>
            <div class="es-section clearfix ">
                <!--左侧图片-->
                <div class="course-img col-lg-offset-1" style="">
                    <img class="img-responsive" src="${course.courseImgUrl}" alt="${course.courseTitle}" />
                    <div class="tags"></div>
                </div>
                <!--左侧图片end-->
                <div class="course-info">
                    <h2 class="title hidden-xs hidden-sm" style="margin-top: 0; margin-bottom: 30px;">${course.courseTitle}</h2>
                    <div class="h5 hidden-xs hidden-sm">
                        <span>直播已结束</span>
                        <div class="hidden-xs hidden-sm" style="display: inline-block">
         <span class="es-share top"> <a class="dropdown-toggle" href="#" data-toggle="dropdown"> <p style="margin: 0;"><i class="es-icon es-icon-share" style="font-size: 16px"></i></p> </a> 
          <div class="dropdown-menu  js-social-share-params" data-title="零基础Python入门" data-summary="课程名称：《零基础Python入门》主讲老师：梁斌    资深算法工程师查尔斯特大学（Charles..." data-message="我正在学习《零基础Python入门》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/1040" data-picture="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg">
              <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/1040"><i class="es-icon es-icon-weixin"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>
          </div> </span>
                        </div>
                    </div>
                    <div class="h5 student-num hidden-lg hidden-xs hidden-sm">
                        <i class="es-icon es-icon-people"></i>${course.courseUserCount}人
                    </div>
                    <div class="teacher-name h5 hidden-xs hidden-sm">
                        老师：
                        <span>${course.courseTeacherName}</span>
                        <span> </span>
                    </div>
                    <div class="metas">
                        <p class="expiry-date h5 hidden-sm">学习有效期: 365天</p>
                    </div>
                    <!--价格-->
                    <p class="discount-price" style="margin: 20px 0 10px 0;"> <label style="color: #eb3b28; font-size: 18px;">￥</label> <span class="course-price-widget"> <span class="price"> ${course.coursePrice} </span> </span> </p>
                    <!--价格end-->
                    <!--判断会员身份是否到期-->
                    <!--判断会员身份是否到期end-->
                    <div class="hidden-xs hidden-sm">
                        <a class="btn btn-primary btn-lg" href="../../../../login.html?targetId=1040&amp;targetType=course"> 加入购买</a>
                    </div>
                </div>
                <div class="course-operation clearfix hidden-lg hidden-md">
                    <ul class="course-data clearfix ">
                        <li id="unfavorite-btn" data-url="/course/1040/unfavorite" style="display:none;"> <a href="javascript:;" class="color-primary"> <p><i class="es-icon es-icon-bookmark"></i> </p> <p>收藏</p> </a> </li>
                        <li id="favorite-btn" data-url="/course/1040/favorite"> <a href="javascript:;"> <p><i class="es-icon es-icon-bookmarkoutline"></i> </p> <p>收藏</p> </a> </li>
                        <li> <span class="es-share top"> <a class="dropdown-toggle" href="#" data-toggle="dropdown"> <p><i class="es-icon es-icon-share"></i></p> <p>分享</p> </a>
          <div class="dropdown-menu  js-social-share-params" data-title="零基础Python入门" data-summary="课程名称：《零基础Python入门》主讲老师：梁斌    资深算法工程师查尔斯特大学（Charles..." data-message="我正在学习《零基础Python入门》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/1040" data-picture="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg">
              <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/1040"><i class="es-icon es-icon-weixin"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>
          </div> </span> </li>
                    </ul>
                    <div class="buy">
                        <a class="btn btn-primary btn-lg" href="../../../../login.html?targetId=1040&amp;targetType=course"> 加入购买</a>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <div id="content-container" class="container" style="width: 100%; border-top: 1px solid #dedede; margin: 30px 0 0 0; background: #FAFAFA;">
        <div class="course-detail row" style="width: 90%;margin: 0 auto; max-width: 1200px;">
            <div class="col-lg-9 col-md-8  course-detail-main">
                <section class="es-section" style="padding: 0; min-height: 410px; background: #fff !important;">
                    <div class="nav-btn-tab">
                        <ul class="nav nav-tabs " role="tablist">
                            <li style="width: 25%;" role="presentation"><a href="/course/${course.id}">课程介绍</a> </li>
                            <li style="width: 25%;" role="presentation" class="active"><a href="all.html">课程目录 <small class="text-muted">( 104 )</small> </a> </li>
                            <li style="width: 25%;" role="presentation"><a href="../../type/notice.html"> 听课须知</a> </li>
                            <li style="width: 25%;" role="presentation"><a href="../../reviews/index.html">往期评论 <small class="text-muted">( 1 )</small></a> </li>
                        </ul>
                    </div>
                    <div class="course-detail-content">
                        <div class="es-piece">
                            <div class="piece-body">
                                <ul class="period-list" id="course-item-list">
                                    <li class="chapter clearfix">
                                        <i class="glyphicon glyphicon-option-vertical" style="position: absolute;top: 12px; color: red"></i>
                                        <span class="title"> 第1 章 ： 课前必读 </span>
                                        <span class="period-show">
                                            <i style="font-size: 30px; color: red; " class="es-icon es-icon-keyboardarrowup"></i>
                                        </span>
                                    </li>

                                    <a class="course-lesson" href="/course/${course.id}/play/3822">
                                        <li class="period lesson-item lesson-item-19621" data-id="19621" data-num="2">
                                            <span class="title"> 课时1：本课程PPT+代码打包下载方式</span>
                                            <!-- 视频图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/${course.id}/play/3822">
                                        <li class="period lesson-item lesson-item-19604" data-id="19604" data-num="3">
                                            <span class="title"> 课时2：同城微信学习群，欢迎加入</span>
                                            <!-- PPT图标 -->
                                            <span class="course-type">
                                              <i class="es-icon es-icon-pptclass" data-toggle="tooltip" data-placement="top" title="PPT课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/${course.id}/play/3822">
                                        <li class="period lesson-item lesson-item-19603" data-id="19603" data-num="4">
                                            <span class="title"> 课时3：1024G联盟成员专属资料</span>
                                            <!-- 图文图标 -->
                                            <span class="course-type">
                                              <i class="es-icon es-icon-graphicclass" data-toggle="tooltip" data-placement="top" title="图文课程" data-original-title="图文"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <li class="chapter clearfix">
                                        <i class="glyphicon glyphicon-option-vertical" style="position: absolute;top: 12px; color: red"></i>
                                        <span class="title"> 第2 章 ： 课程介绍 </span>
                                        <span class="period-show">
                                            <i style="font-size: 30px; color: red; " class="es-icon es-icon-keyboardarrowup"></i>
                                        </span>
                                    </li>

                                    <a class="course-lesson" href="/course/${course.id}/learn#lesson/3822">
                                        <li class="period lesson-item lesson-item-19313" data-id="19313" data-num="6">
                                            <span class="title"> 课时4：课程介绍</span>
                                            <!-- 右边图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/${course.id}/learn#lesson/3822">
                                    <li class="period lesson-item lesson-item-19312" data-id="19312" data-num="7">
                                        <span class="title"> 课时5：【课件】课程介绍</span>
                                        <!-- 右边图标 -->
                                        <span class="course-type">
                                            <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                        </span>
                                        <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                    </li>
                                    </a>

                                    <li class="chapter clearfix">
                                        <i class="glyphicon glyphicon-option-vertical" style="position: absolute;top: 12px; color: red"></i>
                                        <span class="title"> 第3 章 ： 程序设计基础 </span>
                                        <span class="period-show"><i style="font-size: 30px; color: red; " class="es-icon es-icon-keyboardarrowup"></i>
                                        </span>
                                    </li>

                                    <a class="course-lesson" href="/course/136/learn#lesson/3822">
                                        <li class="period lesson-item lesson-item-19314" data-id="19314" data-num="9">
                                            <span class="title"> 课时6：01_计算机与程序设计</span>
                                            <!-- 右边图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/136/learn#lesson/3822">
                                        <li class="period lesson-item lesson-item-19365" data-id="19365" data-num="10">
                                            <span class="title"> 课时7：【课件】01_计算机与程序设计</span>
                                            <!-- 右边图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/136/learn#lesson/3822">
                                        <li class="period lesson-item lesson-item-19315" data-id="19315" data-num="11">
                                            <span class="title"> 课时8：02_Python语言概述</span>
                                            <!-- 右边图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                    <a class="course-lesson" href="/course/136/learn#lesson/3822">
                                        <li class="period lesson-item lesson-item-19366" data-id="19366" data-num="12">
                                            <span class="title"> 课时9：【课件】02_Python语言概述</span>
                                            <!-- 右边图标 -->
                                            <span class="course-type">
                                                <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                            </span>
                                            <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                        </li>
                                    </a>

                                </ul>
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-lg-3 col-md-4  course-sidebar">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"> <i class="es-icon es-icon-assignmentind"></i> 授课教师 </h3>
                    </div>
                    <div class="panel-body">
                        <div class="media media-default" style="margin-bottom:15px;">
                            <div class="media-left" style="padding-bottom:0">
                                <a class=" js-user-card" href="../../../../user/29231.html" data-card-url="/user/29231/card/show" data-user-id="29231">
                                    <img class="avatar-md" src="${teacher.teacherPhotoUrl}" />
                                </a>
                            </div>
                            <div class="media-body" style="padding-top:0">
                                <div class="title">
                                    <a class="link-dark link-light" href="../../../../user/29231.html">${teacher.teacherName}</a>
                                </div>
                                <div class="content"></div>
                            </div>
                            <div style="border-top: solid 1px #eee; display: -webkit-box; -webkit-box-orient: vertical;
-webkit-line-clamp:3; overflow:hidden; text-overflow:ellipsis; margin-top: 18px">
                                <p class="teacherAbout">${teacher.teacherAbout}</p>
                            </div>
                            <div style="padding-top: 22px;">
                                <h4 class="freeListen"><a href="../../../../user/29231.html">免费试听老师课程</a> </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hidden jweixin-data" data-config="{" appid":"wxe9c061d2aed9ae09","timestamp":1507419865,"noncestr":"edusoho59d966d960706","jsapilist":["onmenusharetimeline","onmenushareappmessage","onmenushareqzone","onmenushareqq"],"string":"jsapi_ticket="sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVQgJZd0v-XRKaB1rh7XuNO_ytxPkjx6aZ8-2vUaJI0eGg&amp;noncestr=edusoho59d966d960706&amp;timestamp=1507419865&amp;url=http:\/\/www.xuebusi.cn\/course\/1040\/lesson\/hflist\/all&quot;,&quot;signature&quot;:&quot;7f68a8125e371eb5f3cc3e59cbb7e69f3a0b621b&quot;}&quot;" data-title="零基础Python入门" data-desc="课程名称：《零基础Python入门》主讲老师：梁斌资深算法工程师查尔斯特大学（CharlesSturtUniversity）计算机博士，从事机器学习、计算机视觉及模式识别等相关方向的研究，在计算机视觉等国际会议及期刊发表10余篇学术论文。现就职于澳大利亚某科学研究机构，负责算法改进及其产品化、数据分析处理及可视化。课程特色:本课程在系统讲解Python语言语法的同时介绍了从代码编写到数据分析的实用技巧，向Python语言的初学者展示了全新的编程语言学习路径。本课程一共设计了8个非常具有现代感的案例，从简单的汇率兑换到复杂的网络爬虫及数据分析，随着课程内容的深入不断激发学员学习Python语言的热情。学习方式：录播课程，开课即学在线反复观看，有效期1年课程大纲：第0课：课程介绍第1课：程序设计基础计算机与程序设计计算机组成计算机工作过程程序执行过程程序编写步骤Python语言概述Python语言发展历史Python语言特点Python应用举例Python开发环境配置安装Anaconda集成开发环境—IDLEPyCharm配置及简单应用运行方式：交互式和文件式第2课：案例1--汇率兑换汇率兑换1.0缩进，注释变量与命名，关键字字符串，赋值Input()与print()汇率兑换2.0分支语句ifelse汇率兑换3.0循环语句while汇率兑换4.0函数的定义与调用汇率兑换5.0匿名函数lambda第3课：案例2--分形树的绘制五角星绘制turtle库复习循环操作重复不同大小的五角星绘制复习函数与循环重复不同大小的五角星绘制递归函数分形树的绘制递归函数的应用第4课：案例3--基础代谢率(BMR)计算BMR计算1.0数值类型及运算BMR计算2.0复习分支语句、循环语句及input()函数BMR计算3.0字符串操作BMR计算4.0异常处理第5课：案例4--52周存钱挑战52周存钱挑战1.0复习循环语句及字符串操作52周存钱挑战2.0列表的概念及操作运用math库进行计算52周存钱挑战3.0循环语句forrange()函数52周存钱挑战4.0函数的参数传递变量的作用范围52周存钱挑战5.0时间处理库datetime第6课：案例5--判断第几天判断第几天1.0组合数据类型：元组判断第几天2.0复习列表的使用理解列表和元组的区别判断第几天3.0组合数据类型：集合理解列表与集合的区别判断第几天4.0映射数据类型：字典第7课：案例6--判断密码强弱判断密码强弱1.0复习字符串与分支结构判断密码强弱2.0循环的跳出操作：break与continue判断密码强弱3.0文件操作：写操作判断密码强弱4.0文件操作：读操作判断密码强弱5.0面向过程编程vs面向对象编程Python类的定义与使用判断密码强弱6.0面向对象编程的特点：封装、继承、多态第8课：案例7--模拟掷骰子模拟掷骰子1.0random模块模拟掷骰子2.0zip()函数的使用复习字典的使用模拟掷骰子3.0Python绘图库matplotlib散点图的简单绘制模拟掷骰子4.0简单的数据分析matplotlib绘制直方图模拟掷骰子5.0科学计算库NumPyNumPy中的向量化操作使用NumPy进行简单的数据分析第9课：案例8--空气质量指数(AQI)计算及分析AQI计算1.0复习分支结构、函数及异常处理AQI计算2.0JSON文件格式及操作AQI计算3.0CSV文件格式及写操作理解JSON与CSV的关联及差别AQI计算4.0CSV文件的读操作os模块AQI计算5.0什么是网络爬虫request库AQI计算6.0beautifulsoup库AQI计算7.0巩固beautifulsoup库AQI计算8.0完整网络爬虫的编写与实现AQI计算9.0Pandas基础利用Pandas进行数据处理及分析AQI计算10.0数据清洗利用Pandas进行数据可视化" data-link="all.html" data-img-url="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg" data-type="" data-data-url=""></div>
</div>
<#include "../common/footer.ftl">
<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">
<div id="login-modal" class="modal" data-url="/login/ajax"></div>
<div id="modal" class="modal"></div>
<div id="attachment-modal" class="modal"></div>
<script>
    var app = {};
    app.debug = false;
    app.version = '11.0.1.1';
    app.httpHost = '../../../../index.html';
    app.basePath = '//scb1a9q0-sb.qiqiuyun.net';
    app.theme = 'jianmo';
    app.themeGlobalScript = 'theme/global-script';
    app.jsPaths = {
        "common": "common",
        "theme": "\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js",
        "schoolgatebundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js",
        "discountbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js",
        "moneycardbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js",
        "chargecoinbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js",
        "homeworkbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js",
        "userimporterbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js",
        "gracefulthemebundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js",
        "questionplusbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js",
        "vipbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js",
        "couponbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js",
        "customwebbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js",
        "customadminbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js",
        "topxiawebbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js",
        "topxiaadminbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js",
        "classroombundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js",
        "materiallibbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js",
        "sensitivewordbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js",
        "permissionbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js",
        "orgbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"
    };

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {
        "api": {
            "weibo": {
                "key": "3735672790"
            },
            "qq": {
                "key": "101291257"
            },
            "douban": {
                "key": ""
            },
            "renren": {
                "key": ""
            }
        },
        "cloud": {
            "video_player": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf",
            "video_player_watermark_plugin": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf",
            "video_player_fingerprint_plugin": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"
        },
        "loading_img_path": "\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"
    };

    app.arguments = {};
    app.arguments = {
        "course_uri": "\/course\/1040"
    };

    app.scripts = ["course\/show", "default.html\/header.js", "course\/common", "common\/share-dropdown", "common\/weixin-share", "es-bar\/index", "notification\/notification"];

    app.uploadUrl = '../../../../file/upload.html';
    app.imgCropUrl = '../../../../file/img/crop.html';
    app.lessonCopyEnabled = '1';
    app.cloudSdkCdn = '';
    app.mainScript = '../../../../../scb1a9q0-sb.qiqiuyun.net/bundles/topxiaweb/js/appce61.js?11.0.1.1';
    app.lang = 'zh_CN';
</script>
<script src="../../../../../scb1a9q0-sb.qiqiuyun.net/bundles/bazingajstranslation/js/translator.mince61.js?11.0.1.1"></script>
<script src="../../../../translations/js"></script>
<script src="../../../../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs/2.2.1/seace61.js?11.0.1.1"></script>
<script src="../../../../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-style/1.0.2/seajs-stylece61.js?11.0.1.1"></script>
<script src="../../../../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-text/1.1.1/seajs-text.mince61.js?11.0.1.1"></script>
<script src="../../../../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs-global-configce61.js?11.0.1.1"></script>
<script>
    seajs.use(app.mainScript);
</script>
<!-- Mirrored from www.xuebusi.cn/course/1040/lesson/hflist/all by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:11:54 GMT -->
</body>
</html>
<!DOCTYPE html>
<!-- saved from url=(0045)http://www.chinahadoop.cn/my/courses/learning -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../../common/head.ftl">
<body class="my-course" onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement"
     style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

<div class="es-wrap">

    <script type="text/javascript">
        /*function baidusearch(id) {
          var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + encodeURIComponent(document.getElementById(id).value);
          window.open(url,"_blank");
        }*/
        function coursesearch(id) {
            var url = "/search" + "?q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url, "_self");
        }

        function baidusearch() {
            var sWords = window.location.href.split('=')[1] || '';
            var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + sWords;
            window.open(url, "_blank");
        }
    </script>
    <script>
        window.onload = function () {

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('/')[3].toString()
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
    <#include "../../common/header.ftl">

    <div id="content-container" class="container">


        <div class="row row-3-9 my-layout">
            <div class="col-md-3">
                <div class="sidenav">

                    <ul class="list-group">
                        <li class="list-group-heading">我的学习</li>
                        <li class="list-group-item  active ">
                            <a href="/my/courses/learning">我的课程</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/livecourses/learing">我的直播课表</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/learn/classrooms">我的学习数据</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/questions">我的问答</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/discussions">我的话题</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/notebooks">我的笔记</a>
                        </li>

                        <li class="list-group-item ">
                            <a href="/my/homework/list">我的作业</a>
                        </li>

                        <li class="list-group-item">
                            <a href="/my/quiz">我的考试</a>
                        </li>
                        <li class="list-group-item">
                            <a href="/my/group">我的小组</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="col-md-9">
                <div class="panel panel-default panel-col">
                    <div class="panel-heading">我的课程</div>
                    <div class="panel-body">
                        <ul class="nav nav-pills">
                            <li class="active"><a href="/my/courses/learning">学习中</a></li>
                            <li><a href="/my/courses/learned">已学完</a></li>
                            <li><a href="/my/courses/favorited">收藏</a></li>
                        </ul>
                        <style>
                            .classroomPicture {

                                width: 24px;
                                height: 24px;
                            }
                        </style>
                        <ul class="course-grids">
                            <#list courseList as course>
                            <li class="course-grid">
                                <a href="${course.courseLink}" class="grid-body">
                                    <img src="${course.courseImgUrl}" class="img-responsive thumb">
                                    <span class="course-label"></span>
                                    <span class="title">${course.courseTitle}</span>
                                    <div class="learn-status">
                                        <div class="mbm">
                                        </div>
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-success" style="width: 0%;"></div>
                                        </div>
                                        <div class="action"><span class="btn btn-primary btn-sm">继续学习</span></div>
                                    </div>
                                </a>
                            </li>
                            </#list>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
<#include "../../common/footer.ftl">
<#include "../../common/sidebar.ftl">
<#include "../../common/login-modal.ftl">
</body>
</html>
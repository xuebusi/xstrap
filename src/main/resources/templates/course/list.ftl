<!DOCTYPE html>
<!-- saved from url=(0026)http://www.xuebusi.cn/ -->
<html lang="zh_CN">
<!--<![endif]-->
<#include "../common/head.ftl">
<body class="course-list-page" onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>
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
    <#include "../common/header.ftl">
    <div id="content-container" class="container">
        <#include "../common/filter.ftl">
        <div class="course-list">
            <div class="row">
            <#list coursePage.content as course>
                <div class="col-md-4 col-xs-6" style="">
                    <div class="course-item">
                        <div class="course-img">
                            <a href="${course.courseLink}" target="_blank">
                                <span class="tags"><span class="tag-live"></span></span>
                                <img src="${course.courseImgUrl}" alt="${course.courseTitle}" class="img-responsive">
                            </a>
                        </div>
                        <div class="course-info">
                            <div class="title">
                                <a class="link-dark" href="${course.courseLink}" target="_blank">${course.courseTitle}</a>
                            </div>
                            <div class="metas clearfix">
                                <span class="num hidden-md hidden-sm hidden-xs">参课人数：${course.courseUserCount}</span>
                                <span class="teacherName hidden-sm hidden-xs">老师：${course.courseTeacherName}</span>
                                <span class="course-price-widget">
                                    <span class="price" style="font-size: 24px">
                                        <#if course.coursePrice == 0>
                                        <span class="text-danger" style="font-size: 16px">免费</span>
                                        <#else>
                                        <i style="font-size: 16px;font-style: normal">RMB</i>${course.coursePrice}
                                        </#if>
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
            </div>
        </div>
        <nav class="text-center">
            <nav class=" text-center">
                <ul class="pagination" style="margin: 0">
                    <#if currentPage == 1>
                        <li class="active"><a href="/${navigation}/${category}/list?page=1">首页</a></li>
                    <#else>
                        <li><a href="/${navigation}/${category}/list?page=1">首页</a></li>
                    </#if>
                    <#if currentPage lte 1>
                        <li class="disabled"><a href="#">上一页</a></li>
                    <#else>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 1}">上一页</a></li>
                    </#if>

                    <#if currentPage gt 5>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 5}">${currentPage - 5}</a></li>
                    </#if>
                    <#if currentPage gt 4>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 4}">${currentPage - 4}</a></li>
                    </#if>
                    <#if currentPage gt 3>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 3}">${currentPage - 3}</a></li>
                    </#if>
                    <#if currentPage gt 2>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 2}">${currentPage - 2}</a></li>
                    </#if>
                    <#if currentPage gt 1>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage - 1}">${currentPage - 1}</a></li>
                    </#if>

                        <li class="active"><a href="/${navigation}/${category}/list?page=${currentPage}">${currentPage}</a></li>

                    <#if currentPage + 1 lte coursePage.getTotalPages()>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage + 1}">${currentPage + 1}</a></li>
                    </#if>
                    <#if currentPage + 2 lte coursePage.getTotalPages()>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage + 2}">${currentPage + 2}</a></li>
                    </#if>
                    <#if currentPage + 3 lte coursePage.getTotalPages()>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage + 3}">${currentPage + 3}</a></li>
                    </#if>
                    <#if currentPage + 4 lte coursePage.getTotalPages()>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage + 4}">${currentPage + 4}</a></li>
                    </#if>

                    <#if currentPage gte coursePage.getTotalPages()>
                        <li class="disabled"><a href="#">下一页</a></li>
                    <#else>
                        <li><a href="/${navigation}/${category}/list?page=${currentPage + 1}">下一页</a></li>
                    </#if>
                    <#if currentPage == coursePage.getTotalPages()>
                        <li class="active"><a  href="/${navigation}/${category}/list?page=${coursePage.getTotalPages()}">尾页</a></li>
                    <#else>
                        <li><a  href="/${navigation}/${category}/list?page=${coursePage.getTotalPages()}">尾页</a></li>
                    </#if>
                </ul>
            </nav>
        </nav>
    </div>
    <!-- 底部footer -->
    <#include "../common/footer.ftl">
</div>
<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>

</html>
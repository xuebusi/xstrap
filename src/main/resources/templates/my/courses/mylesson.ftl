<!DOCTYPE html>
<!-- saved from url=(0037)http://www.chinahadoop.cn/course/1049 -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../../common/head.ftl">
<body class="course-dashboard-page" onbeforeunload="return CheckUnsave();">
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

    <section class="course-detail-header after">
        <div class="container">
            <ol class="breadcrumb breadcrumb-o">
                <li><a href="/all/all/list">首页</a> </li>
                <li><a href="/${course.courseNavigation}/all/list">${courseNavigationStr}</a> </li>
                <li><a href="/${course.courseNavigation}/${course.courseCategory}/list">${courseCategoryStr}</a> </li>
                <li class="active hidden-xs hidden-sm">${course.courseTitle}</li>
            </ol>
            <div class="es-section clearfix ">
                <div class="course-header-top clearfix">

                    <!--左侧图片-->
                    <!--左侧图片end-->

                    <div class="course-info" style="width: 100%;">
                        <div style="float: left; padding-left: 10px">
                            <h2 class="title" style="display: inline-block;">
                                ${course.courseTitle}
                            </h2>

                            <div class="hidden-xs hidden-sm" style="display: inline-block; margin-top: 0;">
                                <span class="es-share top">
                                    <a class="dropdown-toggle" href="http://www.chinahadoop.cn/course/1049" data-toggle="dropdown">
                                      <p><i class="es-icon es-icon-share"></i></p>
                                    </a>
                                    <div class="dropdown-menu  js-social-share-params" data-title="《用Python进行员工离职原因分析及预测》"
                                         data-summary="直播简介近两年来，数据分析师的岗位需求非常大，90%的岗位技能需要掌握Python作为数据分析工具，..."
                                         data-message="我正在学习《《用Python进行员工离职原因分析及预测》》，收获巨大哦，分享并@chinahadoop更有好礼相送，一起来学习吧！"
                                         data-url="http://www.chinahadoop.cn/course/1049"
                                         data-picture="http://scb1a9q0-sb.qiqiuyun.net/files/course/2017/10-10/11322591bc24995005.png">
                                        <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin"
                                           data-qrcode-url="/common/qrcode?text=http%3A//www.chinahadoop.cn/course/1049"><i
                                                class="es-icon es-icon-weixin"></i></a>
                                        <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i
                                                class="es-icon es-icon-weibo"></i></a>
                                        <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i
                                                class="es-icon es-icon-qq"></i></a>
                                        <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i
                                                class="es-icon es-icon-qzone"></i></a>

                                    </div>
                                </span>
                            </div>
                            <div style="display: block">
                                <div class="metas" style="display: inline-block;padding-right: 20px; padding-left: 10px">
                                    <p class="expiry-date hidden-sm">
                                        <span class="">有效期：</span>
                                        <span>2018-10-21</span>
                                    </p>
                                </div>
                                <div class="h5 student-num hidden-xs hidden-sm" style="display: inline-block">
                                    课时：1课时
                                </div>
                            </div>
                        </div>
                        <#--<div style="float: right; padding-right: 10%;">
                            <div style="margin-top: 18px;float: left;margin-right: 20px">
                                <a class="btn mem_btn" href="http://www.chinahadoop.cn/page/63" target="_blank"><font>学员上课环境测试</font></a>
                            </div>
                        </div>-->
                    </div>
                </div>
                <div class="progress progress-sm">
                    <div class="progress-bar" role="progressbar" style="width: 0%" data-toggle="tooltip"
                         data-placement="right" title="" data-original-title="0%">
                    </div>
                </div>
                <a href="http://www.chinahadoop.cn/course/1049#modal"
                   class="btn btn-default setting hidden-xs hidden-sm" data-toggle="modal"
                   data-url="/target/1049/order/refund?targetType=course">
                    <i class="es-icon es-icon-exit"></i>
                </a>
            </div>
        </div>
    </section>

    <div id="content-container" class="container" style="width: 100%; border-top: 1px solid #dedede; margin: 30px 0 0 0; background: #FAFAFA;">
        <div class="course-detail row" style="width: 90%;margin: 0 auto; max-width: 1200px;">
            <div class="col-lg-9 col-md-8  course-detail-main">
                <section class="es-section" style="padding: 0; min-height: 410px; background: #fff !important;">

                    <div class="nav-btn-tab">
                        <ul class="nav nav-tabs " role="tablist">
                            <li style="width: 25%;" role="presentation" class="active">
                                <a href="http://www.chinahadoop.cn/course/1049/lesson/list">直播列表</a>
                            </li>
                            <li style="width: 25%;" role="presentation">
                                <a href="http://www.chinahadoop.cn/course/1049/lesson/hflist">回放列表</a>
                            </li>
                            <li style="width: 25%;" role="presentation">
                                <a href="http://www.chinahadoop.cn/course/1049/material/">课程资料
                                    <small class="text-muted">( 2 )</small>
                                </a>
                            </li>
                            <li style="width: 25%;" role="presentation">
                                <a href="http://www.chinahadoop.cn/course/1049/thread">问老师</a>
                            </li>
                            <li class="highlight" style="left: 0px; width: 217px; overflow: hidden;"></li>
                        </ul>
                    </div>
                    <div class="course-detail-content" style="padding: 15px" data-widget-cid="widget-1">
                        <div class="es-piece">
                            <div class="piece-body">
                                <script src="./mylesson_files/jquery.min.js.下载"></script>
                                <script>
                                    /*$(document).ready(function(){

                                        for(var i=0; i<$('#course-item-list').find('li').length; i++){

                                            if ($('#course-item-list').find('li').eq(i).attr('class')==$('#course-item-list').find('li').eq(i+1).attr('class')){
                                                //alert(1111111111111)
                                                $('#course-item-list').find('li').eq(i).hide();
                                            }
                                        }
                                    })*/
                                </script>
                            </div>
                        </div>
                    </div>
                </section>
            </div>

            <div class="col-lg-3 col-md-4  course-sidebar">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title">
                            <i class="es-icon es-icon-assignmentind"></i>
                            授课教师
                        </h3>
                    </div>
                    <div class="panel-body">
                        <div class="media media-default" style="margin-bottom:15px;">
                            <div class="media-left" style="padding-bottom:0">
                                <a class=" js-user-card" href="http://www.chinahadoop.cn/user/29231"
                                   data-card-url="/user/29231/card/show" data-user-id="29231">
                                    <img class="avatar-md" src="${teacher.teacherPhotoUrl}">
                                </a>
                            </div>
                            <div class="media-body" style="padding-top:0">
                                <div class="title">
                                    <a class="link-dark link-light" href="http://www.chinahadoop.cn/user/29231">${teacher.teacherName}</a>
                                </div>
                                <div class="content"></div>
                            </div>
                            <div style="border-top: solid 1px #eee; display: -webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp:3; overflow:hidden; text-overflow:ellipsis; margin-top: 18px">
                                <p class="teacherAbout">${teacher.teacherAbout}</p>
                            </div>
                            <div style="padding-top: 22px;">
                                <h4 class="freeListen">
                                    <a href="http://www.chinahadoop.cn/user/29231">免费试听老师课程</a>
                                </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hidden jweixin-data"
             data-config="{&quot;appId&quot;:&quot;wxe9c061d2aed9ae09&quot;,&quot;timestamp&quot;:1508671156,&quot;nonceStr&quot;:&quot;edusoho59ec7eb4d5b52&quot;,&quot;jsApiList&quot;:[&quot;onMenuShareTimeline&quot;,&quot;onMenuShareAppMessage&quot;,&quot;onMenuShareQZone&quot;,&quot;onMenuShareQQ&quot;],&quot;string&quot;:&quot;jsapi_ticket=sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVQp7DnYoh6nBIcapQtBWDX0XNRw3-DdNk6ZT1nKbQyZeg&amp;noncestr=edusoho59ec7eb4d5b52&amp;timestamp=1508671156&amp;url=http:\/\/www.chinahadoop.cn\/course\/1049&quot;,&quot;signature&quot;:&quot;20c9a7576f6caf23eb6c1e120002380a2700cd16&quot;}"
             data-title="《用Python进行员工离职原因分析及预测》"
             data-desc="直播简介近两年来，数据分析师的岗位需求非常大，90%的岗位技能需要掌握Python作为数据分析工具，Python语言的易学性、快速开发，拥有丰富强大的扩展库和成熟的框架等特性很好地满足了数据分析师的职业技能要求。很多互联网公司都逐渐意识到了数据的重要性，但却缺乏相关的专业人才来分析和管理数据。本讲座主要通过数据处理分析建模的流程讲述各步骤的知识和技巧，并最终通过“员工离职原因分析及预测”案例演示如何通过使用Python中常用的数据分析建模库完成一个基本的数据分析建模项目，使学员能够快速地了解数据分析建模的整个流程。直播安排1.数据分析基本概念2.数据分析基本步骤3.Pandas简单数据分析4.数据分析建模理论基础5.案例分析演讲者梁斌查尔斯特大学（CharlesSturtUniversity）计算机博士，从事机器学习、计算机视觉及模式识别等相关方向的研究，在计算机视觉等国际会议及期刊发表10余篇学术论文。现就职于澳大利亚某科学研究机构（博士后），负责算法改进及其产品化、数据分析处理、建模及可视化。"
             data-link="http://www.chinahadoop.cn/course/1049"
             data-img-url="http://scb1a9q0-sb.qiqiuyun.net/files/course/2017/10-10/11322591bc24995005.png" data-type=""
             data-data-url="">
        </div>
    </div>
    <#include "../../common/footer.ftl">
</div>
<!-- 侧边栏快捷操作 -->
<#include "../../common/sidebar.ftl">
<#include "../../common/login-modal.ftl">
</body>
</html>
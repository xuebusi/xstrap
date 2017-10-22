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
<html>
<!--<![endif]-->
<html lang="zh_CN">
<!-- Mirrored from www.xuebusi.cn/course/894 by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:52:21 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->

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
            var curCategory = window.location.href.split('../index.html')[3].toString()
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
                <li>
                    <a href="/all/all/list">首页</a>
                </li>
                <li>
                    <a href="/${course.courseNavigation}/all/list">${courseNavigationStr}</a>
                </li>
                <li>
                    <a href="/${course.courseNavigation}/${course.courseCategory}/list">${courseCategoryStr}</a>
                </li>
                <li class="active hidden-xs hidden-sm">${course.courseTitle}</li>
            </ol>
            <div class="es-section clearfix ">
                <!--左侧图片-->
                <div class="course-img col-lg-offset-1" style="">
                    <img class="img-responsive" src="${course.courseImgUrl}" alt="${course.courseTitle}">
                    <div class="tags"></div>
                </div>
                <!--左侧图片end-->
                <div class="course-info">
                    <h2 class="title hidden-xs hidden-sm" style="margin-top: 0; margin-bottom: 30px;">${course.courseTitle}</h2>
                    <div class="h5 hidden-xs hidden-sm">
                        <span>直播已结束</span>
                        <div class="hidden-xs hidden-sm" style="display: inline-block">
                            <span class="es-share top">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                                  <p style="margin: 0;">
                                      <i class="es-icon es-icon-share" style="font-size: 16px"></i>
                                  </p>
                                </a>
                                <div class="dropdown-menu  js-social-share-params" data-title="《Spark 2.1》第二期" data-summary="  课程名称: 《Spark 2.1 原理、内幕与案例实践》第二期  主讲老师：  董西成    h..." data-message="我正在学习《《Spark 2.1》第二期》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/894" data-picture="../images/131229d1e1b4605525.png">
                                    <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/894">
                                        <i class="es-icon es-icon-weixin"></i>
                                    </a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo">
                                        <i class="es-icon es-icon-weibo"></i>
                                    </a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq">
                                        <i class="es-icon es-icon-qq"></i>
                                    </a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone">
                                        <i class="es-icon es-icon-qzone"></i>
                                    </a>
                                </div>
                            </span>
                        </div>
                    </div>
                    <div class="h5 student-num hidden-lg hidden-xs hidden-sm">
                        <i class="es-icon es-icon-people"></i>${course.courseUserCount}人</div>
                    <div class="teacher-name h5 hidden-xs hidden-sm">老师：
                        <span>${course.courseTeacherName}</span>
                        <span></span>
                    </div>
                    <div class="metas">
                        <p class="expiry-date h5 hidden-sm">学习有效期: 365天</p>
                    </div>
                    <!--价格-->
                    <p class="discount-price" style="margin: 20px 0 10px 0;">
                        <label style="color: #eb3b28; font-size: 18px;">￥</label>
                        <span class="course-price-widget">
                            <span class="price">${course.coursePrice}</span>
                        </span>
                    </p>
                    <!--价格end-->
                    <!--判断会员身份是否到期-->
                    <!--判断会员身份是否到期end-->
                    <div class="hidden-xs hidden-sm"> <a class="btn btn-primary btn-lg" href="../login.html?targetId=894&targetType=course">
                        加入购买</a>
                        </a>
                    </div>
                </div>
                <div class="course-operation clearfix hidden-lg hidden-md">
                    <ul class="course-data clearfix ">
                        <li id="unfavorite-btn" data-url="/course/894/unfavorite" style="display:none;">
                            <a href="javascript:;" class="color-primary">
                                <p><i class="es-icon es-icon-bookmark"></i>

                                </p>
                                <p>收藏</p>
                            </a>
                        </li>
                        <li id="favorite-btn" data-url="/course/894/favorite">
                            <a href="javascript:;">
                                <p><i class="es-icon es-icon-bookmarkoutline"></i>

                                </p>
                                <p>收藏</p>
                            </a>
                        </li>
                        <li>
                            <span class="es-share top">
                                <a class="dropdown-toggle" href="#" data-toggle="dropdown">
                                    <p><i class="es-icon es-icon-share"></i></p>
                                    <p>分享</p>
                                </a>
                                <div class="dropdown-menu  js-social-share-params" data-title="《Spark 2.1》第二期" data-summary="  课程名称: 《Spark 2.1 原理、内幕与案例实践》第二期  主讲老师：  董西成    h..." data-message="我正在学习《《Spark 2.1》第二期》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/894" data-picture="../images/131229d1e1b4605525.png">
                                    <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/894"><i class="es-icon es-icon-weixin"></i></a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
                                    <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>
                                </div>
                            </span>
                        </li>
                    </ul>
                    <div class="buy">
                        <a class="btn btn-primary btn-lg" href="../login.html?targetId=894&targetType=course">加入购买</a>
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
                            <li style="width: 25%;" role="presentation" class="active"><a href="/course/${course.id}">课程介绍</a>
                            </li>
                            <li style="width: 25%;" role="presentation"><a href="${course.id}/lesson">课程目录
                                <small class="text-muted">( ${lessonCount} )</small>
                            </a>
                            </li>
                            <li style="width: 25%;" role="presentation"><a href="894/type/notice.html"> 听课须知</a>
                            </li>
                            <li style="width: 25%;" role="presentation"><a href="894/reviews/index.html">往期评论 <small class="text-muted">( 4 )</small></a>

                            </li>
                        </ul>
                    </div>
                    <div class="course-detail-content" style="padding: 15px">
                        <div class="es-piece">
                            <div class="piece-body p-lg clearfix">
                                ${courseDetail.courseDesc}
                            </div>
                        </div>
                    </div>
                </section>
            </div>
            <div class="col-lg-3 col-md-4  course-sidebar">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h3 class="panel-title"> <i class="es-icon es-icon-assignmentind"></i>
                            授课教师
                        </h3>

                    </div>
                    <div class="panel-body">
                        <div class="media media-default" style="margin-bottom:15px;">
                            <div class="media-left" style="padding-bottom:0">
                                <a class=" js-user-card" href="../user/94.html" data-card-url="/user/94/card/show" data-user-id="94">
                                    <img class="avatar-md" src="${teacher.teacherPhotoUrl}">
                                </a>
                            </div>
                            <div class="media-body" style="padding-top:0">
                                <div class="title"> <a class="link-dark link-light" href="../user/94.html">${teacher.teacherName}</a>

                                </div>
                                <div class="content"></div>
                            </div>
                            <div style="border-top: solid 1px #eee; display: -webkit-box; -webkit-box-orient: vertical; -webkit-line-clamp:3; overflow:hidden; text-overflow:ellipsis; margin-top: 18px">
                                <p class="teacherAbout">${teacher.teacherAbout}</p>
                            </div>
                            <div style="padding-top: 22px;">
                                <h4 class="freeListen"><a href="../user/94.html">免费试听老师课程</a> </h4>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hidden jweixin-data" data-config="{"appId":"wxe9c061d2aed9ae09","timestamp":1507419496,"nonceStr":"edusoho59d9656887654","jsApiList":["onMenuShareTimeline","onMenuShareAppMessage","onMenuShareQZone","onMenuShareQQ"],"string":"jsapi_ticket=sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVQgJZd0v-XRKaB1rh7XuNO_ytxPkjx6aZ8-2vUaJI0eGg&noncestr=edusoho59d9656887654&timestamp=1507419496&url=http:\/\/www.xuebusi.cn\/course\/894","signature":"db5c6d75e0b250b52c5d8361d88f100a614a91ba"}"
        data-title="《Spark 2.1》第二期" data-desc='课程名称:《Spark2.1原理、内幕与案例实践》第二期主讲老师：董西成hulu大数据架构组负责人《Hadoop技术内幕：深入解析MapReduce架构设计与实现原理》和《Hadoop技术内幕：深入解析YARN架构设计与实现原理》作者；资深Hadoop技术实践者和研究者，曾参与商用Hadoop原型研发，以及分布式日志系统、全网图片搜索引擎、Hadoop调度器等项目的设计。课程简介：以目前主流的，最新的spark稳定版2.1.x为基础，深入浅出地介绍Spark生态系统原理及应用，内容包括Spark各组件(SparkCore/SQL/Streaming/MLlib)基本原理，使用方法，实战经验以及在线演示。本课程精心设计了五个企业级应用案例，帮助大家在理解理论的基础上，亲手实践和应用spark。课程优化：1.讲述最新、最稳定的Spark2.1.X版本2.精心设计5个企业级应用案例，更好地实践、应用Spark面向人群：1.大数据爱好者2.Spark初中级学者3.对Spark感兴趣、想系统性学习者学习收益：1.熟练使用Spark，理解Spark原理，熟知Spark内幕2.掌握Spark2.1新增特性并熟练使用3.用有丰富的Spark企业实战经验开课时间：2017年4月6日学习方式：在线直播，共9次课，每次2小时每周2次（周二、周四，晚上20:00-22:00）直播后提供录制回放视频，可在线反复观看，有效期1年课程大纲：第一部分:Spark概述第一课：Spark2.1概述1.Spark产生背景包括mapreduce缺陷，多计算框架并存等2.Spark基本特点3.Spark版本演化4.Spark核心概念包括RDD,transformation,action,cache等5.Spark生态系统包括Spark生态系统构成，以及与Hadoop生态系统关系6.Spark在互联网公司中的地位与应用介绍当前互联网公司的Spark应用案例7.Spark集群搭建包括测试集群搭建和生产环境中集群搭建方法，并亲手演示整个过程8.背景知识补充介绍a.Hadoop基础b.HDFS简介（特点、架构与应用）c.YARN简介（架构）d.MapReduce简介（编程模型与应用）I.Eclipse与IntellijIDEAII.Maven第二部分SparkCore第二课：Spark程序设计与企业级应用案例1.Spark运行模式介绍Spark运行组件构成，spark运行模式（local、standalone、mesos/yarn等）2.Spark开发环境构建集成开发环境选择，亲手演示spark程序开发与调试，spark运行3.常见transformation与action用法介绍常见transformation与action使用方法，以及代码片段剖析4.常见控制函数介绍包括cache、broadcast、accumulator等5.Spark应用案例：电影受众分析系统包括：背景介绍，数据导入，数据分析，常见Sparktransformation和action用法在线演示第三课：Spark内部原理剖析与源码阅读1.Spark运行模式剖析深入分析spark运行模式，包括local，standalone以及sparkonyarn2.Spark运行流程剖析包括spark逻辑查询计划，物理查询计划以及分布式执行3.Sparkshuffle剖析深入介绍sparkshuffle的实现，主要介绍hash-based和sort-based两种实现4.Spark源码阅读Spark源码构成以及阅读方法第四课：Spark程序调优技巧1.数据存储格式调优数据存储格式选择，数据压缩算法选择等2.资源调优如何设置合理的executor、cpu和内存数目，YARN多租户调度器合理设置，启用YARN的标签调度策略等3.程序参数调优介绍常见的调优参数，包括避免不必要的文件分发，调整任务并发度，提高数据本地性，JVM参数调优，序列化等4.程序实现调优如何选择最合适的transformation与action函数5.调优案例分享与演示演示一个调优案例，如何将一个spark程序的性能逐步优化20倍以上。第三部分SparkSQL2.1第五课：SparkSQL基本原理1.SparkSQL是什么2.SparkSQL基本原理3.SparkDataframe与DataSet4.SparkSQL与SparkCore的关系第六课：SparkSQL程序设计与企业级应用案例1.SparkSQL程序设计a.如何访问MySQL、HDFS等数据源，如何处理parquet格式数据b.常用的DSL语法有哪些，如何使用c.SparkSQL调优技巧2.SparkSQL应用案例：篮球运动员评估系统a.背景介绍b.数据导入c.数据分析d.结论第四部分SparkStreaming第七课：SparkStreaming、程序设计及应用案例1.SparkStreaming基本原理a.SparkStreaming是什么b.SparkStreaming基本原理c.StructuredStreamingd.SparkStreaming编程接口介绍e.SparkStreaming应用案例2.SparkStreaming程序设计与企业级应用案例a.常见流式数据处理模式b.SparkStreaming与Kafka交互c.SparkStreaming与Redis交互d.SparkStreaming部署与运行e.SparkStreaming企业级案例：用户行为实时分析系统第五部分SparkMLlib第八课：SparkMLlib及企业级案例1.SparkMLlib简介2.数据表示方式3.MLlib中的聚类、分类和推荐算法4.如何使用MLlib的算法5.SparkMLLib企业级案例：信用卡欺诈检测系统第六部分Spark综合案例第九课：简易电影推荐系统1.背景介绍2.什么是Lambdaarchitecture3.利用HDFS+SparkCore+MLlib+Redis构建批处理线4.利用Kafka+SparkStreaming+Redis构建实时处理线5.整合批处理和实时处理线6.扩展介绍：Apachebeam：统一编程模型及应用常见问题：Q：本门课程需要什么基础?A：了解Linux基础知识，掌握Java或Scala语言基础，了解Hadoop核心组件技术Q：会有实际上机演示和动手操作吗？A：有的，几乎每节课，老师均会准备上机演示部分，学员可以学习老师的实践经验Q：本课程中的五个企业级应用案例的代码会公开吗？A：会的，每位学员均可获取全部代码。Q：本课程主要是基于Spark2.1.x版本吗，如果2.2.x或者更高版本出来了，内容会不会过期？A：不会的。本课程以介绍Spark基本原理和使用技巧为主，这些内容适用于1.6.x之后个各个版本。Q：本课程有专门的答疑时间吗？A：有的。助教会统一收集学员问题，老师在每节课最后部分，会在线回答20~30个问题，并由助教整理后发布到论坛中。Q：在哪里上课？A：课程直播和回放都在学布斯教育学院官网（http://www.xuebusi.cn）上进行，不需要其他直播软件；如果希望上下班路上观看，可以下载学布斯教育学院app进行缓存。联系方式：参团后，请加客服微信：13011218970手机：13011218970邮件：admin@xuebusi.cn网站：http://www.xuebusi.cn'
        data-link="894.html" data-img-url="../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-07/131229d1e1b4605525.png" data-type="" data-data-url=""></div>
</div>

<#include "../common/footer.ftl">

<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
<!-- Mirrored from www.xuebusi.cn/course/894 by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:52:28 GMT -->

</html>
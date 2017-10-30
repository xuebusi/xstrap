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
    <#include "../common/course-detail-header-before.ftl">
    <div id="content-container" class="container" style="width: 100%; border-top: 1px solid #dedede; margin: 30px 0 0 0; background: #FAFAFA;">
        <div class="course-detail row" style="width: 90%;margin: 0 auto; max-width: 1200px;">
            <div class="col-lg-9 col-md-8  course-detail-main">
                <#include "../common/course-detail-main-unpaid.ftl">
                <#include "../common/course-relevant.ftl">
            </div>
            <#include "../common/course-sidebar.ftl">
        </div>
        <div class="hidden jweixin-data" data-config="{" appid":"wxe9c061d2aed9ae09","timestamp":1507419865,"noncestr":"edusoho59d966d960706","jsapilist":["onmenusharetimeline","onmenushareappmessage","onmenushareqzone","onmenushareqq"],"string":"jsapi_ticket="sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVQgJZd0v-XRKaB1rh7XuNO_ytxPkjx6aZ8-2vUaJI0eGg&amp;noncestr=edusoho59d966d960706&amp;timestamp=1507419865&amp;url=http:\/\/www.xuebusi.cn\/course\/1040\/lesson\/hflist\/all&quot;,&quot;signature&quot;:&quot;7f68a8125e371eb5f3cc3e59cbb7e69f3a0b621b&quot;}&quot;" data-title="零基础Python入门" data-desc="课程名称：《零基础Python入门》主讲老师：梁斌资深算法工程师查尔斯特大学（CharlesSturtUniversity）计算机博士，从事机器学习、计算机视觉及模式识别等相关方向的研究，在计算机视觉等国际会议及期刊发表10余篇学术论文。现就职于澳大利亚某科学研究机构，负责算法改进及其产品化、数据分析处理及可视化。课程特色:本课程在系统讲解Python语言语法的同时介绍了从代码编写到数据分析的实用技巧，向Python语言的初学者展示了全新的编程语言学习路径。本课程一共设计了8个非常具有现代感的案例，从简单的汇率兑换到复杂的网络爬虫及数据分析，随着课程内容的深入不断激发学员学习Python语言的热情。学习方式：录播课程，开课即学在线反复观看，有效期1年课程大纲：第0课：课程介绍第1课：程序设计基础计算机与程序设计计算机组成计算机工作过程程序执行过程程序编写步骤Python语言概述Python语言发展历史Python语言特点Python应用举例Python开发环境配置安装Anaconda集成开发环境—IDLEPyCharm配置及简单应用运行方式：交互式和文件式第2课：案例1--汇率兑换汇率兑换1.0缩进，注释变量与命名，关键字字符串，赋值Input()与print()汇率兑换2.0分支语句ifelse汇率兑换3.0循环语句while汇率兑换4.0函数的定义与调用汇率兑换5.0匿名函数lambda第3课：案例2--分形树的绘制五角星绘制turtle库复习循环操作重复不同大小的五角星绘制复习函数与循环重复不同大小的五角星绘制递归函数分形树的绘制递归函数的应用第4课：案例3--基础代谢率(BMR)计算BMR计算1.0数值类型及运算BMR计算2.0复习分支语句、循环语句及input()函数BMR计算3.0字符串操作BMR计算4.0异常处理第5课：案例4--52周存钱挑战52周存钱挑战1.0复习循环语句及字符串操作52周存钱挑战2.0列表的概念及操作运用math库进行计算52周存钱挑战3.0循环语句forrange()函数52周存钱挑战4.0函数的参数传递变量的作用范围52周存钱挑战5.0时间处理库datetime第6课：案例5--判断第几天判断第几天1.0组合数据类型：元组判断第几天2.0复习列表的使用理解列表和元组的区别判断第几天3.0组合数据类型：集合理解列表与集合的区别判断第几天4.0映射数据类型：字典第7课：案例6--判断密码强弱判断密码强弱1.0复习字符串与分支结构判断密码强弱2.0循环的跳出操作：break与continue判断密码强弱3.0文件操作：写操作判断密码强弱4.0文件操作：读操作判断密码强弱5.0面向过程编程vs面向对象编程Python类的定义与使用判断密码强弱6.0面向对象编程的特点：封装、继承、多态第8课：案例7--模拟掷骰子模拟掷骰子1.0random模块模拟掷骰子2.0zip()函数的使用复习字典的使用模拟掷骰子3.0Python绘图库matplotlib散点图的简单绘制模拟掷骰子4.0简单的数据分析matplotlib绘制直方图模拟掷骰子5.0科学计算库NumPyNumPy中的向量化操作使用NumPy进行简单的数据分析第9课：案例8--空气质量指数(AQI)计算及分析AQI计算1.0复习分支结构、函数及异常处理AQI计算2.0JSON文件格式及操作AQI计算3.0CSV文件格式及写操作理解JSON与CSV的关联及差别AQI计算4.0CSV文件的读操作os模块AQI计算5.0什么是网络爬虫request库AQI计算6.0beautifulsoup库AQI计算7.0巩固beautifulsoup库AQI计算8.0完整网络爬虫的编写与实现AQI计算9.0Pandas基础利用Pandas进行数据处理及分析AQI计算10.0数据清洗利用Pandas进行数据可视化" data-link="all.html" data-img-url="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg" data-type="" data-data-url=""></div>
    </div>
    <#include "../common/footer.ftl">
    <!-- 侧边栏快捷操作 -->
    <#include "../common/sidebar.ftl">
    <#include "../common/login-modal.ftl">
    <!-- Mirrored from www.xuebusi.cn/course/1040/lesson/hflist/all by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:11:54 GMT -->
</body>
</html>
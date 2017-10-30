<!DOCTYPE html>
<!-- saved from url=(0037)http://www.xuebusi.cn/course/1049 -->
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
    <#include "../../common/course-detail-header-after.ftl">
    <div id="content-container" class="container" style="width: 100%; border-top: 1px solid #dedede; margin: 30px 0 0 0; background: #FAFAFA;">
        <div class="course-detail row" style="width: 90%;margin: 0 auto; max-width: 1200px;">
            <#include "../../common/course-detail-main-paid.ftl">
            <#include "../../common/course-sidebar.ftl">
        </div>

        <div class="hidden jweixin-data"
             data-config="{&quot;appId&quot;:&quot;wxe9c061d2aed9ae09&quot;,&quot;timestamp&quot;:1508671156,&quot;nonceStr&quot;:&quot;edusoho59ec7eb4d5b52&quot;,&quot;jsApiList&quot;:[&quot;onMenuShareTimeline&quot;,&quot;onMenuShareAppMessage&quot;,&quot;onMenuShareQZone&quot;,&quot;onMenuShareQQ&quot;],&quot;string&quot;:&quot;jsapi_ticket=sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVQp7DnYoh6nBIcapQtBWDX0XNRw3-DdNk6ZT1nKbQyZeg&amp;noncestr=edusoho59ec7eb4d5b52&amp;timestamp=1508671156&amp;url=http:\/\/www.xuebusi.cn\/course\/1049&quot;,&quot;signature&quot;:&quot;20c9a7576f6caf23eb6c1e120002380a2700cd16&quot;}"
             data-title="《用Python进行员工离职原因分析及预测》"
             data-desc="直播简介近两年来，数据分析师的岗位需求非常大，90%的岗位技能需要掌握Python作为数据分析工具，Python语言的易学性、快速开发，拥有丰富强大的扩展库和成熟的框架等特性很好地满足了数据分析师的职业技能要求。很多互联网公司都逐渐意识到了数据的重要性，但却缺乏相关的专业人才来分析和管理数据。本讲座主要通过数据处理分析建模的流程讲述各步骤的知识和技巧，并最终通过“员工离职原因分析及预测”案例演示如何通过使用Python中常用的数据分析建模库完成一个基本的数据分析建模项目，使学员能够快速地了解数据分析建模的整个流程。直播安排1.数据分析基本概念2.数据分析基本步骤3.Pandas简单数据分析4.数据分析建模理论基础5.案例分析演讲者梁斌查尔斯特大学（CharlesSturtUniversity）计算机博士，从事机器学习、计算机视觉及模式识别等相关方向的研究，在计算机视觉等国际会议及期刊发表10余篇学术论文。现就职于澳大利亚某科学研究机构（博士后），负责算法改进及其产品化、数据分析处理、建模及可视化。"
             data-link="http://www.xuebusi.cn/course/1049"
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
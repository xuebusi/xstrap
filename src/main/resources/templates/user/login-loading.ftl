<!DOCTYPE html>
<!-- saved from url=(0073)http://www.chinahadoop.cn/partner/login?goto=http%3A//www.chinahadoop.cn/ -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">

<body onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

<div class="es-wrap">

    <script type="text/javascript">
        /*function baidusearch(id) {
          var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + encodeURIComponent(document.getElementById(id).value);
          window.open(url,"_blank");
        }*/
        function coursesearch(id) {
            var url = "/search" + "?q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url,"_self");
        }

        function baidusearch() {
            var sWords = window.location.href.split('=')[1] || '';
            var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + sWords;
            window.open(url,"_blank");
        }
    </script>
    <script>
        window.onload = function(){

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('/')[3].toString()
            var index=0;
            var data = {
                ''          :  aA[0].innerText,
                'ai'        :  aA[1].innerText,
                'bigdata'   :  aA[2].innerText,
                'da'        :  aA[3].innerText,
                'basic'     :  aA[4].innerText,
            }
            for(var i=0;i<5; i++){
                if(aA[i].innerText == data[curCategory] ){
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

        <div id="page-message-container" class="page-message-container" data-goto="http://www.chinahadoop.cn/" data-duration="3000">
            <div class="page-message-panel">
                <div class="page-message-heading">
                    <h2 class="page-message-title">登录成功</h2>
                </div>
                <div class="page-message-body">正在跳转页面，请稍等....</div>
            </div>
        </div>
    </div>
    <#include "../common/footer.ftl">
</div>
<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
</html>
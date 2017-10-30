<!-- 第三方登录页面 -->
<!DOCTYPE html>
<!-- saved from url=(0041)http://www.xuebusi.cn/settings/avatar -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">
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
<#include "../common/header.ftl">
    <div id="content-container" class="container">
        <div class="row">
        <#include "../common/setting-list.ftl">
            <div class="col-md-9">
                <div class="panel panel-default panel-col">
                    <div class="panel-heading">第三方登录</div>
                    <div class="panel-body">
                        <!-- 通过微博或qq绑定成功后跳转至本页面显示"账号绑定成功" -->
                        <div class="alert alert-success">帐号绑定成功!</div>
                        <ul class="media-list">
                            <li class="media">
                                <img src="http://scb1a9q0-sb.qiqiuyun.net/assets/img/social/weibo.png?11.0.2.5" class=" media-object pull-left">
                                <div class="media-body">
                                    <!-- 已绑定时显示"取消绑定" -->
                                    <a href="/settings/unbind/weibo" class="unbind btn btn-default pull-right">取消绑定</a>
                                    <!-- 未绑定时显示"绑定" -->
                                    <a href="/settings/bind/weibo" class="bind btn btn-primary pull-right">绑定</a>
                                    <div>微博帐号</div>
                                    <div class="text-muted">未绑定</div>
                                </div>
                            </li>
                            <li class="media">
                                <img src="http://scb1a9q0-sb.qiqiuyun.net/assets/img/social/qq.png?11.0.2.5" class=" media-object pull-left">
                                <div class="media-body">
                                    <a href="/settings/bind/qq"
                                       class="bind btn btn-primary pull-right">绑定</a>
                                    <div>QQ帐号</div>
                                    <div class="text-muted">未绑定</div>
                                </div>
                            </li>
                            <li class="media">
                                <img src="http://scb1a9q0-sb.qiqiuyun.net/assets/img/social/weixin.png?11.0.2.5" class=" media-object pull-left">
                                <div class="media-body">
                                    <div>微信登录</div>
                                    <div class="text-success">已绑定</div>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

<#include "../common/footer.ftl">
</div>

<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
</html>

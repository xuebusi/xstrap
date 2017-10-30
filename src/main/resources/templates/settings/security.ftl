<!-- 安全设置页面 -->
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
                    <div class="panel-heading">安全设置</div>
                    <div class="panel-body">
                        <div class="row safety-setting" style="margin-top:10px;">
                            <div class="col-xs-2 tar">
                                <span class="glyphicon glyphicon-info-sign text-danger" style="font-size:20px;"></span>
                            </div>
                            <div class="col-sm-6 col-xs-5">
                                <div class="progress mbs">
                                    <div class="progress-bar" role="progressbar" style="width: 0%;"></div>
                                </div>
                            </div>
                            <div class="col-sm-4 col-xs-5">
                                <span class="text-danger" style="display:block;">安全等级：低</span>
                            </div>
                        </div>

                        <hr>

                        <div class="row">
                            <div class="col-xs-2 tar text-danger" style="font-size:20px">
                                <span class="glyphicon glyphicon-warning-sign"></span>
                            </div>
                            <span class="col-sm-3 col-xs-6" style="margin-top: 5px;">登录密码</span>
                            <span class="col-sm-4 hidden-xs" style="margin-top: 5px;">登录网校时需要输入的密码</span>
                            <a href="/settings/password" class="col-xs-offset-1 btn btn-primary" style="margin-top: -3px;">修改</a>
                        </div>
                        <hr>

                        <div class="row">
                            <div class="col-xs-2 tar text-danger" style="font-size:20px">
                                <span class="glyphicon glyphicon-warning-sign"></span>
                            </div>
                            <span class="col-sm-3 col-xs-6" style="margin-top: 5px;">支付密码</span>
                            <span class="col-sm-4 hidden-xs" style="margin-top: 5px;">在网校进行消费行为时需要输入的密码</span>
                            <a href="http://www.xuebusi.com/settings/pay_password" class="col-xs-offset-1  btn btn-primary" style="margin-top: -3px;">设置</a>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-2 tar text-danger" style="font-size:20px">
                                <span class="glyphicon glyphicon-warning-sign"></span>
                            </div>
                            <span class="col-sm-3 col-xs-6" style="margin-top: 5px;">安全问题</span>
                            <span class="col-sm-4 hidden-xs" style="margin-top: 5px;">通过设置并且验证安全问题，保护帐号密码安全。</span>
                            <a href="http://www.xuebusi.com/settings/security_questions" class="col-xs-offset-1 btn btn-primary" style="margin-top: -3px;">
                                设置
                            </a>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-xs-2 tar text-danger" style="font-size:20px">
                                <span class="glyphicon glyphicon-warning-sign"></span>
                            </div>
                            <span class="col-sm-3 col-xs-6" style="margin-top: 5px;">手机绑定</span>
                            <span class="col-sm-4 hidden-xs" style="margin-top: 5px;">增加账户登录、购买课程时的安全性，同时还可以找回登录密码，支付密码。</span>
                            <a href="http://www.xuebusi.com/settings/bind_mobile" class="col-xs-offset-1 btn btn-primary" style="margin-top: -3px;">
                                绑定
                            </a>
                        </div>
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

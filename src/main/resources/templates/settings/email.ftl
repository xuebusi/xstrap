<!-- 邮箱设置页面 -->
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
                    <div class="panel-heading">邮箱设置</div>
                    <div class="panel-body">
                        <form id="setting-email-form" class="form-horizontal" method="post" action="/settings/email">
                        <div class="alert alert-danger">密码不正确，请重试。</div>
                        <div class="alert alert-danger">新邮箱，不能跟当前邮箱一样。</div>
                        <div class="alert alert-success">请到邮箱xxxxx@qq.com中接收确认邮件，并点击确认邮件中的链接完成修改。</div>
                        <div class="form-group">
                            <div class="col-md-2 control-label">
                                <label>当前登录邮箱</label>
                            </div>
                            <div class="col-md-8 controls">
                            <span class="control-text">
                                490983587@qq.com
                                <span class="text-success">(已验证)</span>
                            </span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2 control-label" for="新登录邮箱">
                                <label for="form_email" class="required">新登录邮箱</label>
                            </div>
                            <div class="col-md-8 controls">
                                <input type="text" id="form_email" name="form[email]" required="required" class="form-control" />
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2 control-label">
                                <label for="form_password" class="required">网站登录密码</label>
                            </div>
                            <div class="col-md-8 controls">
                                <input type="password" id="form_password" name="form[password]" required="required" class="form-control" />
                                <p class="help-block">设置新的登录邮箱，需要校验当前的网站登录密码</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-2 control-label"></div>
                            <div class="col-md-8 controls">
                                <input type="hidden" id="form__token" name="form[_token]" value="eMtd4Ty_gNUN49zcHwODDziemH3vL9U0NfnYth3ik7I" />
                                <button id="email-save-btn" data-submiting-text="正在提交" type="submit" class="btn btn-primary">提交</button>
                            </div>
                        </div>
                        <input type="hidden" name="_csrf_token" value="G-f4v68GpgsfMxY4kwZGZZkWf-cUST1naLjQxyb5HKc">
                    </form>
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

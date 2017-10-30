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
<!-- Mirrored from www.xuebusi.cn/page/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:15 GMT -->
<!-- Added by HTTrack -->
<meta http-equiv="content-type" content="text/html;charset=UTF-8" />
<!-- /Added by HTTrack -->
<#include "../common/head.ftl">

<body class="custompage" onbeforeunload="return CheckUnsave();">
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

    <div id="content-container" class="container">
        <div class="row">
            <div class="col-md-6 col-md-offset-3 ptl">
                <div class="panel panel-default panel-page">
                    <div class="panel-heading"><h2>设置新邮箱</h2></div>
                    <form id="setting-email-form" class="form-horizontal" method="post">
                        <div class="alert alert-danger">密码不正确，请重试。</div>
                        <div class="form-group">
                            <div class="col-md-3 control-label"><label>新邮箱</label></div>
                            <div class="col-md-9 controls">
                                <span class="control-text">2753686693@qq.com</span>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3 control-label"><label for="password-field">网站登录密码</label></div>
                            <div class="col-md-9 controls">
                                <input type="password" name="password" class="form-control" id="password-field">
                                <p class="help-block">设置新的登录邮箱，需要校验当前的网站登录密码</p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="col-md-3 control-label"></div>
                            <div class="col-md-9 controls">
                                <button type="submit" id="set-email-btn" class="btn btn-primary">提交</button>
                            </div>
                        </div>
                        <input type="hidden" name="_csrf_token" value="G-f4v68GpgsfMxY4kwZGZZkWf-cUST1naLjQxyb5HKc">
                    </form>
                </div><!-- /panel -->
            </div>
        </div>
    </div>
    <#include "../common/footer.ftl">
</div>
<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
<!-- Mirrored from www.xuebusi.cn/page/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:16 GMT -->

</html>
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<html lang="zh_CN" >

<!-- Mirrored from www.chinahadoop.cn/password/reset by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:13 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<#include "../common/head.ftl">
<body  onbeforeunload="return CheckUnsave();">

<div class="es-wrap">

    <script type="text/javascript">
        function baidusearch(id) {
            var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url,"_blank");
        }
        function coursesearch(id) {
            var url = "/search" + "?q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url,"_self");
        }
    </script>
    <script>
        window.onload = function(){

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('../index.html')[3].toString()
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
        <style>
            .es-wrap {
                background-image: url(/images/login_bg.png);
                background-size: 100%;
                padding-bottom: 85px;
            }
            .pwd-reset {padding-start: 0;}
            .pwd-reset li {
                width: 50%;
                font-family: '微软雅黑';
                padding-bottom: 5px;
                color: #eb402e;
                list-style: none;
                float: left;
                text-align: center;
            }

            .pwd-reset li a {
                border-bottom: 1px solid #fff;
                color: #333;
                font-size: 16px;
                padding-bottom: 5px;
            }

            .pwd-reset li.active a {
                border-bottom: 1px solid #eb402e;
                color: #eb402e;
            }
        </style>
        <div class="es-section login-section">
            <div class="logon-tab clearfix">
                <div class="panel-heading">
                    <h2>重设密码</h2>
                </div>

                <ul class="pwd-reset mbl js-find-password" style="padding: 0;-webkit-padding-start: 0em; width: 100%;     display: flex;">
                    <li class="active js-find-by-email">
                        <a style="cursor: pointer;">邮箱重设密码</a>
                    </li>
                    <li class="js-find-by-mobile">
                        <a style="cursor: pointer;">手机重设密码</a>
                    </li>
                </ul>

                <div class="login-main">

                    <form id="password-reset-form" class="form-vertical" method="post" style="width: 90%; margin: 0 auto">
                        <div class="form-group">
                            <label class="label-none required" for="form_email">邮箱地址</label>
                            <div class="controls">
                                <input type="email" id="form_email" name="form[email]" required="required" class="form-control input-lg" />
                                <p class="help-block"></p>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="controls" style="text-align: center;">
                                <input type="hidden" id="form__token" name="form[_token]" value="_DVUi3zdVFcq6EQEjubyGhnELC_ywmUEQMbKaMuoXLk" />
                                <button style="width: 100%;padding: 10px 0;margin-top: 10px;" type="submit" class="btn btn-primary" data-loading-text="正在发送重设密码邮件...">重设密码</button>
                            </div>
                        </div>

                        <input type="hidden" name="_csrf_token" value="FIG-fkQXNI2-zIFLHp70pDbMlxAt4K5EQN24ab8johY">

                    </form>

                    <form id="password-reset-by-mobile-form" class="form-vertical" action="http://www.chinahadoop.cn/password/reset/by_sms" method="post" style="display: none;width: 90%;margin: 0 auto;">

                        <div class="form-group">
                            <div class="controls">
                                <input type="text" id="mobile" name="mobile" data-url="/password/reset/check/mobile" class="form-control input-lg" data-role="mobile" placeholder="请输入手机号">

                            </div>
                        </div>

                        <div class="form-group">
                            <div class="controls row" >
                                <div class = "col-md-8" style="padding-left: 0" >
                                    <input type="text" placeholder="输入短信验证码" class="form-control input-lg" id="sms-code" name="sms_code" required="required" data-url="/edu_cloud/sms_check/sms_forget_password">
                                </div>

                                <div class="col-md-4">
                                    <a style="background: #eb402d; border-radius: 5px; padding: 8px 10px;" href="#modal" data-toggle="modal" class="btn btn-default btn-sm js-sms-send disabled" data-url="/register/captcha/modal" data-sms-url="/edu_cloud/sms_send">
                                        <span id="js-time-left"></span>
                                        <span style="background: #eb402d;;border: 0;color: #fff;font-size: 14px;margin-top: 4px;" id="js-fetch-btn-text">获取验证码</span>
                                    </a>
                                </div>

                                <div id="errMsg"></div>
                            </div>
                        </div>



                        <div class="form-group">
                            <div class="controls" style="text-align: center">
                                <button style="width: 100%;padding: 10px;" type="submit" class="btn btn-primary" data-loading-text="提交中...">重设密码</button>
                            </div>
                        </div>

                        <input type="hidden" name="_csrf_token" value="FIG-fkQXNI2-zIFLHp70pDbMlxAt4K5EQN24ab8johY">
                    </form>
                </div>


            </div><!-- /panel -->

        </div>
    </div>




</div>

<#include "../common/sidebar.ftl">

<div id="login-modal" class="modal" data-url="/login/ajax"></div>
<div id="modal" class="modal"></div>
<div id="attachment-modal" class="modal"></div>

<script>
    var app = {};
    app.debug = false;
    app.version = '11.0.1.1';
    app.httpHost = '../index.html';
    app.basePath = '//scb1a9q0-sb.qiqiuyun.net';
    app.theme = 'jianmo';
    app.themeGlobalScript = 'theme/global-script';
    app.jsPaths = {"common":"common","theme":"\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js","schoolgatebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js","discountbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js","moneycardbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js","chargecoinbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js","homeworkbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js","userimporterbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js","gracefulthemebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js","questionplusbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js","vipbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js","couponbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js","customwebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js","customadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js","topxiawebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js","topxiaadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js","classroombundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js","materiallibbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js","sensitivewordbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js","permissionbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js","orgbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"};

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {"api":{"weibo":{"key":"3735672790"},"qq":{"key":"101291257"},"douban":{"key":""},"renren":{"key":""}},"cloud":{"video_player":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf","video_player_watermark_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf","video_player_fingerprint_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"},"loading_img_path":"\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"};

    app.arguments = {};
    app.controller = 'auth/password-reset';

    app.scripts = ["default\/header.js","es-bar\/index","notification\/notification"];

    app.uploadUrl = '../file/upload.html';
    app.imgCropUrl = '../file/img/crop.html';
    app.lessonCopyEnabled = '1';
    app.cloudSdkCdn = '';
    app.mainScript = '/js/app.js';
    app.lang = 'zh_CN';
</script>
<script src="/js/translator.min.js"></script>
<script src="/js"></script>
<script src="/js/sea.js"></script>
<script src="/js/seajs-style.js"></script>
<script src="/js/seajs-text.min.js"></script>
<script src="/js/seajs-global-config.js"></script>
<script>
    seajs.use(app.mainScript);
</script>
</body>

<!-- Mirrored from www.chinahadoop.cn/password/reset by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:13 GMT -->
</html>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<html lang="zh_CN" >

<!-- Mirrored from www.xuebusi.cn/register by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:18:00 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<#include "../common/head.ftl">
<body class="register" onbeforeunload="return CheckUnsave();">

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
            var curCategory = window.location.href.split('index.html')[3].toString()
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

        <div class="es-section login-section" style="position: relative;">
            <div class="logon-tab clearfix">
                <h2 class="reg">注册帐号</h2>
            </div>
            <div class="login-main">
                <form id="register-form" method="post" action="/u/register">
                    <#--<div class="form-group mbl">
                        <div class="controls">
                            <input type="text" id="register_emailOrMobile" name="emailOrMobile" required="required" class="form-control input-lg" data-url="/register/email_or_mobile/check" placeholder="手机号">
                        </div>
                    </div>

                    <div class="form-group mbl">
                        <div class="controls">
                            <input type="text" id="register_nickname" name="nickname" required="required" class="form-control input-lg" data-url="/register/nickname/check" placeholder="昵称">
                        </div>
                    </div>-->

                    <#if errMsg?exists >
                        <div class="alert alert-danger">${errMsg}</div>
                    </#if>

                    <div class="form-group mbl">
                        <div class="controls">
                            <input type="text" id="register_username" name="username" required="required" class="form-control input-lg" <#--data-url="/register/username/check"--> placeholder="用户名">
                        </div>
                    </div>
                    <div class="form-group mbl">
                        <div class="controls" style="position: relative">
                            <input type="password" id="register_password" name="password" required="required" class="form-control input-lg" placeholder="密码">
                            <div id="pwd-show"></div>
                            <style>
                                .es-wrap {
                                    background-image: url(/images/login_bg.png);
                                    background-repeat: no-repeat;
                                    background-size: 100%;
                                    padding-bottom: 40px;
                                }
                            </style>
                            <script>
                                window.onload = function(){
                                    var oInput = document.getElementById("register_password")
                                    var pwdShow = document.getElementById("pwd-show")

                                    pwdShow.onclick = function(){
                                        if(oInput.type =='password'){
                                            oInput.type ='text'
                                            pwdShow.style.backgroundImage = 'url(/images/pwd_show.png)'
                                        }else {
                                            oInput.type ='password'
                                            pwdShow.style.backgroundImage = 'url(/images/pwd_hide.png)'
                                        }
                                    }
                                }
                            </script>
                        </div>
                    </div>
                    <#--<div class="form-group mbl js-captcha">
                        <div class="controls row">
                            <div class = "col-xs-5" style="padding: 0">
                                <input type="text" class="form-control input-lg" id="captcha_code" name="captcha_code" maxlength="5" placeholder="验证码" required="required"  data-url="/register/captcha/check" >
                            </div>
                            <div class="col-xs-7" style="padding-right: 0;">
                                <img src="/images/reg_captcha.jpg" data-url="/captcha_num" id="getcode_num" title="看不清，点击换一张" style="cursor:pointer;height:40px;width:100%">
                            </div>

                        </div>

                        <div id="changeNum" style="color:#333; float: right; width: 15%;"><a href="javascript:;">换一张</a></div>

                    </div>
                    <div class="form-group mbl hidden email_mobile_msg" style="margin-bottom: 10px !important;">
                        <div class="controls row" >
                            <div class = "col-xs-7" style=" padding: 0;" >
                                <input type="number" class="form-control input-lg" id="sms_code" name="sms_code" placeholder="验证码" required="required" data-url="/edu_cloud/sms_check/sms_registration">
                                <p class="help-block"> </p>
                            </div>
                            <div class="col-xs-5">
                                <a style="padding: 9px 16px;background: #eb402d;color: #fff;border-radius: 8px;" href="#modal" data-toggle="modal" class="btn btn-default btn-lg js-sms-send disabled" data-url="/register/captcha/modal" data-sms-url="/edu_cloud/sms_send">
                                    <span id="js-time-left"></span>
                                    <span style="font-size: 12px" id="js-fetch-btn-text">获取短信验证码</span>
                                </a>
                            </div>
                        </div>
                    </div>-->

                    <div class="form-group mbl">
                        <div class="controls">
                            <label>
                                <input type="checkbox" id="user_terms" checked="checked"> 我已阅读并同意<a href="userterms.html" target="_blank">《服务协议》</a>
                            </label>
                        </div>
                    </div>

                    <div class="form-group mbl">
                        <div class="controls">
                            <button type="submit" id="register-btn" <#--data-submiting-text="正在提交"--> class="btn btn-primary btn-lg btn-block">注册</button>
                        </div>
                        <#--<div class="controls" style="margin-top:15px;">
                            <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wxbd41a67ab16689b6&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.xuebusi.cn%2Flogin%2Fbind%2Fweixinweb%2Fcallback%3Ftoken%3DFxXbpyMN5zgsbOK6eWLH3nrs3y6MLtzf&amp;scope=snsapi_login" id="wx-reg-btn" data-submiting-text="正在跳转" class="btn btn-primary btn-lg btn-block">微信注册</a>
                        </div>-->
                    </div>

                    <input type="hidden" name="_csrf_token" value="FIG-fkQXNI2-zIFLHp70pDbMlxAt4K5EQN24ab8johY">

                </form>

                <div class="social-login" style="display: none">
                    <span>
                        <a href="https://api.weibo.com/oauth2/authorize?client_id=3735672790&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.xuebusi.cn%2Flogin%2Fbind%2Fweibo%2Fcallback%3Ftoken%3DtYIXzdY5F5kAaUqjAbxe0hsyvSnLP1sU" class="social-icon social-weibo">
                            <i class="es-icon es-icon-weibo"></i>
                        </a>

                        <a href="https://graph.qq.com/oauth2.0/authorize?client_id=101291257&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.xuebusi.cn%2Flogin%2Fbind%2Fqq%2Fcallback%3Ftoken%3DBsGdnJEbscVK3d7e1FH2sXIUREb2d1Fw&amp;status=pro" class="social-icon social-qq">
                            <i class="es-icon es-icon-qq"></i>
                        </a>

                        <a href="https://open.weixin.qq.com/connect/qrconnect?appid=wxbd41a67ab16689b6&amp;response_type=code&amp;redirect_uri=http%3A%2F%2Fwww.xuebusi.cn%2Flogin%2Fbind%2Fweixinweb%2Fcallback%3Ftoken%3DnhEcPuhejxGKvWqy6ctnG4bsIVVGp6Rf&amp;scope=snsapi_login" class="social-icon social-weixin">
                            <i class="es-icon es-icon-weixin"></i>
                        </a>
                    </span>
                    <div class="line"></div>
                </div>
            </div>
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
    app.httpHost = 'index.html';
    app.basePath = '//scb1a9q0-sb.qiqiuyun.net';
    app.theme = 'jianmo';
    app.themeGlobalScript = 'theme/global-script';
    app.jsPaths = {"common":"common","theme":"\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js","schoolgatebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js","discountbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js","moneycardbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js","chargecoinbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js","homeworkbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js","userimporterbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js","gracefulthemebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js","questionplusbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js","vipbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js","couponbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js","customwebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js","customadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js","topxiawebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js","topxiaadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js","classroombundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js","materiallibbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js","sensitivewordbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js","permissionbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js","orgbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"};

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {"api":{"weibo":{"key":"3735672790"},"qq":{"key":"101291257"},"douban":{"key":""},"renren":{"key":""}},"cloud":{"video_player":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf","video_player_watermark_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf","video_player_fingerprint_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"},"loading_img_path":"\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"};

    app.arguments = {};
    app.controller = 'auth/register';

    app.scripts = ["default\/header.js","auth\/isWeiXin","es-bar\/index","notification\/notification"];

    app.uploadUrl = 'file/upload.html';
    app.imgCropUrl = 'file/img/crop.html';
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

<!-- Mirrored from www.xuebusi.cn/register by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:18:01 GMT -->
</html>

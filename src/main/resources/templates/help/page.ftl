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
        <div class="es-section">
            <div class="section-header">
                <h1>用户服务使用协议</h1>
            </div>
            <p style="margin-left:36pt; text-align:center"><span style="font-size:16px;"><strong>学布斯教育学院服务使用协议的接受</strong></span>
            </p>
            <ul>
                <li style="text-align:left"><strong>1. </strong><strong>约定：</strong>
                </li>
            </ul>
            <p style="margin-left:72pt">通过访问和/或使用本网站，您表示同意接受本协议的所有条件和条款。北京学布斯教育科技有限公司（以下简称“学布斯教育学院”）作为运营者依据本协议为您提供服务。如果您不愿接受本协议的全部条件和条款，请您不要访问或使用本网站。</p>
            <ul>
                <li style="text-align:left"><strong>2. </strong><strong>本协议的变更和修改</strong>
                </li>
            </ul>
            <p style="margin-left:72pt">学布斯教育学院有权随时对本协议进行修改，并且一旦发生协议条款的变动，学布斯教育学院将在相关页面上提示修改的内容；用户如果不同意本协议的修改，可以放弃使用或访问本网站或取消已经获得的服务；如果用户选择在本协议变更后继续访问或使用本网站，则视为用户已经接受本协议的修改。</p>
            <ul>
                <li style="text-align:left"><strong>3. </strong><strong>服务说明</strong>
                </li>
            </ul>
            <p style="margin-left:72pt">（1）学布斯教育学院是一个向广大用户提供技术交流和培训的服务平台。</p>
            <p style="margin-left:72pt">（2）学布斯教育学院运用自己的系统通过互联网向用户提供服务，除非另有明确规定，增强或强化目前服务的任何新功能，包括新产品以及新增加的服务，均无条件地适用本协议。</p>
            <ul>
                <li style="text-align:left"><strong>4. </strong><strong>用户行为</strong>
                </li>
            </ul>
            <p style="margin-left:22.5pt">4.1 用户帐号、密码和安全</p>
            <p style="margin-left:22.5pt">用户一旦注册成功，便成为学布斯教育学院的合法用户，将得到一个密码和帐号。用户应采取合理措施维护其密码和帐号的安全。用户对利用该密码和帐号所进行的一切活动负全部责任；由该等活动所导致的任何损失或损害由用户承担，学布斯教育学院不承担任何责任。</p>
        </div>
    </div>
    <#include "../common/footer.ftl">
</div>
<!-- 侧边栏快捷操作 -->
<div class="es-bar hidden-xs">
    <!-- 左侧列表 -->
    <div class="es-bar-menu">
        <ul class="bar-menu-top">
            <li data-id="#bar-user-center" class="bar-user"> <a href="javascript:;" data-url="/esbar/my/study_center">学<br>习<br>中<br>心</a>

            </li>
            <li data-id="#bar-homework" data-toggle="tooltip" data-placement="left" title="我的考试/作业"><a href="javascript:;" data-url="/esbar/my/practice/reviewing"><i class="es-icon es-icon-edit"></i></a>
            </li>
            <li data-id="#bar-course-list" data-placement="left" data-toggle="tooltip" title="我的课程/班级">
                <a data-url="/esbar/my/course" href="javascript:;"> <i class="es-icon es-icon-book">
                </i>

                </a>
            </li>
            <li data-id="#bar-message" data-toggle="tooltip" data-placement="left" title="通知">
                <a href="javascript:;"> <i class="es-icon es-icon-notifications"></i>

                </a>
            </li>
        </ul>
        <ul class="bar-menu-sns">
            <li class="popover-btn bar-weixin-btn" data-container=".bar-weixin-btn" data-content-element="#bar-weixin-content"> <a><i class="es-icon es-icon-weixin"></i></a>

            </li>
            <li> <a href="62.html" target="_blank">常<br>见<br>问<br>题</a>

            </li>
            <li data-toggle="tooltip" data-placement="left" title="手机端"> <a href="../mobile/index.html" target="_blank"><i class="es-icon es-icon-phone1"></i></a>

            </li>
            <li class="go-top" style="margin:-10px auto 0 auto;" data-toggle="tooltip" data-placement="left" title="回到顶端">
                <a href="javascript:;"> <i class="es-icon es-icon-keyboardarrowup" style="margin-bottom:-8px"></i>
                    <span class="text-sm">TOP</span>

                </a>
            </li>
        </ul>
    </div>
    <!-- 列表内容 -->
    <div class="bar-popover-content" style="display:none;">
        <div id="bar-qq-content">
            <div class="row"></div>
        </div>
        <div id="bar-phone-content"></div>
        <div id="bar-weixin-content">
            <img width="110" class="img-responsive" src="../../scb1a9q0-sb.qiqiuyun.net/files/system/2017/03-01/130411b055cb3265623ecc.jpg?time=1488344657?time=1488355868?time=1488355914?11.0.1.1" alt="">
        </div>
    </div>
    <script language="javascript" type="text/javascript">
        NTKF_PARAM = {
            siteid: "kf_9301",
            settingid: "kf_9301_1464941748211",
            uid: "",
            uname: "",
            isvip: "0",
            userlevel: "1",
            erpparam: "abc"
        }
    </script>
    <script type="text/javascript" src="../../dl.ntalker.com/js/xn6/ntkfstatceb9.js?siteid=kf_9301" charset="utf-8"></script>
</div>
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
    app.jsPaths = {
        "common": "common",
        "theme": "\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js",
        "schoolgatebundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js",
        "discountbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js",
        "moneycardbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js",
        "chargecoinbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js",
        "homeworkbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js",
        "userimporterbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js",
        "gracefulthemebundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js",
        "questionplusbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js",
        "vipbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js",
        "couponbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js",
        "customwebbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js",
        "customadminbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js",
        "topxiawebbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js",
        "topxiaadminbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js",
        "classroombundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js",
        "materiallibbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js",
        "sensitivewordbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js",
        "permissionbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js",
        "orgbundle": "\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"
    };

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {
        "api": {
            "weibo": {
                "key": "3735672790"
            },
            "qq": {
                "key": "101291257"
            },
            "douban": {
                "key": ""
            },
            "renren": {
                "key": ""
            }
        },
        "cloud": {
            "video_player": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf",
            "video_player_watermark_plugin": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf",
            "video_player_fingerprint_plugin": "http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"
        },
        "loading_img_path": "\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"
    };

    app.arguments = {};

    app.scripts = ["default\/header.js", "es-bar\/index", "notification\/notification"];

    app.uploadUrl = '../file/upload.html';
    app.imgCropUrl = '../file/img/crop.html';
    app.lessonCopyEnabled = '1';
    app.cloudSdkCdn = '';
    app.mainScript = '/js/app.js';
    app.lang = 'zh_CN';
</script>
<script src="/js/translator.min.js"></script>
<script src="/js/js"></script>
<script src="/js/sea.js"></script>
<script src="/js/seajs-style.js"></script>
<script src="/js/seajs-text.min.js"></script>
<script src="/js/seajs-global-config.js"></script>
<script>
    seajs.use(app.mainScript);
</script>
</body>
<!-- Mirrored from www.xuebusi.cn/page/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:16 GMT -->

</html>
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
                <a class="btn btn-primary  nav-btn back-course-btn" href="/course/136">
                    <span class="glyphicon glyphicon-chevron-left"></span> 返回课程
                </a>
            </div>
            <p style="margin-left:36pt; text-align:center">
                <h1>普通程序员如何转型到人工智能领域</h1>
            </p>
            <div id="video-container" style="margin: 0px auto;">

            </div>
            <script src="http://imgcache.qq.com/open/qcloud/video/vcplayer/TcPlayer-2.2.0.js"></script>
            <script>
                (function(){
                    function getParams(name) {
                        var reg = new RegExp('(^|&)' + name + '=([^&]*)(&|$)', 'i');
                        var r = window.location.search.substr(1).match(reg);
                        if (r != null) {
                            return decodeURIComponent(r[2]);
                        }
                        return null;
                    }
                    var rtmp = getParams('rtmp'),
                            flv  = getParams('flv'),
                            m3u8 = getParams('m3u8'),
                            mp4  = getParams('mp4'),
                            live = (getParams('live') == 'true' ? true : false),
                            coverpic = getParams('coverpic'),
                            width = getParams('width'),
                            height = getParams('height'),
                            autoplay = (getParams('autoplay') == 'true' ? true : false);
                    /**
                     * 视频类型播放优先级
                     * mobile ：m3u8>mp4
                     * PC ：RTMP>flv>m3u8>mp4
                     */
                    var options = {
                        rtmp: rtmp,
                        flv: flv  ,
                        flv_hd: flv ,
                        flv_sd: flv ,
                        m3u8: m3u8 || 'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f240.m3u8',
                        m3u8_hd: m3u8 || 'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f230.m3u8',
                        m3u8_sd: m3u8 || 'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f220.m3u8',
                        mp4 : mp4 || 'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f40.mp4',
                        mp4_hd :  'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f40.mp4',
                        mp4_sd :  'http://1251132611.vod2.myqcloud.com/4126dd3evodtransgzp1251132611/8a592f8b9031868222950257296/f0.f20.mp4',
                        coverpic: coverpic ,
                        autoplay: autoplay ? true : false,
                        live: live,
                        width : width || '480',
                        height : height || '320'
                    };
                    var player = new TcPlayer('video-container', options);
                    window.tcplayer  = player;
                })();
            </script>

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
    app.mainScript = '../../scb1a9q0-sb.qiqiuyun.net/bundles/topxiaweb/js/appce61.js?11.0.1.1';
    app.lang = 'zh_CN';
</script>
<script src="../../scb1a9q0-sb.qiqiuyun.net/bundles/bazingajstranslation/js/translator.mince61.js?11.0.1.1"></script>
<script src="../translations/js"></script>
<script src="../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs/2.2.1/seace61.js?11.0.1.1"></script>
<script src="../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-style/1.0.2/seajs-stylece61.js?11.0.1.1"></script>
<script src="../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-text/1.1.1/seajs-text.mince61.js?11.0.1.1"></script>
<script src="../../scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs-global-configce61.js?11.0.1.1"></script>
<script>
    seajs.use(app.mainScript);
</script>
</body>
<!-- Mirrored from www.xuebusi.cn/page/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:16 GMT -->

</html>
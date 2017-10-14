<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<html lang="zh_CN" >
<#include "../common/head.ftl">
<body class="lesson-dashboard-page" onbeforeunload="return CheckUnsave();">

<div class="es-wrap">


    <div class="lesson-dashboard" id="lesson-dashboard"
         data-course-id="136"
         data-course-uri="/course/136"
         data-dashboard-uri="/course/136/learn"
         data-watch-limit=""
         data-starttime=""
         data-hide-media-lesson-learn-btn="">
        <div class="dashboard-content">
            <a class="btn btn-primary  nav-btn back-course-btn" href="/course/136"><span
                    class="glyphicon glyphicon-chevron-left"></span> 返回课程</a>

            <a class="btn btn-primary  nav-btn prev-lesson-btn" href="javascript:" data-role="prev-lesson"
               data-placement="right" title="上一课时"><span class="glyphicon glyphicon-chevron-up"
                                                         title="上一课时"></span></a>
            <a class="btn btn-primary nav-btn next-lesson-btn" href="javascript:" data-role="next-lesson"
               data-placement="right" title="下一课时"><span class="glyphicon glyphicon-chevron-down"></span></a>

            <div class="dashboard-header">
                <div class="pull-left title-group">
          <span class="chapter-label">
                        第<span
                  data-role="chapter-number"></span>章</span>
                    <span class="divider">&raquo;</span>
          <span class="chapter-label">
                      第<span
                  data-role="unit-number"></span>节</span>
                    <span class="divider">&raquo;</span>
          <span class="item-label">课时<span
                  data-role="lesson-number"></span></span>
                    <span class="item-title" data-role="lesson-title">正在加载...</span>
                </div>
            </div>

            <div class="dashboard-body">
                <div class="lesson-content" id="lesson-video-content" data-role="lesson-content" style="display:none;"
                     data-watermark="http://scb1a9q0-sb.qiqiuyun.net/files/system/watermark_1470976042.png"
                     data-fingerprint="www.xuebusi.cn xuebusi"
                     data-user-id="60992"
                     data-balloon-player="1"
                        ></div>
                <div class="watermarkEmbedded"></div>

                <div class="lesson-content lesson-content-audio" id="lesson-audio-content" data-role="lesson-content"
                     style="display:none;"></div>
                <div class="lesson-content" id="lesson-swf-content" data-role="lesson-content" style="display:none;"></div>
                <div class="lesson-content" id="lesson-iframe-content" data-role="lesson-content" style="display:none;"></div>
                <div class="lesson-content lesson-content-text" id="lesson-text-content" data-role="lesson-content"
                     style="display:none;"
                     oncopy="return false;" oncut="return false;" onselectstart="return false" oncontextmenu="return false;">
                    <div class="lesson-content-text-body"></div>
                </div>

                <div class="lesson-content lesson-content-document" id="lesson-document-content" data-role="lesson-content"
                     style="display:none;"
                        >
                    <div class="lesson-content-document-body"></div>
                </div>

                <div class="lesson-content lesson-content-text" id="lesson-live-content" data-role="lesson-content"
                     style="display:none;">
                    <div class="lesson-content-text-body"></div>
                </div>
                <div class="lesson-content lesson-content-text" id="lesson-unpublished-content" data-role="lesson-content"
                     style="display:none;">
                    <div class="lesson-content-text-body">当前课时正在编辑中，暂时无法观看。</div>
                </div>

                <div class="lesson-content lesson-content-text" id="lesson-testpaper-content" data-role="lesson-content"
                     style="display:none;">
                    <div class="lesson-content-text-body"></div>
                </div>
                <div class="lesson-content lesson-content-text" id="lesson-ppt-content" data-role="lesson-content"
                     style="display:none;"
                        >
                    <div class="lesson-content-text-body"></div>
                </div>

            </div>

            <div class="dashboard-footer clearfix">
                <div class="pull-right">
                    <a class="btn btn-primary finish-btn" href="http://wenda.xuebusi.cn/publish/" target="_blank"><span class="glyphicon glyphicon-unchecked"></span> 提问问题</a>
                    <a class="btn btn-primary finish-btn" href="/course/136/material/" target="_blank"><span class="glyphicon glyphicon-unchecked"></span> 资料下载</a>
                    <button class="btn btn-primary finish-btn" data-role="finish-lesson" style="display:none;"><span
                            class="glyphicon glyphicon-unchecked"></span> 学过了</button>
                </div>
            </div>
        </div>

        <div class="toolbar toolbar-open" id="lesson-dashboard-toolbar">
            <div class="toolbar-nav">

                <ul class="toolbar-nav-stacked" id="lesson-toolbar-primary"></ul>
                <ul class="list-unstyled">
                    <li class="es-qrcode toolbar-qrcode" data-url="/course/136">
                        <i class="es-icon es-icon-qrcode"></i><br>
                        扫一扫
            <span class="qrcode-popover">
              <img src="" alt="">
              扫二维码继续学习
              二维码时效为半小时
            </span>
                    </li>
                </ul>
                <ul class="toolbar-nav-stacked" id="lesson-toolbar-secondary">
                    <li class="hide-pane" style="display:none;">
                        <a href="javascript:"><span class="glyphicon glyphicon-chevron-right"></span></a>
                    </li>
                </ul>

            </div>
            <div class="toolbar-pane-container">
            </div>
        </div>

    </div>

    <div class="modal" id="course-learned-modal" style="display:none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">学习进度提示</h4>
                </div>
                <div class="modal-body">
                    <p class="text-success">赞一个，这个课程你已经都学完啦，你可以再回顾一下或者去看看别的课程～～～</p>
                </div>
                <div class="modal-footer">
                    <a href="/course/136" class="btn btn-primary">回课程主页</a>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal" id="mediaPlayed-control-modal" style="display:none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">媒体课时学习提示</h4>
                </div>
                <div class="modal-body">
                    <p class="text-success">此课时设置了必须完整播放完整个课时才能学完～～</p>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal" id="homeworkDone-control-modal" style="display:none;">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title">作业未完成提示</h4>
                </div>
                <div class="modal-body">
                    <p class="text-success">此课时设置了必须做完本课时作业并提交后才能学完～～</p>
                </div>
            </div><!-- /.modal-content -->
        </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="hidden jweixin-data"
         data-config="{&quot;appId&quot;:&quot;wxe9c061d2aed9ae09&quot;,&quot;timestamp&quot;:1507534081,&quot;nonceStr&quot;:&quot;edusoho59db250187eba&quot;,&quot;jsApiList&quot;:[&quot;onMenuShareTimeline&quot;,&quot;onMenuShareAppMessage&quot;,&quot;onMenuShareQZone&quot;,&quot;onMenuShareQQ&quot;],&quot;string&quot;:&quot;jsapi_ticket=sM4AOVdWfPE4DxkXGEs8VEFBLv_oYA1_Wo8T3MxNWVTc4agYvpylPwobBaOSeDvfH8DYpf8AcgnY4sSI0mLWYg&amp;noncestr=edusoho59db250187eba&amp;timestamp=1507534081&amp;url=http:\/\/www.xuebusi.cn\/course\/136\/learn&quot;,&quot;signature&quot;:&quot;58a15298a79fa177ab164301e0660b1d1a72b7e1&quot;}"
         data-title="机器智能和2%的人类——吴军"
         data-desc='特别声明：清华大学公开课是由清华大学数据科学研究院、清华大数据产业联合会发起的，从大数据的“应用•创新”及“技术•前沿“等系列技术公开课，学布斯教育学院倾力合作为系列公开课提供视频服务。一、内容简介2014年12月12日晚19：30，来自腾讯公司的吴军博士作为清华大数据“应用•创新”系列讲座的开讲嘉宾，为清华师生及清华大数据产业联合会的业界人士做了一场精彩生动的讲座。演讲题目：《机器智能和2%的人类》演讲提纲：-大数据的本质与特点-机器智能-大数据对未来世界的影响二、演讲人：吴军博士是自然语言处理与搜索专家，美国约翰霍普金斯大学博士，原腾讯搜索业务的副总裁,著名的自然语言处理与搜索专家。他曾获得1995年的全国人机语音智能接口会议的最佳论文奖和2000年Eurospeech的最佳论文奖。吴军于2002年入职谷歌，在2010年加盟腾讯并担任国家重大专项“新一代搜索引擎和浏览器”项目的总负责人。硅谷著名投资人,畅销书《数学之美》《浪潮之巅》《文明之光》的作者,也是国家重大专项“新一代搜索引擎和浏览器”项目的总负责人，获得过11项美国和国际专利。敬请关注：清华@数据派ID:Datapi清华大数据产业联合会的微信公众平台，靠扎实的理工功底与清华校友背景闯荡“数据江湖”。数据派旨在传播数据科学理念，分享数据运营心得，扩展数据应用空间，捕捉数据产业商机。欢迎各路大侠在此“过招“!三、联系我们：学布斯教育学院的微信公众号：xuebusi四、报名成功后：已经报名成功后，请认真阅读“参课须知”，并加入公开课QQ群。我们的公开课将采用QQ群视频的教育模式，请提前升级QQ到最新版本，旧版本可能不支持教育模式，谢谢你的参加。注意事项：请确定使用QQ最新版本（需要使用windows环境下QQ2013SP5及以上版本），下载链接如下（如果不使用最新版本的QQ，将不支持群视频教育模式！）：http://im.qq.com/download/pc.shtml，参加之前，请自行准备好耳机和麦克风！'
         data-link="http://www.xuebusi.cn/course/136/learn"
         data-img-url="http://scb1a9q0-sb.qiqiuyun.net/files/course/2014/12-26/233212ccfa8c648517.png"
         data-type=""
         data-data-url="">
    </div>




</div>



<div id="login-modal" class="modal" data-url="/login/ajax"></div>
<div id="modal" class="modal"></div>
<div id="attachment-modal" class="modal"></div>

<script>
    var app = {};
    app.debug = false;
    app.version = '11.0.1.1';
    app.httpHost = 'http://www.xuebusi.cn';
    app.basePath = '//scb1a9q0-sb.qiqiuyun.net';
    app.theme = 'jianmo';
    app.themeGlobalScript = 'theme/global-script';
    app.jsPaths = {"common":"common","theme":"\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js","schoolgatebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js","discountbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js","moneycardbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js","chargecoinbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js","homeworkbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js","userimporterbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js","gracefulthemebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js","questionplusbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js","vipbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js","couponbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js","customwebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js","customadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js","topxiawebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js","topxiaadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js","classroombundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js","materiallibbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js","sensitivewordbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js","permissionbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js","orgbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"};

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {"api":{"weibo":{"key":"3735672790"},"qq":{"key":"101291257"},"douban":{"key":""},"renren":{"key":""}},"cloud":{"video_player":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf","video_player_watermark_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf","video_player_fingerprint_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"},"loading_img_path":"\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"};

    app.arguments = {};
    app.controller = 'course/learn';
    app.arguments = {"customChapter":"1","plugins":["lesson","question","note","material","homework"]};

    app.scripts = ["common\/weixin-share"];

    app.uploadUrl = '/file/upload';
    app.imgCropUrl = '/file/img/crop';
    app.lessonCopyEnabled = '1';
    app.cloudSdkCdn = '';
    app.mainScript = '//scb1a9q0-sb.qiqiuyun.net/bundles/topxiaweb/js/app.js?11.0.1.1';
    app.lang = 'zh_CN';
</script>
<script src="//scb1a9q0-sb.qiqiuyun.net/bundles/bazingajstranslation/js/translator.min.js?11.0.1.1"></script>
<script src="http://www.xuebusi.cn/translations/js"></script>
<script src="//scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs/2.2.1/sea.js?11.0.1.1"></script>
<script src="//scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-style/1.0.2/seajs-style.js?11.0.1.1"></script>
<script src="//scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs/seajs-text/1.1.1/seajs-text.min.js?11.0.1.1"></script>
<script src="//scb1a9q0-sb.qiqiuyun.net/assets/libs/seajs-global-config.js?11.0.1.1"></script>
<script>
    seajs.use(app.mainScript);
</script>
</body>
</html>

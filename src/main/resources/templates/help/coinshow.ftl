<!-- 金币说明 -->
<!DOCTYPE html>
<!-- saved from url=(0035)/coin/show -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">
<body class="coin-detail-page" onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement"
     style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

<div class="es-wrap">

    <div class="alert alert-warning alert-notice announcements-alert hidden-xs" role="alert">
        <div class="container swiper-container">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <i class="es-icon es-icon-infooutline mrm"></i>
                    <a style="color:#ff5e06" class="alert-link" href="/course/1"
                       target="_blank">
                        内容再升级，《分布式爬虫实战》第三期，杨真主讲，11月3日开课
                    </a>
                </div>

            </div>
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                <span aria-hidden="true">×</span>
            </button>
        </div>
    </div>
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
    <#include "../common/header-login.ftl">

    <div id="content-container" class="container">
        <div class="es-section">
            <div class="section-header"><h1>金币说明</h1></div>

            <p>金币可用于购买小象学院上的在线课程。</p>

        </div>
    </div>
    <#include "../common/footer.ftl">

</div>

<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">

<script language="javascript" type="text/javascript">
    var avatarUrl = 'http://scb1a9q0-sb.qiqiuyun.net/files/user/2017/10-28/144327f261a2577162.jpg',
            avatarPic = avatarUrl.replace('http:', 'http://' + window.location.host)
    zhuge.identify('60992', {
        name: 'xuebusi',
        avatar: avatarPic
    });
    zhuge.track('页面打开', {
        '页面名称': document.title
    });
    function zhugeTrack(evName, obj) {
        zhuge.track(evName, obj)
    }
</script>
<#include "../common/login-modal.ftl">

</body>
</html>
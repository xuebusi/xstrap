<!DOCTYPE html>
<!-- saved from url=(0033)/my/coin -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement"
     style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

<div class="es-wrap">
    <#include "../../common/alert-notice.ftl">
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
    <#include "../../common/header-login.ftl">

    <div id="content-container" class="container">
        <div class="row">
        <#include "../../common/account-sidenav.ftl">
            <div class="col-md-9">
                <div class="es-section h400">
                    <ul class="nav nav-tabs">
                        <li class="active">
                            <a href="/my/coin">我的金币</a>
                        </li>
                        <li class="">
                            <a href="/my/bill">我的现金账单
                            </a>
                        </li>
                        <li class="highlight" style="left: 0px; width: 144px; overflow: hidden;"></li>
                    </ul>
                    <span class="label label-primary label-md">账户余额</span>
                    <a href="/coin/show" target="_blank" class="pull-right">金币说明</a>
                    <br>

                    <div class="coin-block clearfix">
                        <div class="coin-text">
                            <img class="coin-picture"
                                 src="http://scb1a9q0-sb.qiqiuyun.net/files/coin/logo_1421760643_50*50.jpg?11.0.2.5"
                                 alt="虚拟币图片" width="30px">
                            <strong>0.00</strong>
                        </div>

                    </div>
                    <hr>
                    <br>

                    <div class="table-responsive">
                        <div class="empty">暂无记录</div>
                        <table class="table table-striped">

                        </table>
                    </div>
                    <nav class="text-center">

                    </nav>
                </div>
            </div>
        </div>
    </div>
<#include "../../common/footer.ftl">
</div>

<!-- 侧边栏快捷操作 -->
<#include "../../common/sidebar.ftl">

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

<#include "../../common/login-modal.ftl">

</body>
</html>
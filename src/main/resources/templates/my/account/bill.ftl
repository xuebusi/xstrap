<!DOCTYPE html>
<!-- saved from url=(0033)/my/bill -->
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
                        <li class="">
                            <a href="/my/coin">我的金币</a>
                        </li>
                        <li class="active">
                            <a href="/my/bill">我的现金账单
                            </a>
                        </li>
                        <li class="highlight" style="left: 144px; width: 176px; overflow: hidden;"></li>
                    </ul>

                    <form id="user-search-form" class="form-inline well well-sm"
                          action="/my/bill" method="get" novalidate="">
                        <div class="form-group">
                            <select class="form-control" name="lastHowManyMonths" onchange="submit();">
                                <option value="" selected="selected">全部记录</option>
                                <option value="oneWeek">最近一周</option>
                                <option value="twoWeeks">最近两周</option>
                                <option value="oneMonth">最近一个月</option>
                                <option value="twoMonths">最近两个月</option>
                                <option value="threeMonths">最近三个月</option>
                            </select>
                        </div>

                        <div class="control-label pull-right" style="padding-top: 8px;">
                            收入：<span style="color:#1bb974;">0</span>&nbsp;元&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            支出：<span style="color:#ff7b0e;">0</span>&nbsp;元
                        </div>
                    </form>
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
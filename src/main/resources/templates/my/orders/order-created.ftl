<!DOCTYPE html>
<!-- saved from url=(0050)/my/orders?status=created -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

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
                    <div class="section-header"><h3>我的订单</h3></div>


                    <ul class="nav nav-pills" role="tablist">
                        <li role="presentation"><a href="/my/orders?status=">全部订单</a></li>
                        <li role="presentation" class="active"><a
                                href="/my/orders?status=created">待付款<span
                                class="badge">0</span></a></li>
                        <li role="presentation"><a href="/my/orders?status=paid">已付款</a></li>
                    </ul>
                    <br>

                    <form id="user-search-form" class="form-inline well well-sm"
                          action="/my/orders?status=created" method="get" novalidate="">
                        <input type="hidden" name="status" value="created">

                        <div class="form-group">
                            <select class="form-control" name="lastHowManyMonths" onchange="submit();">
                                <option value="oneWeek">最近一周</option>
                                <option value="twoWeeks">最近两周</option>
                                <option value="oneMonth">最近一个月</option>
                                <option value="twoMonths">最近两个月</option>
                                <option value="threeMonths">最近三个月</option>
                                <option value="" selected="selected">全部记录</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <select class="form-control" name="payWays" onchange="submit();">

                                <option value="alipay">支付宝</option>
                                <option value="wxpay">微信支付</option>
                                <option value="heepay">网银支付</option>
                                <option value="quickpay">快捷支付</option>
                                <option value="llpay">连连支付</option>
                                <option value="bankpay">银行直付</option>
                                <option value="none">其他支付</option>
                                <option value="" selected="selected">支付方式</option>
                            </select>
                        </div>
                    </form>
                    <div class="table-responsive">
                        <table class="table table-striped table-hover" id="orders-table">

                            <thead>
                            <tr>
                                <th>订单名称</th>
                                <th>创建时间</th>
                                <th>状态</th>
                                <th>实付(元)</th>
                                <th>支付方式
                                    <span data-toggle="popover"
                                          class="glyphicon glyphicon-question-sign color-gray text-sm js-pay-way-popover"></span>

                                    <div class="popover-content hidden" style="width:100px;">
                                        <div class="popover-item">
                                            <div class="content">站外支付为该笔订单是通过导入或者手动添加的方式产生的，故为站外支付</div>
                                        </div>
                                    </div>
                                </th>
                                <th style="min-width:100px">操作</th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td colspan="20">
                                    <div class="empty">暂无订单记录</div>
                                </td>
                            </tr>
                            </tbody>
                        </table>
                    </div>

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
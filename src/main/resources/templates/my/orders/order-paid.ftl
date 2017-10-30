<!DOCTYPE html>
<!-- saved from url=(0047)/my/orders?status=paid -->
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
                    <div class="section-header">
                        <h3>我的订单</h3>
                    </div>
                    <ul class="nav nav-pills" role="tablist">
                        <li role="presentation">
                            <a href="/my/orders?status=">全部订单</a>
                        </li>
                        <li role="presentation">
                            <a href="/my/orders?status=created">待付款<span class="badge">0</span>
                            </a>
                        </li>
                        <li role="presentation" class="active">
                            <a href="/my/orders?status=paid">已付款</a>
                        </li>
                    </ul>
                    <br>

                    <form id="user-search-form" class="form-inline well well-sm"
                          action="/my/orders?status=paid" method="get" novalidate="">
                        <input type="hidden" name="status" value="paid">

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
                            <tr id="order-table-180647" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/1049" target="_blank"><strong>购买课程《《用Python进行员工离职原因分析及预测》》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017102115423020729</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-21 15:42:30</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-21 15:42:30</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/180647/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-175220" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/4" target="_blank"><strong>购买课程《手把手教你玩转小米Minos——小米
                                        武泽胜》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017101020540218952</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-10 20:54:02</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-10 20:54:02</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/175220/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-173868" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/136" target="_blank"><strong>购买课程《机器智能和2%的人类——吴军》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017100913444538997</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-09 13:44:45</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-09 13:44:45</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/173868/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-173867" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/528" target="_blank"><strong>购买课程《备战数学建模地区赛》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017100913425564564</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-09 13:42:55</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-09 13:42:55</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/173867/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-173252" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/12" target="_blank"><strong>购买课程《Hadoop/HBase实践及修改——冼茂源》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017100614404038685</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-06 14:40:40</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-06 14:40:40</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/173252/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-173251" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/1017" target="_blank"><strong>购买课程《普通程序员如何转型到人工智能领域》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017100614401037217</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-10-06 14:40:10</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-10-06 14:40:10</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/173251/detail">详情</a>
                                    </div>
                                </td>
                            </tr>
                            <tr id="order-table-144835" style="word-break: break-all;word-wrap: break-word;">
                                <td>
                                    <a href="/course/986" target="_blank"><strong>购买课程《实用机器学习方法——集成学习》</strong></a>
                                    <br>
                                    <span class="text-muted text-sm">订单号：C2017080501504386132</span>
                                </td>
                                <td><span class="text-muted text-sm">2017-8-05 01:50:43</span></td>
                                <td><span class="label label-success">已付款</span>
                                </td>
                                <td><span class="money-text">0.00</span></td>
                                <td>
                                    --
                                    <br>
                                    <span class="text-muted text-sm">2017-8-05 01:50:43</span>
                                </td>
                                <td>

                                    <div class="btn-group">
                                        <a href="javascript:;" class="btn btn-sm btn-default" data-toggle="modal"
                                           data-target="#modal" data-url="/my/order/144835/detail">详情</a>
                                    </div>
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
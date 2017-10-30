<!DOCTYPE html>
<!-- saved from url=(0078)/pay/center?sn=C2017102922375190611&targetType=course -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">

<div class="es-wrap">

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
        <div class="order-pay">

            <div class="es-section">
                <ul class="es-step es-step-3 clearfix">
                    <li class="done"><span class="number"><i class="es-icon es-icon-done"></i></span>订单确认</li>
                    <li class="doing"><span class="number">2</span>订单支付</li>
                    <li><span class="number">3</span>订单完成</li>
                </ul>
                <div class="order-pay-body">
                    <div class="alert alert-success alert-dismissible" role="alert">
                        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                            <span aria-hidden="true">×</span>
                        </button>
                        订单已提交，请在４８小时内完成支付！逾期订单将被取消。
                    </div>

                    <div class="order-detail-bg  checkout" style="border:none">
                        <div class="order-detail  clearfix">
                            <div class="order-img hidden-xs">
                                <a href="${(payCenterInfo.courseLink)!}">
                                    <img class="img-responsive" src="${(payCenterInfo.courseImgUrl)!}" alt="收费"></a>
                            </div>
                            <div class="order-info">
                                <p>订单名称：购买课程${(payCenterInfo.courseTitle)!}</p>

                                <p>订单号：${(payCenterInfo.orderNo)!}</p>

                                <p>
                                    订单价格：
                                    <span class="pay-rmb">￥${(payCenterInfo.totalPrice)!}</span>
                                </p>
                            </div>
                        </div>
                    </div>

                    <div class="es-piece" style="margin-bottom:20px;">
                        <div class="piece-header">支付方式</div>
                    </div>

                    <form class="form-paytype" method="post" action="/pay/center/pay">
                        <input type="hidden" name="targetType" value="course">
                        <input type="hidden" name="orderId" value="184158">


                        <input type="hidden" name="payment" value="alipay">
                        <input type="hidden" name="_csrf_token" value="1Ls523dg4HYvxSeXK5DVPPRXlIO36jTtbFr_gxM7KT4">


                        <div class="form-group order-detail-bg">
                            <div class="check  active" id="alipay">
                                <img src="http://scb1a9q0-sb.qiqiuyun.net/assets/img/order/alipay.png?11.0.2.5">
                                <span class="icon"></span>
                            </div>
                            <div class="check  " id="wxpay">
                                <img src="http://scb1a9q0-sb.qiqiuyun.net/assets/img/order/wxpay.png?11.0.2.5">
                                <span class="icon"></span>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="total-price">
                                应付金额：
                                <span role="pay-rmb" class="pay-rmb">￥${(payCenterInfo.shouldPayMoney)!}</span>
                            </div>
                        </div>

                        <div class="form-group text-right">
                            <a onclick="confirmPay(&#39;取消支付&#39;)" href="javascript:;"
                               class="js-order-cancel btn btn-link" data-goto="${(payCenterInfo.courseLink)!}" data-url="/my/order/184158/cancel">取消</a>
                            <button onclick="confirmPay(&#39;确认支付&#39;)" class="pay-button btn btn-primary"
                                    type="submit">确认支付
                            </button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </div>
    <script>
        window.onload = function () {
            var orderNumTrack = document.querySelectorAll('.order-info p')[1].innerHTML.substring(4);
            var titleTrack = document.querySelectorAll('.order-info p')[0].innerHTML.substring(5);
            zhuge.track('支付创建', {
                '课程名称': titleTrack,
                '订单价格': 9.90,
                '订单号': orderNumTrack
            });
        }

    </script>
    <script>
        function confirmPay(evName) {
            zhuge.track(evName, {
                '课程名称': document.querySelectorAll('.order-info p')[0].innerHTML.substring(5),
                '订单价格': 9.90,
                '订单号': document.querySelectorAll('.order-info p')[1].innerHTML.substring(4)
            });
        }
    </script>
</div>
<#include "../common/footer.ftl">

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
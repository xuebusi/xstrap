<!DOCTYPE html>
<!-- saved from url=(0068)/order/show?targetId=1024&targetType=course -->
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
                    <li class="doing"><span class="number">1</span>订单确认</li>
                    <li><span class="number">2</span>订单支付</li>
                    <li><span class="number">3</span>订单完成</li>
                </ul>
                <div class="order-pay-body">
                    <form id="order-create-form" method="post" action="/order/create" novalidate="novalidate" data-widget-cid="widget-0">
                        <input type="password" style="display:none">
                        <input type="hidden" role="cash-rate" value="1" data-price-type="RMB" data-cash-model="deduction">
                        <input type="hidden" name="targetType" value="course">
                        <input type="hidden" name="targetId" value="${(course.id)!}">
                        <input type="hidden" name="totalPrice" value="${(course.coursePrice)!}">
                        <input type="hidden" name="shouldPayMoney" value="${(course.coursePrice)!}">
                        <input type="hidden" name="courseTitle" value="${(course.courseTitle)!}">
                        <input type="hidden" name="courseImgUrl" value="${(course.courseImgUrl)!}">
                        <input type="hidden" name="courseLink" value="${(course.courseLink)!}">
                        <input type="hidden" name="smsCode" value="">
                        <input type="hidden" name="mobile" data-role="mobile" value="">
                        <input type="hidden" name="csrfToken" value="1Ls523dg4HYvxSeXK5DVPPRXlIO36jTtbFr_gxM7KT4">

                        <div class="order-detail-bg" style="border:none">
                            <div class="order-detail clearfix">
                                <div class="order-img hidden-xs">
                                    <a href="${(course.courseLink)!}">
                                        <img class="img-responsive" src="${(course.courseImgUrl)!}" alt="${(course.courseTitle)!}"></a>
                                </div>
                                <div class="order-info text-overflow">${(course.courseTitle)!}</div>
                                <div class="order-price">
                                    <span class="pay-rmb">￥</span>
                                    <span role="total-price" class="pay-rmb">${(course.coursePrice)!}</span>
                                </div>
                            </div>
                        </div>

                        <div class="order-detail-bg">
                            <div class="order-item clearfix">
                                <div class="order-item-title">
                                    <i class="es-icon es-icon-localplay"></i>
                                    <span class="title">优惠券</span>
                                    <span role="no-use-coupon-code">（没有使用优惠券）</span>
                                </div>
                                <div class="order-item-detail  coupon-detail">
                                    <div role="null-coupon-code">
                                        <a id="coupon-code-btn" class="btn btn-primary" href="javascript:;">使用优惠券</a>
                                    </div>
                                    <div role="coupon-code" class="input-group" style="display: none;">
                                        <input role="coupon-code-verified" name="couponCode" type="hidden">
                                        <input style="width:150px;" role="coupon-code-input" type="text"
                                               class="form-control mrm" placeholder="请输入优惠券" data-target-type="course"
                                               data-target-id="1024" data-amount="899">
                                        <button class="btn btn-primary" type="button" role="coupon-use">使用</button>
                                        <a href="javascript:;" class="btn btn-link" role="cancel-coupon">取消</a>
                                    </div>
                                    <div role="code-notify" class="alert alert-success alert-xs mtm" style="display:none;line-height:20px;"></div>
                                </div>
                                <div class="order-item-price" role="coupon-price">
                                    <span class="mrs">抵扣</span>
                                    <span>￥</span> <span role="price" style="font-size: 24px">0.00</span>
                                    <span></span>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="total-price">
                                应付金额：
                                <span class="pay-rmb">￥</span>
                                <span role="pay-rmb" class="pay-rmb" id="pay-rmb">${(course.coursePrice)!}</span>
                            </div>
                        </div>
                        <#--<div class="form-group text-right">
                            <a onclick="subOrder(&#39;取消订单&#39;)" href="/course/1024" class="btn btn-link" style="">取消</a>
                            <a onclick="subOrder(&#39;提交订单&#39;)" class="btn btn-primary" id="js-order-create-sms-btn"
                               data-toggle="modal" data-target="#modal" data-url="/order/sms_verification">提交订单</a>
                        </div>-->
                        <div class="form-group text-right">
                            <a href="${(course.courseLink)!}" class="btn btn-link" style="color: red">取消</a>
                            <button type="submit" id="order-create-btn" class="btn btn-primary">提交订单</button>
                        </div>
                    </form>
                </div>
            </div>
            <script>
                zhuge.track('订单创建', {
                    '课程名称': '《深度学习》第五期',
                    '课程类型': 'live',
                    '课程价格': 899.00,
                    '课时数': '22'
                });
                function subOrder(evName) {
                    var offPrice = parseFloat(document.querySelectorAll('.order-item-price span')[2].innerHTML);
                    zhuge.track(evName, {
                        '课程名称': '《深度学习》第五期',
                        '课程类型': 'live',
                        '课程价格': 899.00,
                        '优惠券抵扣': offPrice,
                        '课时数': '22',
                        '应付金额': 899.00 - offPrice
                    });
                }
            </script>
        </div>
    </div>
    <#include "../common/footer.ftl">
</div>


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
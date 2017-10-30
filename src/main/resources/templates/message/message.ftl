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
<html xmlns="http://www.w3.org/1999/html">
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
        <div class="row row-8">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default panel-page">
                    <div class="panel-heading">
                        <a class="btn btn-primary pull-right" href="/message/send/">写私信</a>
                        <h2>私信</h2>
                    </div>
                    <ul class="media-list conversation-list">
                        <li class="media" <#--data-url="/message/conversation/358251"-->>
                            <a class="pull-left media-object js-user-card" href="/user/29231" data-card-url="/user/29231/card/show" data-user-id="29231">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/default/2016/04-29/115850a2bfc9555442.jpg">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    <a class="link-dark " href="/user/29231">Robin_TY</a>
                                    : <a href="/message/conversation/" class="link-dark"> xuebusi,欢迎加入课程《用Python进行员工离职原因分析及预测》。在本课...</a>
                                    <span class="text-warning">(3条未读)</span>
                                </h4>
                                <div class="conversation-footer clearfix">
                                    <span class="pull-left">7天前</span>
                                    <span class="pull-right">共3条</span>
                                    <div class="actions pull-right">
                                        <a class="delete-conversation-btn text-muted" href="javascript:" data-url="/message/conversation/358251/delete">删除</a>
                                        <span class="text-muted mhm">|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media" data-url="/message/conversation/359188">
                            <a class="pull-left media-object js-user-card" href="/user/1" data-card-url="/user/1/card/show" data-user-id="1">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/user/2014/04-30/162738aa655f220485.jpg">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    <a class="link-dark " href="/user/1">admin</a>
                                    <a href="/message/conversation/" class="link-dark"> :xuebusi,欢迎加入课程手把手教你玩转小米Minos——小米 武泽胜。在本课...</a>
                                    <span class="text-warning">(2条未读)</span>
                                </h4>
                                <div class="conversation-footer clearfix">
                                    <span class="pull-left">18天前</span>
                                    <span class="pull-right">共2条</span>
                                    <div class="actions pull-right">
                                        <a class="delete-conversation-btn text-muted" href="javascript:" data-url="/message/conversation/359188/delete">删除</a>
                                        <span class="text-muted mhm">|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media" data-url="/message/conversation/359900">
                            <a class="pull-left media-object js-user-card" href="/user/63259" data-card-url="/user/63259/card/show" data-user-id="63259">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/user/2014/04-30/162738aa655f220485.jpg">
                            </a>
                            <div class="media-body">
                                <h4 class="media-heading">
                                    <a class="link-dark " href="/user/63259">马天</a>
                                    :<a href="/message/conversation/" class="link-dark">xuebusi,欢迎加入课程快速开发微信小程序。在本课程学习中遇到的问题，你可以...</a>
                                    <span class="text-warning">(1条未读)</span>
                                </h4>
                                <div class="conversation-footer clearfix">
                                    <span class="pull-left">19天前</span>
                                    <span class="pull-right">共1条</span>
                                    <div class="actions pull-right">
                                        <a class="delete-conversation-btn text-muted" href="javascript:" data-url="/message/conversation/359900/delete">删除</a>
                                        <span class="text-muted mhm">|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media" data-url="/message/conversation/291651">
                            <a class="pull-left media-object js-user-card" href="/user/49756" data-card-url="/user/49756/card/show" data-user-id="49756">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/user/2016/09-21/14084195a173022212.jpg">
                            </a>

                            <div class="media-body">
                                <h4 class="media-heading">
                                    <a class="link-dark " href="/user/49756">XBS老师</a>
                                    :<a href="/message/conversation/" class="link-dark">xuebusi,欢迎加入课程使用Apache Kylin分析Twitter流数据...</a>
                                    <span class="text-warning">(1条未读)</span>
                                </h4>
                                <div class="conversation-footer clearfix">
                                    <span class="pull-left">22天前</span>
                                    <span class="pull-right">共4条</span>
                                    <div class="actions pull-right">
                                        <a class="delete-conversation-btn text-muted" href="javascript:" data-url="/message/conversation/291651/delete">删除</a>
                                        <span class="text-muted mhm">|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media" data-url="/message/conversation/358145">
                            <a class="pull-left media-object js-user-card" href="/user/695" data-card-url="/user/695/card/show" data-user-id="695" data-original-title="" title="">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/user/2016/09-21/14084195a173022212.jpg">

                            </a>

                            <div class="media-body">
                                <h4 class="media-heading">
                                    <a class="link-dark " href="/user/695">fish</a>
                                    :<a href="/message/conversation/" class="link-dark">xuebusi,欢迎加入课程Hadoop/HBase实践及修改——冼茂源。在本课...</a>

                                </h4>
                                <div class="conversation-footer clearfix">
                                    <span class="pull-left">22天前</span>
                                    <span class="pull-right">共1条</span>
                                    <div class="actions pull-right">
                                        <a class="delete-conversation-btn text-muted" href="javascript:" data-url="/message/conversation/358145/delete">删除</a>
                                        <span class="text-muted mhm">|</span>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div><!-- /panel -->
            </div>
        </div>
    </div>
<#include "../common/footer.ftl">
</div>
<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
<!-- Mirrored from www.xuebusi.cn/page/agreement by HTTrack Website Copier/3.x [XR&CO'2014], Sat, 07 Oct 2017 23:48:16 GMT -->

</html>
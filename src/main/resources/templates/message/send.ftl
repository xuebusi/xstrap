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
        <style>
            .ui-autocomplete {
                border:1px solid #ccc;
                background-color: #FFFFFF;
                box-shadow: 2px 2px 3px #EEEEEE;
            }
            .ui-autocomplete-ctn{
                margin:0;
                padding:0;
            }
            .ui-autocomplete-item {
                width: 180px;
                overflow:hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
                line-height: 30px;
                padding:0 10px 0 10px;
                cursor: default;
            }
            .ui-autocomplete-item-hover {
                background:#f2f2f2;
            }
            .ui-autocomplete-item-hl {
                background:#F6FF94;
            }
        </style>
        <div class="row row-8">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default panel-page">
                    <div class="panel-heading">
                        <a href="/message/" class="btn btn-default pull-right">返回我的私信</a>
                        <h2>写私信</h2>
                    </div>
                    <form id="message-create-form" class="form-horizontal" method="post" novalidate="novalidate" data-widget-cid="widget-1">
                        <div class="form-group in-focus">
                            <div class="col-md-12 controls">
                                <input type="text" id="message_receiver" name="message[receiver]" required="required" class="form-control" placeholder="收信人用户名" data-auto-url="/following/bynickname/match_jsonp" data-url="/message/check/receiver" data-display="收信人用户名" data-widget-cid="widget-2" autocomplete="off">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 controls">
                                <textarea id="message_content" name="message[content]" required="required" class="form-control" rows="5" placeholder="想要说的话" data-display="想要说的话" data-widget-cid="widget-3"></textarea>
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-md-12 controls">
                                <input type="hidden" id="message__token" name="message[_token]" value="giiWryeCvbNHPXceHQls9qcba9lUUKcV_F173jHVUb8">
                                <button id="message-create-btn" class="btn btn-primary pull-right" data-loading-text="正在发送..." type="submit" value="">
                                    发送
                                </button>
                            </div>
                        </div>
                        <input type="hidden" name="_csrf_token" value="G-f4v68GpgsfMxY4kwZGZZkWf-cUST1naLjQxyb5HKc">
                    </form>
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
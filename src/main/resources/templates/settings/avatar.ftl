<!-- 头像设置页面 -->
<!DOCTYPE html>
<!-- saved from url=(0041)http://www.xuebusi.cn/settings/avatar -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement"
     style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

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
    <script>
        window.onload = function () {

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('/')[3].toString()
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
        <div class="row">
            <#include "../common/setting-list.ftl">
            <div class="col-md-9">
                <div class="panel panel-default panel-col">
                    <div class="panel-heading">头像设置</div>
                    <div class="panel-body">

                        <form id="settings-avatar-form" class="form-horizontal" method="post">
                            <div class="form-group">
                                <div class="col-md-2 control-label"><b>当前头像</b></div>
                                <div class="controls col-md-8 controls">
                                    <img src="http://scb1a9q0-sb.qiqiuyun.net/files/user/2017/10-28/144327f23d99966410.jpg">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                </div>
                                <div class="controls col-md-8 controls">
                                    <p class="help-block">你可以上传JPG、GIF或PNG格式的文件，文件大小不能超过<strong>2M</strong>。</p>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label"></div>
                                <div class="controls col-md-8 controls">
                                    <a id="upload-picture-btn"
                                       class="btn btn-primary"
                                       data-upload-token="NjA5OTJ8dG1wfGltYWdlfDE1MDkxODcwMDh8MGZjNGJiZGQ4MDQxMGQ4N2MxNGFhZGYzOWYzZGY4OWQ"
                                       data-goto-url="/settings/avatar/crop"
                                            >上传新头像</a>
                                </div>
                            </div>
                        </form>

                    </div>
                </div>
            </div>
        </div>
    </div>
    <#include "../common/footer.ftl">
</div>

<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>
</html>

<!-- 实名认证页面 -->
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
                    <div class="panel-heading">  实名认证
                    </div>
                    <div class="panel-body">
                        <form id="approval-form" class="form-horizontal" method="post" action="/settings/approval" enctype="multipart/form-data" novalidate="novalidate" data-widget-cid="widget-1">
                            <div class="help-block approval">
                                <label class="col-md-2 control-label"></label>
                                <div class="alert alert-warning" role="alert">您尚未实名认证
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label for="truename">真实姓名</label>
                                </div>
                                <div class="col-md-8 controls">
                                    <input type="text" id="truename" name="truename" class="form-control" value="" data-widget-cid="widget-3">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label for="idcard">身份证号</label>
                                </div>
                                <div class="col-md-8 controls">
                                    <input type="text" id="idcard" name="idcard" class="form-control" value="" data-widget-cid="widget-2">
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label>照片要求</label>
                                </div>
                                <div class="controls col-md-8 controls">
                                    <p class="text-warning">证件必须是清晰彩色原件电子版，可以是扫描或者数码相机拍摄照片。<br>图片格式支持jpg、gif、png，每张图片文件大小不能超过2M。</p>
                                </div>
                            </div>

                            <div class="form-group has-error">
                                <div class="col-md-2 control-label">
                                    <label for="faceImg">身份证正面照</label>
                                </div>
                                <div class="controls col-md-8 controls">
                                    <input type="file" id="faceImg" name="faceImg" accept="image/bmp,image/jpeg,image/png" data-widget-cid="widget-4">
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label for="backImg">身份证反面照</label>
                                </div>
                                <div class="controls col-md-8 controls">
                                    <input type="file" id="backImg" name="backImg" accept="image/bmp,image/jpeg,image/png" data-widget-cid="widget-5">
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-7 col-md-offset-2">
                                    <button type="submit" class="btn btn-primary">提交</button>
                                </div>
                            </div>

                            <input type="hidden" name="_csrf_token" value="G-f4v68GpgsfMxY4kwZGZZkWf-cUST1naLjQxyb5HKc">
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

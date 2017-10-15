
<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<html lang="zh_CN" >
<#include "../common/head.ftl">
<body  onbeforeunload="return CheckUnsave();">

<div class="es-wrap">

    <script type="text/javascript">
        function baidusearch(id) {
            var url = "http://zhannei.baidu.com/cse/search?s=83960727734992248&entry=1&q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url,"_blank");
        }
        function coursesearch(id) {
            var url = "/search" + "?q=" + encodeURIComponent(document.getElementById(id).value);
            window.open(url,"_self");
        }
    </script>
    <script>
        window.onload = function(){

            var aLi = document.querySelectorAll('.topNav li')
            var aA = document.querySelectorAll('.topNav li a')
            var len = aLi.length;
            var curCategory = window.location.href.split('/')[3].toString()
            var index=0;
            var data = {
                ''          :  aA[0].innerText,
                'ai'        :  aA[1].innerText,
                'bigdata'   :  aA[2].innerText,
                'da'        :  aA[3].innerText,
                'basic'     :  aA[4].innerText,
            }
            for(var i=0;i<5; i++){
                if(aA[i].innerText == data[curCategory] ){
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
    <#include "../common/header-login.ftl">

    <div id="content-container" class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="sidenav">
                    <ul class="list-group">
                        <li class="list-group-heading">个人设置</li>

                        <li class="list-group-item active">
                            <a href="/settings/"><i class="glyphicon glyphicon-user"></i> 基础信息</a>
                        </li>
                        <li class="list-group-item ">
                            <a href="/settings/avatar"><i class="glyphicon glyphicon-picture"></i> 头像设置</a>
                        </li>
                        <li class="list-group-item ">
                            <a href="/settings/approval/submit"><i class="glyphicon glyphicon-registration-mark"></i> 实名认证</a>
                        </li>
                        <li class="list-group-item ">
                            <a href="/settings/security"><i class="glyphicon glyphicon-lock"></i> 安全设置</a>
                        </li>



                        <li class="list-group-item ">
                            <a href="/settings/email"><i class="glyphicon glyphicon-envelope"></i> 邮箱设置</a>
                        </li>


                        <li class="list-group-item " >
                            <a href="/settings/binds"><i class="glyphicon glyphicon-circle-arrow-right"></i> 第三方登录</a>
                        </li>

                    </ul>
                </div>
            </div>
            <div class="col-md-9">

                <div class="panel panel-default panel-col">
                    <div class="panel-heading">基础信息</div>
                    <div class="panel-body">

                        <form id="user-profile-form" class="form-horizontal" method="post" action="/settings/save">
                            <#--<div class="alert alert-success">基础信息保存成功。</div>-->
                                <input type="hidden" id="profile_id" name="id"  value="${user.id}">
                            <div class="form-group">
                                <label class="col-md-2 control-label" >用户名</label>
                                <div class="col-md-7 controls">
                                    <input type="hidden" id="profile_username" name="username" value="${(user.username)!""}">
                                    <div class="control-text">${(user.username)!""} </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="profile_truename">真实姓名</label>
                                <div class="col-md-7 controls radios">
                                    <input type="text" id="profile_truename" name="truename" class="form-control" data-widget-cid="widget-1" data-explain="" value="${user.truename!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">性别</label>
                                <div class="col-md-7 controls radios">
                                    <div id="profile_gender">
                                        <input type="radio" id="profile_gender_0" name="gender" required="required" value="male" >
                                        <label for="profile_gender_0" class="required">男</label>
                                        <input type="radio" id="profile_gender_1" name="gender" required="required" value="female" checked="checked">
                                        <label for="profile_gender_1" class="required">女</label>
                                    </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="profile_idcard">身份证号码</label>
                                <div class="col-md-7 controls radios">
                                    <input type="text" id="profile_idcard" name="idcard" class="form-control" value="${user.idcard!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="profile_mobile" class="col-md-2 control-label">手机号码</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_mobile" name="mobile" class="form-control" data-widget-cid="widget-5" data-explain="" value="${user.mobile!""}">

                                    <div class="help-block" style="display:none"></div>
                                </div>
                            </div>
                            <div class="help-block">
                                <label class="col-md-2 control-label"></label>
                                <p class="text-warning">
                                    还没绑定手机号码，<strong><a href="/settings/bind_mobile">前去绑定</a>。
                                </strong>
                                </p>
                            </div>

                            <div class="form-group form-forIam-group form-notStudent-group">
                                <label class="col-md-2 control-label">公司</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_company" name="company" class="form-control" value="${user.company!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group form-forIam-group form-notStudent-group">
                                <label class="col-md-2 control-label">职业</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_job" name="job" class="form-control" value="${user.job!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">头衔</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_title" name="title" class="form-control" value="${user.title!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">个人签名</label>
                                <div class="col-md-7 controls">
                                    <textarea type="text" rows="4" maxlength="80" id="profile_signature" name="signature" class="form-control">${user.signature!""}</textarea>
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">自我介绍</label>
                                <div class="col-md-7 controls">
                                    <textarea name="about" rows="10" id="profile_about" class="form-control" data-image-upload-url="/editor/upload?token=NjA5OTJ8dXNlcnxpbWFnZXwxNTA4MDA5MDQ3fDMzMTdkYjA1OGM3NTQwNTI4MzViMzEwNTU4ZDU0Zjcz">${user.about!""}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">个人空间</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_site" name="site" class="form-control" data-widget-cid="widget-4" data-explain="" value="${user.site!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label for="weibo">微博</label>
                                </div>
                                <div class="col-md-7 controls">
                                    <input type="text" id="weibo" name="weibo" class="form-control" data-widget-cid="widget-3" data-explain="" value="${user.weibo!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isWeiboPublic" />公开</div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">微信</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_weixin" name="weixin" class="form-control" value="${user.weixin!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isWeixinPublic" />公开</div>
                            </div>

                            <div class="form-group">
                                <label for="profile_qq" class="col-md-2 control-label">QQ</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_qq" name="qq" class="form-control" data-widget-cid="widget-2" data-explain="" value="${user.qq!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isQqPublic" checked="checked" />公开</div>
                            </div>



                            <hr>
                            <div class="form-group">
                                <label for="varcharField1" class="col-md-2 control-label">职位</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="varcharField1" name="position" class="form-control" value="${user.position!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="varcharField2" class="col-md-2 control-label">所在城市</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="varcharField2" name="city" class="form-control" value="${user.city!""}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-md-7 col-md-offset-2">
                                    <button id="profile-save-btn" data-submiting-text="正在保存" type="submit" class="btn btn-primary">保存</button>
                                </div>
                            </div>

                            <input type="hidden" name="_csrf_token" value="CmDuB_Nkp6PjsCojwMp3oRGnIZV692sX-ASDvU3DymM">
                        </form>

                    </div>
                </div>  </div>
        </div>
    </div>
    <#include "../common/footer.ftl">

<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">

<div id="login-modal" class="modal" data-url="/login/ajax"></div>
<div id="modal" class="modal"></div>
<div id="attachment-modal" class="modal"></div>

<script>
    var app = {};
    app.debug = false;
    app.version = '11.0.1.1';
    app.httpHost = 'http://www.chinahadoop.cn';
    app.basePath = '//scb1a9q0-sb.qiqiuyun.net';
    app.theme = 'jianmo';
    app.themeGlobalScript = 'theme/global-script';
    app.jsPaths = {"common":"common","theme":"\/\/scb1a9q0-sb.qiqiuyun.net\/themes\/jianmo\/js","schoolgatebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/schoolgate\/js","discountbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/discount\/js","moneycardbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/moneycard\/js","chargecoinbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/chargecoin\/js","homeworkbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/homework\/js","userimporterbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/userimporter\/js","gracefulthemebundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/gracefultheme\/js","questionplusbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/questionplus\/js","vipbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/vip\/js","couponbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/coupon\/js","customwebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customweb\/js","customadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/customadmin\/js","topxiawebbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaweb\/js","topxiaadminbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/topxiaadmin\/js","classroombundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/classroom\/js","materiallibbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/materiallib\/js","sensitivewordbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/sensitiveword\/js","permissionbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/permission\/js","orgbundle":"\/\/scb1a9q0-sb.qiqiuyun.net\/bundles\/org\/js"};

    app.crontab = '/common/crontab';

    var CKEDITOR_BASEPATH = app.basePath + '/assets/libs/ckeditor/4.6.7/';
    var CLOUD_FILE_SERVER = "";

    app.config = {"api":{"weibo":{"key":"3735672790"},"qq":{"key":"101291257"},"douban":{"key":""},"renren":{"key":""}},"cloud":{"video_player":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/GrindPlayer.swf","video_player_watermark_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Watermake-1.0.3.swf","video_player_fingerprint_plugin":"http:\/\/cdn.staticfile.org\/GrindPlayerCN\/1.0.2\/Fingerprint-1.0.1.swf"},"loading_img_path":"\/\/scb1a9q0-sb.qiqiuyun.net\/assets\/img\/default\/loading.gif?11.0.1.1"};

    app.arguments = {};
    app.controller = 'settings/profile';

    app.scripts = ["default\/header.js","es-bar\/index","notification\/notification"];

    app.uploadUrl = '/file/upload';
    app.imgCropUrl = '/file/img/crop';
    app.lessonCopyEnabled = '1';
    app.cloudSdkCdn = '';
    app.mainScript = 'http://localhost:8080/js/app.js';
    app.lang = 'zh_CN';
</script>
    <script src="http://localhost:8080/js/translator.min.js"></script>
    <script src="http://localhost:8080/js"></script>
    <script src="http://localhost:8080/js/sea.js"></script>
    <script src="http://localhost:8080/js/seajs-style.js"></script>
    <script src="http://localhost:8080/js/seajs-text.min.js"></script>
    <script src="http://localhost:8080/js/seajs-global-config.js"></script>
<script>
    seajs.use(app.mainScript);
</script>
</body>
</html>

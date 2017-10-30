<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html> <!--<![endif]-->
<html lang="zh_CN" >

<!-- Mirrored from www.xuebusi.cn/normallogin?goto=/ai/all/list%3Fpage%3D1 by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:40:53 GMT -->
<!-- Added by HTTrack --><meta http-equiv="content-type" content="text/html;charset=UTF-8" /><!-- /Added by HTTrack -->
<#include "../common/head.ftl">
<body class="login" onbeforeunload="return CheckUnsave();">

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
            var curCategory = window.location.href.split('http://www.xuebusi.cn/')[3].toString()
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
<#include "../common/header.ftl">

    <div id="content-container" class="container">

        <div class="es-section login-section">
            <div class="logon-tab clearfix">
                <h2>用户登录</h2>
                <b><a href="/login?goto=/ai/all/list%3Fpage%3D1">微信扫码登录</a></b>
                <b><a class="active">帐号密码登录</a></b>

            </div>
            <div class="login-main">
                <form id="login-form" class="form-vertical" method="post" action="/login">

                    <#if successMsg?exists >
                        <div class="alert alert-success">${successMsg}</div>
                    </#if>
                    <div class="form-group mbl">
                        <div class="controls">
                            <input class="form-control input-lg" id="login_username" type="text" name="username" value="" required placeholder='邮箱/手机/用户名' />
                        </div>
                    </div>
                    <div class="form-group mbl">
                        <div class="controls" style="position: relative">
                            <input class="form-control input-lg" id="login_password" type="password" name="password" required placeholder='密码'/>

                            <div id="pwd-show"></div>
                            <style>
                                #pwd-show {
                                    width: 20px;
                                    height: 14px;
                                    display: inline-block;
                                    background-image: url(/images/pwd_hide.png);
                                    background-size: 100%;
                                    background-repeat: no-repeat;
                                    position: absolute;
                                    top: 13px;
                                    right: 20px;
                                }
                                .es-wrap {
                                    background-image: url(/images/login_bg.png);
                                    background-size: 100%;
                                    padding-bottom: 40px;
                                }
                                .help-block {margin-top: 0}
                            </style>
                            <script>
                                window.onload = function(){
                                    var oInput = document.getElementById("login_password")
                                    var pwdShow = document.getElementById("pwd-show")

                                    pwdShow.onclick = function(){
                                        if(oInput.type =='password'){
                                            oInput.type ='text'
                                            pwdShow.style.backgroundImage = 'url(/images/pwd_show.png)'
                                        }else {
                                            oInput.type ='password'
                                            pwdShow.style.backgroundImage = 'url(/images/pwd_hide.png)'
                                        }
                                    }

                                }

                            </script>

                        </div>
                    </div>

                    <div id="errMsg" style="padding: 0">
                        <#if errMsg?exists >
                            <div class="alert alert-danger">${errMsg}</div>
                        </#if>
                    </div>

                    <div class="form-group mbl">
                        <div class="controls">
                            <input type="checkbox" name="rememberme" checked="checked"> 记住密码
                        </div>
                    </div>


                    <div class="form-group mbl">
                        <button type="submit" class="btn btn-primary btn-lg btn-block">登录</button>
                    </div>

                    <input type="hidden" name="_target_path" value="/ai/all/list?page=1">
                    <input type="hidden" name="_csrf_token" value="FIG-fkQXNI2-zIFLHp70pDbMlxAt4K5EQN24ab8johY">
                </form>

                <div class="mbl" style="margin-top: -5px;">
                    <a href="/reset">找回密码?</a>
                    <span class="text-muted" style="padding-right: 20%"></span>
                    <span class="text-muted">还没有注册帐号？</span>
                    <a href="/register">免费注册</a>
                </div>

                <div class="social-login">
                    <span>

                      <a href="http://www.xuebusi.cn/login/bind/weibo?_target_path=/ai/all/list%3Fpage%3D1&amp;inviteCode=" class="social-icon social-weibo">
                          <i class="es-icon es-icon-weibo"></i>
                      </a>

                      <a href="http://www.xuebusi.cn/login/bind/qq?_target_path=/ai/all/list%3Fpage%3D1&amp;inviteCode=" class="social-icon social-qq">
                          <i class="es-icon es-icon-qq"></i>
                      </a>

                      <a href="http://www.xuebusi.cn/login/bind/weixinweb?_target_path=/ai/all/list%3Fpage%3D1&amp;inviteCode=" class="social-icon social-weixin">
                          <i class="es-icon es-icon-weixin"></i>
                      </a>
                    </span>
                    <div class="line"></div>
                </div>
            </div>
        </div>
    </div>
</div>

<#include "../common/sidebar.ftl">
<#include "../common/login-modal.ftl">
</body>

<!-- Mirrored from www.xuebusi.cn/normallogin?goto=/ai/all/list%3Fpage%3D1 by HTTrack Website Copier/3.x [XR&CO'2014], Sun, 08 Oct 2017 00:40:54 GMT -->
</html>

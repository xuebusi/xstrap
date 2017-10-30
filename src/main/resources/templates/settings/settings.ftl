
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
            <#include "../common/setting-list.ftl">
            <div class="col-md-9">

                <div class="panel panel-default panel-col">
                    <div class="panel-heading">基础信息</div>
                    <div class="panel-body">

                        <form id="user-profile-form" class="form-horizontal" method="post" action="/settings">
                            <#if successMsg?exists >
                                <div class="alert alert-success">${successMsg}</div>
                            </#if>
                            <input type="hidden" id="profile_id" name="id"  value="${(user.id)!}">
                            <div class="form-group">
                                <label class="col-md-2 control-label" >用户名</label>
                                <div class="col-md-7 controls">
                                    <input type="hidden" id="profile_username" name="username" value="${(user.username)!}">
                                    <div class="control-text">${(user.username)!} </div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label" for="profile_truename">真实姓名</label>
                                <div class="col-md-7 controls radios">
                                    <input type="text" id="profile_truename" name="truename" class="form-control" data-widget-cid="widget-1" data-explain="" value="${(user.truename)!}">
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
                                    <input type="text" id="profile_idcard" name="idcard" class="form-control" value="${(user.idcard)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label for="profile_mobile" class="col-md-2 control-label">手机号码</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_mobile" name="mobile" class="form-control" data-widget-cid="widget-5" data-explain="" value="${(user.mobile)!}">

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
                                    <input type="text" id="profile_company" name="company" class="form-control" value="${(user.company)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group form-forIam-group form-notStudent-group">
                                <label class="col-md-2 control-label">职业</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_job" name="job" class="form-control" value="${(user.job)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">头衔</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_title" name="title" class="form-control" value="${(user.title)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">个人签名</label>
                                <div class="col-md-7 controls">
                                    <textarea type="text" rows="4" maxlength="80" id="profile_signature" name="signature" class="form-control">${(user.signature)!}</textarea>
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">自我介绍</label>
                                <div class="col-md-7 controls">
                                    <textarea name="about" rows="10" id="profile_about" class="form-control" data-image-upload-url="/editor/upload?token=NjA5OTJ8dXNlcnxpbWFnZXwxNTA4MDA5MDQ3fDMzMTdkYjA1OGM3NTQwNTI4MzViMzEwNTU4ZDU0Zjcz">${(user.about)!""}</textarea>
                                </div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">个人空间</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_site" name="site" class="form-control" data-widget-cid="widget-4" data-explain="" value="${(user.site)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>

                            <div class="form-group">
                                <div class="col-md-2 control-label">
                                    <label for="weibo">微博</label>
                                </div>
                                <div class="col-md-7 controls">
                                    <input type="text" id="weibo" name="weibo" class="form-control" data-widget-cid="widget-3" data-explain="" value="${(user.weibo)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isWeiboPublic" />公开</div>
                            </div>

                            <div class="form-group">
                                <label class="col-md-2 control-label">微信</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_weixin" name="weixin" class="form-control" value="${(user.weixin)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isWeixinPublic" />公开</div>
                            </div>

                            <div class="form-group">
                                <label for="profile_qq" class="col-md-2 control-label">QQ</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="profile_qq" name="qq" class="form-control" data-widget-cid="widget-2" data-explain="" value="${(user.qq)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                                <div class="col-md-2 controls mts"><input type="checkbox" name="isQqPublic" checked="checked" />公开</div>
                            </div>



                            <hr>
                            <div class="form-group">
                                <label for="varcharField1" class="col-md-2 control-label">职位</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="varcharField1" name="position" class="form-control" value="${(user.position)!}">
                                    <div class="help-block" style="display:none;"></div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label for="varcharField2" class="col-md-2 control-label">所在城市</label>
                                <div class="col-md-7 controls">
                                    <input type="text" id="varcharField2" name="city" class="form-control" value="${(user.city)!}">
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
<#include "../common/login-modal.ftl">
</body>
</html>

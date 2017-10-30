<!-- 私信对话页面（私信详情） -->
<!DOCTYPE html>
<!-- saved from url=(0053)http://www.xuebusi.com/message/conversation/359188 -->
<html lang="zh_CN"><!--<![endif]-->
<#include "../common/head.ftl">
<body onbeforeunload="return CheckUnsave();">
<div id="nTalk_post_hiddenElement" style="left: -10px; top: -10px; visibility: hidden; display: none; width: 1px; height: 1px;"></div>

<div class="es-wrap">
    <#include "../common/alert-notice.ftl">
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
        <div class="row row-8">
            <div class="col-md-8 col-md-offset-2">
                <div class="panel panel-default panel-page">
                    <div class="panel-heading">
                        <a href="/message/" class="btn btn-default pull-right">返回我的私信</a>
                        <h2>与admin的私信对话</h2>
                    </div>

                    <form id="message-reply-form" class="message-reply-form clearfix" method="post"
                          action="/message/conversation/359188">
                        <div class="form-group">
                            <textarea id="message_reply_content" name="message_reply[content]" required="required" class="form-control" rows="3" placeholder="请输入私信内容"></textarea>
                        </div>

                        <div class="form-group">
                            <input type="hidden" id="message_reply__token" name="message_reply[_token]" value="XoCU9zTt-MQ3Nk9i_A84moqlaChTcR6VU4imbvyV5bg">
                            <button id="course-reply-btn" class="btn btn-primary pull-right">发送</button>
                        </div>

                        <input type="hidden" name="_csrf_token" value="SkMkykcy9v5Dw3Pv0CoswpfuBdykn9q63nIuBWl_BlA">
                    </form>

                    <ul class="media-list message-list">
                        <li class="media message-she" parent-url="/message/">
                            <a class="pull-left media-object " href="/user/1"
                               data-card-url="/user/1/card/show" data-user-id="1">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/default/2016/04-29/115850a2bfc9555442.jpg">
                            </a>
                            <div class="media-body">
                                <div class="popover right">
                                    <div class="arrow"></div>
                                    <div class="popover-content">
                                        <div class="message-content">
                                            <strong>
                                                <a class="link-dark " href="/user/1">admin</a>
                                                ：</strong>xuebusi,欢迎加入课程手把手教你玩转小米Minos——小米&nbsp;武泽胜。<br>
                                            <br>
                                            在本课程学习中遇到的问题，你可以在XBS问答(&nbsp;
                                            <a target="_blank" href="http://www.xuebusi.com/"><font color="0000FF">http://www.xuebusi.com/</font></a>
                                            &nbsp;
                                            )上提问并得到快速回复。<br>
                                            <br>
                                            <br>
                                            &nbsp;

                                        </div>
                                        <div class="message-footer">
                                            <span class="text-muted">18天前</span>
                                            <div class="message-actions">
                                                <a class="text-muted delete-message" href="javascript:" data-url="/message/conversation/359188/message/248440/delete">删除</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="media message-she" parent-url="/message/">
                            <a class="pull-left media-object " href="/user/1" data-card-url="/user/1/card/show" data-user-id="1">
                                <img class="avatar-sm" src="http://scb1a9q0-sb.qiqiuyun.net/files/default/2016/04-29/115850a2bfc9555442.jpg">
                            </a>
                            <div class="media-body">
                                <div class="popover right">
                                    <div class="arrow"></div>
                                    <div class="popover-content">
                                        <div class="message-content">
                                            <strong>
                                                <a class="link-dark " href="/user/1">admin</a>
                                                ：</strong>xuebusi,欢迎加入课程备战数学建模地区赛。<br>
                                            <br>在本课程学习中遇到的问题，你可以在XBS问答(&nbsp;
                                            <a target="_blank" href="http://www.xuebusi.com/">
                                                <font color="0000FF">http://www.xuebusi.com/</font>
                                            </a>
                                            &nbsp;)上提问并得到快速回复。<br>
                                            <br>
                                            <br>
                                            &nbsp;

                                        </div>
                                        <div class="message-footer">
                                            <span class="text-muted">19天前</span>
                                            <div class="message-actions">
                                                <a class="text-muted delete-message" href="javascript:" data-url="/message/conversation/359188/message/246456/delete">删除</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </div>
                <!-- /panel -->
            </div>
        </div>
    </div>
<#include "../common/footer.ftl">
</div>

<!-- 侧边栏快捷操作 -->
<#include "../common/sidebar.ftl">

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
<header class="es-header navbar">
    <nav class="collapse navbar-collapse">
        <div class="navbar-header">
            <div class="visible-xs  navbar-mobile">
                <a href="javascript:;" class="navbar-more js-navbar-more">
                    <i class="es-icon es-icon-menu"></i>
                </a>
                <div class="html-mask"></div>
                <div class="nav-mobile">
                    <form class="navbar-form" action="/search" method="get">
                        <div class="form-group">
                            <input class="form-control" placeholder="搜索" name="q">
                            <button class="button es-icon es-icon-search"></button>
                        </div>
                    </form>
                    <ul class="nav navbar-nav">
                        <li class="">
                            <a href="/">首页 </a>
                        </li>
                        <li class="">
                            <a href="/ai/all/list">人工智能 </a>
                        </li>
                        <li class="">
                            <a href="/bigdata/all/list">大数据 </a>
                        </li>
                        <li class="">
                            <a href="/da/all/list">数据分析 </a>
                        </li>
                        <li class="">
                            <a href="/basic/all/list">基础课程 </a>
                        </li>
                        <li class="">
                            <a href="/course/landpage/1" target="_blank">大数据平台训练营 </a>
                        </li>
                        <li class="">
                            <a href="/course/landpage/2" target="_blank">机器学习训练营 </a>
                        </li>
                        <li class="">
                            <a href="/dcon/2015beijing/" target="_blank">DCon大会 </a>
                        </li>
                        <li class="">
                            <a href="/page/lpenter" target="_blank">学习路线 </a>
                        </li>
                        <li class="">
                            <a href="/other/all/list">其他课程 </a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="M_header-back js-back">
                <a><i class="es-icon es-icon-chevronleft"></i></a>
            </div>
            <a href="/" class="navbar-brand">
                <img src="/images/19876785c34d6a348876.png">
            </a>
        </div>
        <ul class="nav navbar-nav topNav clearfix hidden-xs " id="nav">
            <li class="">
                <a href="/">首页</a>
                <div>
                    <div style="/*border-bottom: 4px solid red;*/ margin-top: -2px; color: red; border-radius: 4px"></div>
                </div>
            </li>
            <li class="">
                <a href="/ai/all/list">人工智能 </a>
            </li>
            <li class="">
                <a href="/bigdata/all/list">大数据 </a>
            </li>
            <li class="">
                <a href="/da/all/list">数据分析 </a>
            </li>
            <li class="">
                <a href="/basic/all/list">基础课程 </a>
            </li>
            <li class="nav-more nav-hover">
                <a class="more">其他</a>
                <ul class="dropdown-menu" role="menu">
                    <li class="">
                        <a href="/course/landpage/1" target="_blank">大数据平台训练营 </a>
                    </li>
                    <li class="">
                        <a href="/course/landpage/2" target="_blank">机器学习训练营 </a>
                    </li>
                    <li class="">
                        <a href="/dcon/2015beijing/" target="_blank">DCon大会 </a>
                    </li>
                    <li class="">
                        <a href="/page/lpenter" target="_blank">学习路线 </a>
                    </li>
                    <li class="">
                        <a href="/other/all/list">其他课程 </a>
                    </li>
                </ul>
            </li>
        </ul>
        <div class="navbar-user  left ">
            <#if Session.user?exists>
                <ul class="nav user-nav">
                    <li class="visible-lg"> <a href="/my">
                        我的学习
                    </a>

                    </li>
                    <li class="user-avatar-li nav-hover">
                        <a href="javascript:;" class="dropdown-toggle">
                            <img class="avatar-xs" src="/images/0548491aa7e5403534.jpg">
                        </a>
                        <ul class="dropdown-menu" role="menu">
                            <li role="presentation" class="dropdown-header">${(user.username)!}</li>
                            <li><a href="/settings/"><i class="es-icon es-icon-setting"></i>个人设置</a>
                            </li>
                            <li class="hidden-lg user-nav-li-my">
                                <a href="/my"> <i class="es-icon es-icon-eventnote"></i>我的学习</a>
                            </li>
                            <li><a href="/my/coin"><i class="es-icon es-icon-accountwallet"></i>账户中心</a>
                            </li>
                            <li>
                                <a href="/message/"> <span class="pull-right num" style="padding: 0 5px">1</span>
                                    <i class="es-icon es-icon-mail"></i>我的私信</a>
                            </li>
                            <li class="hidden-lg"><a href="/notification"><span class="pull-right num">6</span><i class="es-icon es-icon-notificationson"></i>通知</a>
                            </li>
                            <li class="mobile-switch js-switch-mobile visible-xs">
                                <a href="javascript:;"> <i class="es-icon es-icon-qiehuan"></i>切换触屏版</a>
                            </li>
                            <li class="user-nav-li-logout"><a href="/logout"><i class="es-icon es-icon-power"></i>退出登录</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            <#else>
            <ul class="nav user-nav">
                <li class="user-avatar-li nav-hover visible-xs">
                    <a href="javascript:;" class="dropdown-toggle">
                        <img class="avatar-xs" src="/images/avatar.png">
                    </a>
                    <ul class="dropdown-menu" role="menu">
                        <li class="user-nav-li-login">
                            <a href="/login">
                                <i class="es-icon es-icon-denglu"></i>
                                登录
                            </a>
                        </li>
                        <li class="user-nav-li-register">
                            <a href="/register">
                                <i class="es-icon es-icon-zhuce"></i>
                                注册
                            </a>
                        </li>
                        <li class="mobile-switch js-switch-mobile">
                            <a href="javascript:;">
                                <i class="es-icon es-icon-qiehuan"></i>
                                切换触屏版
                            </a>
                        </li>
                    </ul>
                </li>
                <li class="hidden-xs">
                    <a style="padding: 20px 0" href="/login">登录</a>
                </li>
                <li class="hidden-xs hidden-sm">
                    <a style="padding: 20px 5px" href="javascript:;">/</a>
                </li>
                <li class="hidden-xs">
                    <a style="padding: 20px 0" href="/register">注册</a>
                </li>
            </ul>
            </#if>

            <form class="navbar-form navbar-right hidden-xs hidden-sm" action="/search" method="get">
                <div class="form-group">
                    <input class="form-control js-search" name="q" placeholder="搜课程">
                    <button class="button es-icon es-icon-search"></button>
                </div>
            </form>
            <div class="navbar-form navbar-right hidden-xs hidden-sm">
                <div class="form-group">
                    <input class="form-control js-full-search" name="q" placeholder="搜内容" id="fulltext-query" onkeypress="if(event.keyCode==13) {baidusearch('fulltext-query');}">
                    <button class="button es-icon es-icon-search" onclick="baidusearch('fulltext-query');"></button>
                </div>
            </div>
        </div>
    </nav>
</header>
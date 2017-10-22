<section class="course-detail-header before">
    <div class="container">
        <ol class="breadcrumb breadcrumb-o">
            <li><a href="/all/all/list">首页</a> </li>
            <li><a href="/${course.courseNavigation}/all/list">${courseNavigationStr}</a> </li>
            <li><a href="/${course.courseNavigation}/${course.courseCategory}/list">${courseCategoryStr}</a> </li>
            <li class="active hidden-xs hidden-sm">${course.courseTitle}</li>
        </ol>
        <div class="es-section clearfix ">
            <!--左侧图片-->
            <div class="course-img col-lg-offset-1" style="">
                <img class="img-responsive" src="${course.courseImgUrl}" alt="${course.courseTitle}" />
                <div class="tags"></div>
            </div>
            <!--左侧图片end-->
            <div class="course-info">
                <h2 class="title hidden-xs hidden-sm" style="margin-top: 0; margin-bottom: 30px;">${course.courseTitle}</h2>
                <div class="h5 hidden-xs hidden-sm">
                    <#if courseIsEnd == 1>
                        <span>课程更新完毕</span>
                    <#else>
                    <span>开课时间：${course.courseStartTime?string('yyyy.MM.dd')}-${course.courseEndTime?string('yyyy.MM.dd')}</span>
                    </#if>
                    <div class="hidden-xs hidden-sm" style="display: inline-block">
                        <span class="es-share top"> <a class="dropdown-toggle" href="#" data-toggle="dropdown"> <p style="margin: 0;"><i class="es-icon es-icon-share" style="font-size: 16px"></i></p> </a>
                        <div class="dropdown-menu  js-social-share-params" data-title="零基础Python入门" data-summary="课程名称：《零基础Python入门》主讲老师：梁斌    资深算法工程师查尔斯特大学（Charles..." data-message="我正在学习《零基础Python入门》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/1040" data-picture="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg">
                            <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/1040"><i class="es-icon es-icon-weixin"></i></a>
                            <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
                            <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
                            <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>
                        </div>
                        </span>
                    </div>
                </div>
                <div class="h5 student-num hidden-lg hidden-xs hidden-sm">
                    <i class="es-icon es-icon-people"></i>${course.courseUserCount}人
                </div>
                <div class="teacher-name h5 hidden-xs hidden-sm">
                    老师：
                    <span>${course.courseTeacherName}</span>
                    <span> </span>
                </div>
                <div class="metas">
                    <p class="expiry-date h5 hidden-sm">学习有效期: 365天</p>
                </div>

                <!--价格-->
                <p class="discount-price" style="margin: 20px 0 10px 0;">
                    <#if course.coursePrice == 0>
                        <span class="course-price-widget">
                            <span class="price" style="font-size: 24px">
                                <span class="text-danger" style="font-size: 16px">免费</span>
                            </span>
                        </span>
                    <#else>
                        <label style="color: #eb3b28; font-size: 18px;">￥</label>
                        <span class="course-price-widget">
                            <span class="price"> ${course.coursePrice} </span>
                        </span>
                    </#if>
                </p>
                <!--价格end-->

                <!--判断会员身份是否到期-->
                <!--判断会员身份是否到期end-->
                <div class="hidden-xs hidden-sm">
                    <#if course.coursePrice == 0>
                    <a class="btn btn-primary btn-lg" href="/order/show?targetId=825&amp;targetType=course">加入学习</a>
                    <#else>
                    <a class="btn btn-primary btn-lg" href="../../../../login.html?targetId=1040&amp;targetType=course"> 加入购买</a>
                    </#if>
                </div>
            </div>
            <div class="course-operation clearfix hidden-lg hidden-md">
                <ul class="course-data clearfix ">
                    <li id="unfavorite-btn" data-url="/course/1040/unfavorite" style="display:none;"> <a href="javascript:;" class="color-primary"> <p><i class="es-icon es-icon-bookmark"></i> </p> <p>收藏</p> </a> </li>
                    <li id="favorite-btn" data-url="/course/1040/favorite"> <a href="javascript:;"> <p><i class="es-icon es-icon-bookmarkoutline"></i> </p> <p>收藏</p> </a> </li>
                    <li> <span class="es-share top"> <a class="dropdown-toggle" href="#" data-toggle="dropdown"> <p><i class="es-icon es-icon-share"></i></p> <p>分享</p> </a>
          <div class="dropdown-menu  js-social-share-params" data-title="零基础Python入门" data-summary="课程名称：《零基础Python入门》主讲老师：梁斌    资深算法工程师查尔斯特大学（Charles..." data-message="我正在学习《零基础Python入门》，收获巨大哦，分享并@xuebusi更有好礼相送，一起来学习吧！" data-url="http://www.xuebusi.cn/course/1040" data-picture="../../../../../scb1a9q0-sb.qiqiuyun.net/files/course/2017/09-15/12132446af11122547.jpg">
              <a href="javascript:;" class="js-social-share" data-cmd="weixin" title="分享到微信" data-share="weixin" data-qrcode-url="/common/qrcode?text=http%3A//www.xuebusi.cn/course/1040"><i class="es-icon es-icon-weixin"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="tsina" title="分享到新浪微博" data-share="weibo"><i class="es-icon es-icon-weibo"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qq" title="分享到QQ好友" data-share="qq"><i class="es-icon es-icon-qq"></i></a>
              <a href="javascript:;" class="js-social-share" data-cmd="qzone" title="分享到QQ空间" data-share="qzone"><i class="es-icon es-icon-qzone"></i></a>
          </div> </span> </li>
                </ul>
                <div class="buy">
                    <a class="btn btn-primary btn-lg" href="../../../../login.html?targetId=1040&amp;targetType=course"> 加入购买</a>
                </div>
            </div>
        </div>
    </div>
</section>
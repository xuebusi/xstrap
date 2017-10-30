<#if courseRelevantList??>
<div class="panel panel-default">
    <div class="panel-heading">
        <h3 class="panel-title">
            <i class="es-icon es-icon-explore"></i>相关课程
        </h3>
    </div>
    <div class="panel-body">
        <div class="course-list no-shadow no-margin">
            <div class="row">
                <#list courseRelevantList as course>
                <div class="col-lg-4 col-md-6 col-xs-6 ">
                    <div class="course-item">
                        <div class="course-img">
                            <a href="${(course.courseLink)!}" target="_blank">
                                <span class="tags">
                                    <span class="tag-finished"></span>
                                </span>
                                <img src="${(course.courseImgUrl)!}" alt="${(course.courseTitle)!}" class="img-responsive" data-echo="${(course.courseImgUrl)!}"/>
                            </a>
                        </div>
                        <div class="course-info">
                            <div class="title">
                                <a class="link-dark" href="${(course.courseLink)!}" target="_blank">
                                ${(course.courseTitle)!}
                                </a>
                            </div>
                            <div class="metas clearfix">
                                <span class="num hidden-md hidden-sm hidden-xs">参课人数：34</span>
                                <span class="course-price-widget">
                                    <span class="price" style="font-size: 24px">${(course.coursePrice)!}</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                </#list>

                <#--<div class="col-lg-4 col-md-6 col-xs-6 ">
                    <div class="course-item">
                        <div class="course-img">
                            <a href="/course/158" target="_blank"> <span class="tags"><span class="tag-finished"></span></span>
                                <img src="//scb1a9q0-sb.qiqiuyun.net/assets/img/default/lazyload_course.png?11.0.2.5" alt="《SQL on Hadoop》" class="img-responsive" data-echo="http://scb1a9q0-sb.qiqiuyun.net/files/course/2014/03-16/10140190904a318282.jpg"/>
                            </a>
                        </div>
                        <div class="course-info">
                            <div class="title">
                                <a class="link-dark" href="/course/158" target="_blank">
                                    《SQL on Hadoop》
                                </a>
                            </div>
                            <div class="metas clearfix">
                                <span class="num hidden-md hidden-sm hidden-xs">参课人数：34</span>
                                <span class="course-price-widget">
                                    <span class="price" style="font-size: 24px">699.00</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-xs-6 ">
                    <div class="course-item">
                        <div class="course-img">
                            <a href="/course/127" target="_blank">
                                <img src="//scb1a9q0-sb.qiqiuyun.net/assets/img/default/lazyload_course.png?11.0.2.5" alt="中国移动“大云”大数据及在运营商行业的应用实践——徐萌 " class="img-responsive" data-echo="http://scb1a9q0-sb.qiqiuyun.net/files/course/2014/12-17/13455751ea31357602.png" />
                            </a>
                        </div>
                        <div class="course-info">
                            <div class="title">
                                <a class="link-dark" href="/course/127" target="_blank">
                                    中国移动“大云”大数据及在运营商行业的应用实践——徐萌
                                </a>
                            </div>
                            <div class="metas clearfix">
                                <span class="num hidden-md hidden-sm hidden-xs">参课人数：547</span>
                                <span class="course-price-widget">
                                    <span class="price" style="font-size: 24px">
                                        <span class="text-danger" style="font-size: 16px">免费</span>
                                    </span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 col-xs-6 hidden-sm hidden-xs">
                    <div class="course-item">
                        <div class="course-img">
                            <a href="/course/117" target="_blank"> <span class="tags"><span class="tag-finished"></span></span>
                                <img src="//scb1a9q0-sb.qiqiuyun.net/assets/img/default/lazyload_course.png?11.0.2.5" alt="《Hadoop进阶》" class="img-responsive" data-echo="http://scb1a9q0-sb.qiqiuyun.net/files/default/2015/06-18/192655f3816a923063.jpg"/>
                            </a>
                        </div>
                        <div class="course-info">
                            <div class="title">
                                <a class="link-dark" href="/course/117" target="_blank">《Hadoop进阶》</a>
                            </div>
                            <div class="metas clearfix">
                                <span class="num hidden-md hidden-sm hidden-xs">参课人数：47</span>
                                <span class="course-price-widget">
                                    <span class="price" style="font-size: 24px">699.00</span>
                                </span>
                            </div>
                        </div>
                    </div>
                </div>-->
            </div>
        </div>
    </div>
</div>
</#if>
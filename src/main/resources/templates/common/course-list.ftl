<div class="course-list">
    <div class="row">
    <#list coursePage.content as course>
        <div class="col-md-4 col-xs-6" style="">
            <div class="course-item">
                <div class="course-img">
                    <a href="${(course.courseLink)!''}" target="_blank">
                        <span class="tags"><span class="tag-live"></span></span>
                        <img src="${(course.courseImgUrl)!''}" alt="${(course.courseTitle)!''}" class="img-responsive">
                    </a>
                </div>
                <div class="course-info">
                    <div class="title">
                        <a class="link-dark" href="${(course.courseLink)!''}"
                           target="_blank">${(course.courseTitle)!''}</a>
                    </div>
                    <div class="metas clearfix">
                        <span class="num hidden-md hidden-sm hidden-xs">参课人数：${(course.courseUserCount)!''}</span>
                        <span class="teacherName hidden-sm hidden-xs">老师：${(course.courseTeacherName)!''}</span>
                        <span class="course-price-widget">
                            <span class="price" style="font-size: 24px">
                                <#if course.coursePrice == 0>
                                    <span class="text-danger" style="font-size: 16px">免费</span>
                                <#else>
                                    <i style="font-size: 16px;font-style: normal">RMB</i>${(course.coursePrice)!''}
                                </#if>
                            </span>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </#list>
    </div>
</div>
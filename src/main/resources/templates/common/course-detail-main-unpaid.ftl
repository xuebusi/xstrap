<section class="es-section" style="padding: 0; min-height: 410px; background: #fff !important;">
    <div class="nav-btn-tab">
        <ul class="nav nav-tabs " role="tablist">
            <li style="width: 25%;" role="presentation" <#if selectiveType?? && selectiveType == '1'>class="active"</#if>>
                <a href="/course/${(course.id)!''}?selectiveType=1">课程介绍</a>
            </li>
            <li style="width: 25%;" role="presentation" <#if selectiveType?? && selectiveType == '2'>class="active"</#if>>
                <a href="/course/${(course.id)!''}/lesson?selectiveType=2">课程目录
                    <small class="text-muted">( ${lessonCount!''} )</small>
                </a>
            </li>
            <li style="width: 25%;" role="presentation" <#if selectiveType?? && selectiveType == '3'>class="active"</#if>>
                <a href="../../type/notice?selectiveType=3"> 听课须知</a>
            </li>
            <li style="width: 25%;" role="presentation" <#if selectiveType?? && selectiveType == '4'>class="active"</#if>>
                <a href="../../reviews?selectiveType=4">往期评论
                    <small class="text-muted">( 1 )</small>
                </a>
            </li>
        </ul>
    </div>
    <#if selectiveType?? && selectiveType == '1'>
        <div class="course-detail-content" style="padding: 15px">
            <div class="es-piece">
                <div class="piece-body p-lg clearfix">
                ${(courseDetail.courseDesc)!''}
                </div>
            </div>
        </div>
    </#if>

    <#if selectiveType?? && selectiveType == '2'>
        <div class="course-detail-content">
            <div class="es-piece">
                <div class="piece-body">
                    <ul class="period-list" id="course-item-list">
                    <#if lessonList??>
                        <#list lessonList as lesson>
                            <#if lesson.lessonParentId == 0>
                                <li class="chapter clearfix">
                                    <i class="glyphicon glyphicon-option-vertical"
                                       style="position: absolute;top: 12px; color: red"></i>
                                    <span class="title"> 章节: ${(lesson.lessonName)!''} </span>
                                <span class="period-show">
                                    <i style="font-size: 30px; color: red; "
                                       class="es-icon es-icon-keyboardarrowup"></i>
                                </span>
                                </li>
                            <#else>
                                <a class="course-lesson" href="/course/${(course.id)!''}/play/${(lesson.id)!''}">
                                    <li class="period lesson-item lesson-item-19621" data-id="19621" data-num="2">
                                        <span class="title"> 课时: ${(lesson.lessonName)!''}</span>
                                        <!-- 视频图标 -->
                                    <span class="course-type">
                                        <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top"
                                           title="视频课程"></i>
                                    </span>
                                        <i class="es-icon es-icon-dot status-icon"
                                           style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                    </li>
                                </a>
                            </#if>
                        </#list>
                    </#if>
                    </ul>
                </div>
            </div>
        </div>
    </#if>
</section>

<div class="col-lg-9 col-md-8  course-detail-main">
    <section class="es-section" style="padding: 0; min-height: 410px; background: #fff !important;">
        <div class="nav-btn-tab">
            <ul class="nav nav-tabs " role="tablist">
                <li style="width: 25%;" role="presentation">
                    <a href="/course/${course.id}">课程介绍</a>
                </li>
                <li style="width: 25%;" role="presentation" class="active">
                    <a href="/course/${course.id}/lesson">课程目录
                        <small class="text-muted">( ${lessonCount} )</small>
                    </a>
                </li>
                <li style="width: 25%;" role="presentation">
                    <a href="../../type/notice.html"> 听课须知</a>
                </li>
                <li style="width: 25%;" role="presentation">
                    <a href="../../reviews/index.html">往期评论
                        <small class="text-muted">( 1 )</small>
                    </a>
                </li>
            </ul>
        </div>
        <div class="course-detail-content">
            <div class="es-piece">
                <div class="piece-body">
                    <ul class="period-list" id="course-item-list">
                    <#list lessonList as lesson>
                        <#if lesson.lessonParentId == 0>
                            <li class="chapter clearfix">
                                <i class="glyphicon glyphicon-option-vertical" style="position: absolute;top: 12px; color: red"></i>
                                <span class="title"> 章节: ${lesson.lessonName} </span>
                                <span class="period-show">
                                    <i style="font-size: 30px; color: red; " class="es-icon es-icon-keyboardarrowup"></i>
                                </span>
                            </li>
                        <#else>
                            <a class="course-lesson" href="/course/${course.id}/play/${lesson.id}">
                                <li class="period lesson-item lesson-item-19621" data-id="19621" data-num="2">
                                    <span class="title"> 课时: ${lesson.lessonName}</span>
                                    <!-- 视频图标 -->
                                    <span class="course-type">
                                        <i class="es-icon es-icon-videoclass" data-toggle="tooltip" data-placement="top" title="视频课程"></i>
                                    </span>
                                    <i class="es-icon es-icon-dot status-icon" style="position: absolute;top: 10px;left: 13px;color: red;"></i>
                                </li>
                            </a>
                        </#if>
                    </#list>
                    </ul>
                </div>
            </div>
        </div>
    </section>
</div>
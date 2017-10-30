<div class="col-lg-3 col-md-4  course-sidebar">
    <div class="panel panel-default">
        <div class="panel-heading">
            <h3 class="panel-title">
                <i class="es-icon es-icon-assignmentind"></i>
                授课教师
            </h3>
        </div>
        <div class="panel-body">
            <div class="media media-default" style="margin-bottom:15px;">
                <div class="media-left" style="padding-bottom:0">
                    <a class=" js-user-card" href="/user/${(user.id)!}"
                       data-card-url="/user/${(user.id)!}/card/show" data-user-id="29231">
                        <img class="avatar-md" src="${(user.titleImgUrl)!''}">
                    </a>
                </div>
                <div class="media-body" style="padding-top:0">
                    <div class="title">
                        <a class="link-dark link-light"
                           href="/user/${(user.id)!}">${(user.username)!''}</a>
                    </div>
                    <div class="content"></div>
                </div>
                <div style="border-top: solid 1px #eee; display: -webkit-box; -webkit-box-orient: vertical;-webkit-line-clamp:3; overflow:hidden; text-overflow:ellipsis; margin-top: 18px">
                    <p class="userAbout">${(user.about)!''}</p>
                </div>
                <div style="padding-top: 22px;">
                    <h4 class="freeListen">
                        <a href="/user/${(user.id)!}">免费试听老师课程</a>
                    </h4>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="es-filter">
    <ul class="nav nav-sort clearfix">
    <#if navigation == 'all'>
        <#if category == 'all'>
            <li><a class="active" href="/">全部</a></li>
        <#else>
            <li><a class="" href="/">全部</a></li>
        </#if>
    <#else>
        <#if category == 'all'>
            <li><a class="active" href="/${navigation}/all/list">全部</a></li>
        <#else>
            <li><a class="" href="/${navigation}/all/list">全部</a></li>
        </#if>
    </#if>
    <#if category == 'systematic'>
        <li><a class="active" href="/${navigation}/systematic/list">系统课</a></li>
    <#else>
        <li><a class="" href="/${navigation}/systematic/list">系统课</a></li>
    </#if>

    <#if category == 'open'>
        <li><a class="active" href="/${navigation}/open/list">公开课</a></li>
    <#else>
        <li><a class="" href="/${navigation}/open/list">公开课</a></li>
    </#if>

    <#if category == 'bootcamp'>
        <li><a class="active" href="/${navigation}/bootcamp/list">训练营</a></li>
    <#else>
        <li><a class="" href="/${navigation}/bootcamp/list">训练营</a></li>
    </#if>

    </ul>
</div>
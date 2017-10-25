<nav class="text-center">
    <nav class=" text-center">
        <ul class="pagination" style="margin: 0">
        <#if currentPage == 1>
            <li class="active"><a href="/${navigation}/${category}/list?page=1">首页</a></li>
        <#else>
            <li><a href="/${navigation}/${category}/list?page=1">首页</a></li>
        </#if>
        <#if currentPage lte 1>
            <li class="disabled"><a href="#">上一页</a></li>
        <#else>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 1}">上一页</a></li>
        </#if>

        <#if currentPage gt 5>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 5}">${currentPage - 5}</a></li>
        </#if>
        <#if currentPage gt 4>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 4}">${currentPage - 4}</a></li>
        </#if>
        <#if currentPage gt 3>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 3}">${currentPage - 3}</a></li>
        </#if>
        <#if currentPage gt 2>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 2}">${currentPage - 2}</a></li>
        </#if>
        <#if currentPage gt 1>
            <li><a href="/${navigation}/${category}/list?page=${currentPage - 1}">${currentPage - 1}</a></li>
        </#if>

            <li class="active"><a href="/${navigation}/${category}/list?page=${currentPage}">${currentPage}</a></li>

        <#if currentPage + 1 lte coursePage.getTotalPages()>
            <li><a href="/${navigation}/${category}/list?page=${currentPage + 1}">${currentPage + 1}</a></li>
        </#if>
        <#if currentPage + 2 lte coursePage.getTotalPages()>
            <li><a href="/${navigation}/${category}/list?page=${currentPage + 2}">${currentPage + 2}</a></li>
        </#if>
        <#if currentPage + 3 lte coursePage.getTotalPages()>
            <li><a href="/${navigation}/${category}/list?page=${currentPage + 3}">${currentPage + 3}</a></li>
        </#if>
        <#if currentPage + 4 lte coursePage.getTotalPages()>
            <li><a href="/${navigation}/${category}/list?page=${currentPage + 4}">${currentPage + 4}</a></li>
        </#if>

        <#if currentPage gte coursePage.getTotalPages()>
            <li class="disabled"><a href="#">下一页</a></li>
        <#else>
            <li><a href="/${navigation}/${category}/list?page=${currentPage + 1}">下一页</a></li>
        </#if>
        <#if currentPage == coursePage.getTotalPages()>
            <li class="active"><a  href="/${navigation}/${category}/list?page=${coursePage.getTotalPages()}">尾页</a></li>
        <#else>
            <li><a  href="/${navigation}/${category}/list?page=${coursePage.getTotalPages()}">尾页</a></li>
        </#if>
        </ul>
    </nav>
</nav>
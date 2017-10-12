
<!doctype html>
<html lang="zh" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/common.css">
</head>

<body>

<div class="wrap">

    [#include "top.ftl"]

    <div class="page-body">
        <div class="left-sidebar">
            <div class="left-sidebar-header">
                <div class="left-sidebar-title">Navigation</div>
                <div class="left-sidebar-toggle c-hamburger c-hamburger--htla hidden-xs" data-toggle-class="left-sidebar-collapsed" data-target="html">
                    <span></span>
                </div>
            </div>
            <div id="left-nav" class="nano">
                <div class="nano-content">
                    <nav>
                        <ul class="nav" id="main-nav">
                            <li><a href="${contextPath}/index"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>
                            <li class="has-child-item open-item active-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li class="active-item"><a href="${contextPath}/analyst/list">人员列表</a></li>
                                    <li><a href="${contextPath}/analyst/add">添加</a></li>
                                    [#--<li><a href="${contextPath}/ui-elements_tabs">Tabs</a></li>
                                    <li><a href="${contextPath}/ui-elements_buttons">Buttons</a></li>
                                    <li><a href="${contextPath}/ui-elements_typography">Typography</a></li>
                                    <li><a href="${contextPath}/ui-elements_alerts">Alerts</a></li>
                                    <li><a href="${contextPath}/ui-elements_modals">Modals</a></li>
                                    <li><a href="${contextPath}/ui-elements_animations-appear">Animations</a></li>--]
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-pie-chart" aria-hidden="true"></i><span>项目</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/project/list">项目列表</a></li>
                                    <li><a href="${contextPath}/page/project_add">添加</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/page/assignment_list">任务列表</a></li>
                                    <li><a href="${contextPath}/page/assignment_add">添加</a></li>
                                    [#--<li><a href="${contextPath}/forms_advanced">Advanced</a></li>--]
                                    [#--<li><a href="${contextPath}/forms_validation">Validation</a></li>--]
                                </ul>
                            </li>
                            [#--<li class="has-child-item close-item">
                                <a><i class="fa fa-table" aria-hidden="true"></i><span>Tables</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="tables_basic.html">Basic</a></li>
                                    <li><a href="tables_data-tables.html">DataTable</a></li>
                                    <li><a href="tables_responsive.html">Responsive</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-files-o" aria-hidden="true"></i><span>Pages</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="pages_sign-in.html">Sign in</a></li>
                                    <li><a href="pages_lock-screen.html">Lock screen</a></li>
                                    <li><a href="pages_forgot-password.html">Forgot password</a></li>
                                    <li class="has-child-item close-item">
                                        <a>Error pages</a>
                                        <ul class="nav child-nav level-2 ">
                                            <li><a href="pages_error-404-content">Error 404 content</a></li>
                                            <li><a href="pages_error-404">Error 404 page</a></li>
                                            <li><a href="pages_error-500">Error 500</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="pages_faq.html">FAQ</a></li>
                                    <li><a href="pages_user-profile.html">User profile</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-paper-plane" aria-hidden="true"></i><span>Widgets</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="widgets_boxes.html">Boxes</a></li>
                                    <li><a href="widgets_lists.html">Lists</a></li>
                                    <li><a href="widgets_posts.html">Posts</a></li>
                                    <li><a href="widgets_timelines.html">Timelines</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-magic" aria-hidden="true"></i><span>Helpers</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="helpers_background-border.html">Background & Border</a></li>
                                    <li><a href="helpers_margin-padding.html">Margin & Padding</a></li>
                                </ul>
                            </li>
                            <li class=" has-child-item close-item">
                                <a>
                                    <i class="fa fa-sitemap" aria-hidden="true"></i>
                                    <span>Menu levels</span>
                                </a>
                                <ul class="nav child-nav level-1">
                                    <li><a>First Item</a></li>
                                    <li class="has-child-item close-item">
                                        <a>Second Item</a>
                                        <ul class="nav child-nav level-2 ">
                                            <li><a href="#">Option 1</a></li>
                                            <li><a href="#">Option 2</a></li>
                                            <li class="has-child-item close-item">
                                                <a>Option 3</a>
                                                <ul class="nav child-nav level-3 ">
                                                    <li><a href="#">Item 1</a></li>
                                                    <li><a href="#">Item 2</a></li>
                                                    <li><a href="#">Item 3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                    <li><a>Third Item</a></li>
                                    <li class="has-child-item close-item">
                                        <a>Fourth Item</a>
                                        <ul class="nav child-nav level-2 ">
                                            <li><a href="#">Option 1</a></li>
                                            <li><a href="#">Option 2</a></li>
                                            <li class="has-child-item close-item">
                                                <a>Option 3</a>
                                                <ul class="nav child-nav level-3 ">
                                                    <li><a href="#">Item 1</a></li>
                                                    <li><a href="#">Item 2</a></li>
                                                    <li><a href="#">Item 3</a></li>
                                                </ul>
                                            </li>
                                        </ul>
                                    </li>
                                </ul>
                            </li>--]
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="content-header">
                <div class="leftside-content-header">
                    <ul class="breadcrumbs">
                        <li><i class="fa fa-home" aria-hidden="true"></i><a href="#">人员管理</a></li>
                        <li><a>人员列表</a></li>
                    </ul>
                </div>
            </div>
            <form action="${contextPath}/analyst/delete" method="get">
                <button class="btn btn-o btn-danger" id="deleteAll">delete</button>
                <div><br></div>
                <div class="table-responsive">
                    <table class="table table-striped table-hover table-bordered text-center">
                        <thead>
                            <tr>
                                <th>
                                    <input type="checkbox" id="all">
                                </th>
                                <th>
                                    姓名
                                </th>
                                <th>
                                    项目
                                </th>
                                <th>
                                    操作
                                </th>
                            </tr>
                        </thead>
                        <tbody>
                        [#list analysts as analyst]
                            <tr>
                                <td>
                                    <input type="checkbox" name="ids" value="${analyst.id}">
                                </td>
                                <td>
                                    <span>${analyst.name}</span>
                                </td>
                                <td>
                                    [#list analyst.projects as project]
                                        <span>${project.name}</span>
                                        [#if project_has_next],[/#if]
                                    [/#list]
                                </td>
                                <td style="width: 150px;">
                                    <a class="fa fa-cog" href="/analyst/edit?id=${analyst.id}" style="cursor: pointer;"></a>
                                    &nbsp;
                                    &nbsp;
                                    <a class="fa fa-times action deleteOne" href="/analyst/delete?ids=${analyst.id}" style="cursor: pointer;"></a>
                                </td>
                            </tr>
                        [/#list]
                        </tbody>
                    </table>
                </div>
            </form>


        </div>
    </div>
</div>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/vendor/nano-scroller/nano-scroller.js"></script>
<script src="${contextPath}/resources/js/template-script.min.js"></script>
<script src="${contextPath}/resources/js/template-init.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script type="text/javascript">
    $(function () {

        [@flush_message /]

    })
</script>
</body>

</html>

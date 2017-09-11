
<!doctype html>
<html lang="en" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_date-picker/css/bootstrap-datepicker3.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_time-picker/css/timepicker.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_color-picker/css/bootstrap-colorpicker.min.css">
</head>

<body>
<div class="wrap">
    <div class="page-header">
        <div class="leftside-header">
            <div class="logo">
                <a href="${contextPath}/index" class="on-click">
                    <span style="position: absolute;font-size: 30px;color: #000;top: 12px;left: 10px;">管理系统</span>
                </a>
            </div>
            <div id="menu-toggle" class="visible-xs toggle-left-sidebar" data-toggle-class="left-sidebar-open" data-target="html">
                <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
            </div>
        </div>
        <div class="rightside-header">
            <div class="header-middle"></div>
            <div class="header-section hidden-xs" id="notice-headerbox">
                <div class="header-separator"></div>
            </div>
            <div class="header-section" id="user-headerbox">
                <div class="user-header-wrap">

                    <div class="user-info">
                        <span class="user-name"></span>
                        <span class="user-profile">Admin</span>
                    </div>
                </div>
            </div>
            <div class="header-separator"></div>
        [#-- <div class="header-section">
             <a href="#"><i class="fa fa-sign-out log-out" aria-hidden="true"></i></a>
         </div>--]
        </div>
    </div>

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
                            <li><a href="${contextPath}/index"><i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a></li>
                            <li class="has-child-item open-item active-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/analyst/list">人员列表</a></li>
                                    <li class="active-item"><a href="${contextPath}/page/analyst_add" >添加</a></li>
                                    [#--<li><a href="ui-elements_tabs.ftl">Tabs</a></li>
                                    <li><a href="ui-elements_buttons.ftl">Buttons</a></li>
                                    <li><a href="ui-elements_typography.ftl">Typography</a></li>
                                    <li><a href="ui-elements_alerts.ftl">Alerts</a></li>
                                    <li><a href="ui-elements_modals.ftl">Modals</a></li>
                                    <li><a href="ui-elements_animations-appear.ftl">Animations</a></li>--]
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-pie-chart" aria-hidden="true"></i><span>项目</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/project_list.ftl">项目列表</a></li>
                                    <li><a href="${contextPath}/page/project_add.ftl">添加</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/assignment_list.ftl">任务列表</a></li>
                                    <li><a href="${contextPath}/page/assignment_add.ftl">添加</a></li>
                                    [#--<li><a href="forms_advanced.ftl">Advanced</a></li>--]
                                    [#--<li><a href="forms_validation.ftl">Validation</a></li>--]
                                </ul>
                            </li>
                        [#--    <li class="has-child-item close-item">
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
                                            <li><a href="error_404.ftl">Error 404 content</a></li>
                                            <li><a href="404.html">Error 404 page</a></li>
                                            <li><a href="pages_error-500.ftl">Error 500</a></li>
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
                        <li><a>添加</a></li>
                    </ul>
                </div>
            </div>

            <div class="panel">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-md-12">
                            <form class="form-horizontal form-stripe" action="${contextPath}/analyst/update" method="get">
                                <input type="hidden" name="id" value="${analyst.id}">
                                <div class="form-group">
                                    <label for="placeholder" class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                    <span class="input-with-icon">
                                    <input type="text" class="form-control" id="placeholder" placeholder="name" name="analystName" value="${analyst.analystName}">
                                    <i class="fa fa-user"></i>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="disabled" class="col-sm-2 control-label">Disabled</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="disabled" placeholder="Disabled input" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="select2-example-multiple" class="col-sm-2 control-label">选择项目:</label>
                                    <div class="col-sm-10">
                                        <select name="project" id="select2-example-multiple" class="form-control" multiple="multiple" style="width: 100%">
                                            <optgroup label="项目列表">
                                                <option value="AI" label="Anguilla">Anguilla</option>
                                            </optgroup>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <div class="col-sm-offset-2 col-sm-10">
                                        <button type="submit" class="btn btn-primary">submit</button>
                                    </div>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>

        </div>

        <div class="right-sidebar">
            <div class="right-sidebar-toggle" data-toggle-class="right-sidebar-opened" data-target="html">
                <i class="fa fa-cog fa-spin" aria-hidden="true"></i>
            </div>
            <div id="right-nav" class="nano">
                <div class="nano-content">
                    <div class="template-settings">
                        <h4 class="text-center">Template Settings</h4>
                        <ul class="toggle-settings pv-xlg">
                            <li>
                                <h6 class="text">Header fixed</h6>
                                <label class="switch">
                                    <input id="header-fixed" type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                            </li>
                            <li>
                                <h6 class="text">Left sidebar fixed</h6>
                                <label class="switch">
                                    <input id="left-sidebar-fixed" type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                            </li>
                            <li>
                                <h6 class="text">Left sidebar collapsed</h6>
                                <label class="switch">
                                    <input id="left-sidebar-collapsed" type="checkbox">
                                    <span class="slider round"></span>
                                </label>
                            </li>
                            <li>
                                <h6 class="text">Content header fixed</h6>
                                <label class="switch">
                                    <input id="content-header-fixed" type="checkbox" checked>
                                    <span class="slider round"></span>
                                </label>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <a href="#" class="scroll-to-top"><i class="fa fa-angle-double-up"></i></a>
    </div>
</div>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="${contextPath}/resources/vendor/nano-scroller/nano-scroller.js"></script>
<script src="${contextPath}/resources/js/template-script.min.js"></script>
<script src="${contextPath}/resources/js/template-init.min.js"></script>
<script src="${contextPath}/resources/js/examples/forms/advanced.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap_max-lenght/bootstrap-maxlength.js"></script>
<script src="${contextPath}/resources/vendor/select2/js/select2.min.js"></script>
<script src="${contextPath}/resources/vendor/input-masked/inputmask.bundle.min.js"></script>
<script src="${contextPath}/resources/vendor/input-masked/phone-codes/phone.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap_date-picker/js/bootstrap-datepicker.min.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap_time-picker/js/bootstrap-timepicker.js"></script>
<script src="${contextPath}/resources/vendor/bootstrap_color-picker/js/bootstrap-colorpicker.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>

    <script type="text/javascript">
        $(function () {
            [@flush_message /]
        })
    </script>
</body>

</html>

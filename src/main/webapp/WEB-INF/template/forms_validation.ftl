
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
            <div class="header-section" id="search-headerbox">
                <input type="text" name="search" id="search" placeholder="Search...">
                <i class="fa fa-search search" id="search-icon" aria-hidden="true"></i>
                <div class="header-separator"></div>
            </div>
            <div class="header-section hidden-xs" id="notice-headerbox">
                <div class="notice" id="checklist-notice">
                    <i class="fa fa-check-square-o" aria-hidden="true"></i>
                    <div class="dropdown-box basic">
                        <div class="drop-header">
                            <h3><i class="fa fa-check-square-o" aria-hidden="true"></i> To-Do List</h3>
                        </div>
                        <div class="drop-content">
                            <div class="widget-list list-to-do">
                                <ul>
                                    <li>
                                        <div class="checkbox-custom checkbox-primary">
                                            <input type="checkbox" id="check-s1" value="option1">
                                            <label for="check-s1">Accusantium eveniet ipsam neque</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox-custom checkbox-primary">
                                            <input type="checkbox" id="check-s2" value="option1" checked>
                                            <label for="check-s2">Lorem ipsum dolor sit</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox-custom checkbox-primary">
                                            <input type="checkbox" id="check-s3" value="option1">
                                            <label for="check-s3">Dolor eligendi in ipsum sapiente</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox-custom checkbox-primary">
                                            <input type="checkbox" id="check-s4" value="option1">
                                            <label for="check-s4">Natus recusandae vel</label>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="checkbox-custom checkbox-primary">
                                            <input type="checkbox" id="check-s5" value="option1">
                                            <label for="check-s5">Adipisci amet officia tempore ut</label>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="drop-footer">
                            <a>See all Items</a>
                        </div>
                    </div>
                </div>
                <div class="notice" id="messages-notice">
                    <i class="fa fa-comments-o" aria-hidden="true"></i>
                    <span><i class="fa fa-exclamation-circle" aria-hidden="true"></i></span>
                    <div class="dropdown-box basic">
                        <div class="drop-header ">
                            <h3><i class="fa fa-comments-o" aria-hidden="true"></i> Messages</h3>
                            <span class="number">120</span>
                        </div>
                        <div class="drop-content">
                            <div class="widget-list list-left-element">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><img alt="John Doe" src="${contextPath}/resources/images/avatar_1.jpg" /></div>
                                            <div class="text">
                                                <span class="title">John Doe</span>
                                                <span class="subtitle">Lorem ipsum dolor sit.</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><img alt="Alice Smith" src="${contextPath}/resources/images/avatar_2.jpg" /></div>
                                            <div class="text">
                                                <span class="title">Alice Smith</span>
                                                <span class="subtitle">Deserunt, mollitia?</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><img alt="Klaus Wolf" src="${contextPath}/resources/images/avatar_3.jpg" /></div>
                                            <div class="text">
                                                <span class="title">Klaus Wolf</span>
                                                <span class="subtitle">Consectetur adipisicing elit.</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><img alt="Sun Li" src="${contextPath}/resources/images/avatar_4.jpg" /></div>
                                            <div class="text">
                                                <span class="title">Sun Li</span>
                                                <span class="subtitle">Tenetur tempora?</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><img alt="Sonia Valera" src="${contextPath}/resources/images/avatar_5.jpg" /></div>
                                            <div class="text">
                                                <span class="title">Sonia Valera</span>
                                                <span class="subtitle">Similique ad maxime.</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="drop-footer">
                            <a>See all messages</a>
                        </div>
                    </div>
                </div>
                <div class="notice" id="alerts-notice">
                    <i class="fa fa-bell-o" aria-hidden="true"></i>
                    <span>4</span>
                    <div class="dropdown-box basic">
                        <div class="drop-header">
                            <h3><i class="fa fa-bell-o" aria-hidden="true"></i> Notifications</h3>
                            <span class="number">4</span>
                        </div>
                        <div class="drop-content">
                            <div class="widget-list list-left-element list-sm">
                                <ul>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><i class="fa fa-warning color-warning"></i></div>
                                            <div class="text">
                                                <span class="title">8 Bugs</span>
                                                <span class="subtitle">reported today</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><i class="fa fa-flag color-danger"></i></div>
                                            <div class="text">
                                                <span class="title">Error</span>
                                                <span class="subtitle">sevidor C down</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><i class="fa fa-cog color-dark"></i></div>
                                            <div class="text">
                                                <span class="title">New Configuration</span>
                                                <span class="subtitle"></span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><i class="fa fa-tasks color-success"></i></div>
                                            <div class="text">
                                                <span class="title">14 Task</span>
                                                <span class="subtitle">completed</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a href="#">
                                            <div class="left-element"><i class="fa fa-envelope color-primary"></i></div>
                                            <div class="text">
                                                <span class="title">21 Menssage</span>
                                                <span class="subtitle"> (see more)</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="drop-footer">
                            <a>See all notifications</a>
                        </div>
                    </div>
                </div>
                <div class="header-separator"></div>
            </div>
            <div class="header-section" id="user-headerbox">
                <div class="user-header-wrap">

                    <div class="user-info">
                        <span class="user-name">Jane Doe</span>
                        <span class="user-profile">Admin</span>
                    </div>
                    <i class="fa fa-plus icon-open" aria-hidden="true"></i>
                    <i class="fa fa-minus icon-close" aria-hidden="true"></i>
                </div>
                <div class="user-options dropdown-box">
                    <div class="drop-content basic">
                        <ul>
                            <li> <a href="pages_user-profile.html"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
                            <li> <a href="pages_lock-screen.html"><i class="fa fa-lock" aria-hidden="true"></i> Lock Screen</a></li>
                            <li><a href="#"><i class="fa fa-cog" aria-hidden="true"></i> Configurations</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="header-separator"></div>
            <div class="header-section">
                <a href="pages_sign-in.html"><i class="fa fa-sign-out log-out" aria-hidden="true"></i></a>
            </div>
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
                            <li><a href="index.ftl"><i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a></li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/analyst/list">人员列表</a></li>
                                    <li><a href="${contextPath}/analyst/add">添加</a></li>
                                    <li><a href="ui-elements_tabs.ftl">Tabs</a></li>
                                    <li><a href="ui-elements_buttons.ftl">Buttons</a></li>
                                    <li><a href="ui-elements_typography.ftl">Typography</a></li>
                                    <li><a href="ui-elements_alerts.ftl">Alerts</a></li>
                                    <li><a href="ui-elements_modals.ftl">Modals</a></li>
                                    <li class="has-child-item close-item">
                                        <a>Notifications</a>
                                        <ul class="nav child-nav level-2 ">
                                            <li><a href="ui-elements_notifications-pnotify.ftl">PNotify</a></li>
                                            <li><a href="ui-elements_notifications-toastr.ftl">Toastr</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="ui-elements_animations-appear.ftl">Animations</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-pie-chart" aria-hidden="true"></i><span>项目</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/project/list">项目列表</a></li>
                                    <li><a href="${contextPath}/page/project_add">添加</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item open-item active-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/assignment/list">任务列表</a></li>
                                    <li><a href="${contextPath}/assignment/add">添加</a></li>
                                    <li><a href="forms_advanced.ftl">Advanced</a></li>
                                    <li class="active-item"><a href="forms_validation.ftl">Validation</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
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
                            </li>
                        </ul>
                    </nav>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="content-header">
                <div class="leftside-content-header">
                    <ul class="breadcrumbs">
                        <li><i class="fa fa-columns" aria-hidden="true"></i><a href="#">任务单</a></li>
                        <li><a>Validation</a></li>
                    </ul>
                </div>
            </div>
            <div class="row animated fadeInUp">
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Validation states</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="panel-content">
                                        <div class="form-group has-success">
                                            <label for="state-success" class="control-label">Success</label>
                                            <input type="text" class="form-control" id="state-success">
                                        </div>
                                        <div class="form-group has-warning">
                                            <label for="state-warning" class="control-label">Warning</label>
                                            <input type="text" class="form-control" id="state-warning">
                                        </div>
                                        <div class="form-group has-error">
                                            <label for="state-error" class="control-label">Error</label>
                                            <input type="text" class="form-control" id="state-error">
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="panel-content">
                                        <div class="form-group  has-success has-feedback">
                                            <label for="state-success-feedback" class="control-label">Success</label>
                                            <input type="text" class="form-control" id="state-success-feedback">
                                            <span class="glyphicon glyphicon-ok form-control-feedback"></span>
                                        </div>
                                        <div class="form-group has-warning has-feedback">
                                            <label for="state-warning-feedback" class="control-label">Warning</label>
                                            <input type="text" class="form-control" id="state-warning-feedback">
                                            <span class="glyphicon glyphicon-warning-sign form-control-feedback"></span>
                                        </div>
                                        <div class="form-group has-error has-feedback">
                                            <label for="state-error-feedback" class="control-label">Error</label>
                                            <input type="text" class="form-control" id="state-error-feedback">
                                            <span class="glyphicon glyphicon-remove form-control-feedback"></span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Inline validation</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form id="inline-validation" class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="name" class="col-sm-3 control-label">Name<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="name" name="name" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="username" class="col-sm-3 control-label">Username<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="username" name="username" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="email" class="col-sm-3 control-label">Email<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="email" class="form-control" id="email" name="email" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="password" class="col-sm-3 control-label">Password<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" id="password" name="password" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="cofirmation" class="col-sm-3 control-label">Confirmation<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="password" class="form-control" id="cofirmation" name="confirmation" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="age" class="col-sm-3 control-label">Age<span class="required">*</span></label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="age" name="age" required>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="url" class="col-sm-3 control-label">Url</label>
                                            <div class="col-sm-6">
                                                <input type="text" class="form-control" id="url" name="url">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-3 col-sm-9">
                                                <button type="submit" class="btn btn-primary">Submit</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Message box validation</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form id="messagebox-validation"  class="">
                                        <div class="message-container alert alert-danger">
                                            <ul></ul>
                                        </div>
                                        <div class="form-group">
                                            <label for="username2" class=" control-label">Username<span class="required">*</span></label>
                                            <input type="text" class="form-control" id="username2" name="username" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="email2" class=" control-label">Email<span class="required">*</span></label>
                                            <input type="email" class="form-control" id="email2" name="email" required>
                                        </div>
                                        <div class="form-group">
                                            <label for="password2" class=" control-label">Password<span class="required">*</span></label>
                                            <input type="password" class="form-control" id="password2" name="password" required>
                                        </div>
                                        <div class="form-group">
                                            <button type="submit" class="btn btn-primary">Submit</button>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
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
                        <h4 class="text-center">Template Colors</h4>
                        <ul class="toggle-colors">
                            <li>
                                <a href="${contextPath}/index" class="on-click"> <img alt="任务分派-green" src="images/任务分派-green.png" /></a>
                            </li>
                            <li>
                                <a href="../任务分派-light/index.html" class="on-click"> <img alt="任务分派-light" src="images/任务分派-light.png" /></a>
                            </li>
                            <li>
                                <a href="../任务分派-blue/index.html" class="on-click"> <img alt="任务分派-blue" src="images/任务分派-blue.png" /></a>
                            </li>
                            <li>
                                <a href="../任务分派-red/index.html" class="on-click"> <img alt="任务分派-red" src="images/任务分派-red.png" /></a>
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
<script src="vendor/jquery-validation/jquery.validate.min.js"></script>
<script src="javascripts/examples/任务单/validation.js"></script>
</body>

</html>

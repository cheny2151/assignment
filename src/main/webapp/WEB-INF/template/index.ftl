
<!doctype html>
<html lang="zh" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/toastr/toastr.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/magnific-popup/magnific-popup.css">
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
           <#-- <div class="header-section">
                <a href="#"><i class="fa fa-sign-out log-out" aria-hidden="true"></i></a>
            </div>-->
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
                            <li class="active-item"><a href="index"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/analyst_list">人员列表</a></li>
                                    <li><a href="${contextPath}/analyst_add">添加</a></li>
                                    <#--<li><a href="${contextPath}/ui-elements_tabs">Tabs</a></li>
                                    <li><a href="${contextPath}/ui-elements_buttons">Buttons</a></li>
                                    <li><a href="${contextPath}/ui-elements_typography">Typography</a></li>
                                    <li><a href="${contextPath}/ui-elements_alerts">Alerts</a></li>
                                    <li><a href="${contextPath}/ui-elements_modals">Modals</a></li>
                                    <li><a href="ui-elements_animations-appear">Animations</a></li>-->
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-pie-chart" aria-hidden="true"></i><span>项目</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="charts_chart-js">项目列表</a></li>
                                    <li><a href="charts_morris">添加</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="forms_layouts">任务列表</a></li>
                                    <li><a href="forms_elements">添加</a></li>
                                    <li><a href="forms_advanced">Advanced</a></li>
                                    <li><a href="forms_validation">Validation</a></li>
                                </ul>
                            </li>
                         <#--   <li class="has-child-item close-item">
                                <a><i class="fa fa-table" aria-hidden="true"></i><span>Tables</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="tables_basic.html">Basic</a></li>
                                    <li><a href="tables_data-tables.html">DataTable</a></li>
                                    <li><a href="tables_responsive.html">Responsive</a></li>
                                </ul>
                            </li>-->
                           <#-- <li class="has-child-item close-item">
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
                            </li>-->
                           <#-- <li class="has-child-item close-item">
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
                            </li>-->
                        </ul>
                    </nav>
                </div>
            </div>
        </div>

        <div class="content">
            <div class="content-header">
                <div class="leftside-content-header">
                    <ul class="breadcrumbs">
                        <li><i class="fa fa-home" aria-hidden="true"></i><a href="#">Home</a></li>
                    </ul>
                </div>
            </div>
            <div class="row animated fadeInUp">
                <div class="col-sm-12 col-lg-9">
                    <div class="row">
                        <div class="col-sm-12 col-md-4">
                            <div class="panel widgetbox wbox-2 bg-scale-0">
                                <a href="#">
                                    <div class="panel-content">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <span class="icon fa fa-globe color-darker-1"></span>
                                            </div>
                                            <div class="col-xs-8">
                                                <h4 class="subtitle color-darker-1">Views</h4>
                                                <h1 class="title color-primary"> 154.609</h1>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="panel widgetbox wbox-2 bg-lighter-2 color-light">
                                <a href="#">
                                    <div class="panel-content">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <span class="icon fa fa-user color-darker-2"></span>
                                            </div>
                                            <div class="col-xs-8">
                                                <h4 class="subtitle color-darker-2">New Users</h4>
                                                <h1 class="title color-w"> 105</h1>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                            <div class="panel widgetbox wbox-2 bg-darker-2 color-light">
                                <a href="#">
                                    <div class="panel-content">
                                        <div class="row">
                                            <div class="col-xs-4">
                                                <span class="icon fa fa-envelope color-lighter-1"></span>
                                            </div>
                                            <div class="col-xs-8">
                                                <h4 class="subtitle color-lighter-1">New Messages</h4>
                                                <h1 class="title color-light"> 124</h1>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-8">
                            <div class="panel">
                                <div class="panel-content">
                                    <h5><b>First semester</b> Sells</h5>
                                    <p class="section-text">Lorem ipsum <span class="highlight">dolor sit amet</span> consectetur adipisicing elit. Assumenda fugit inventore ipsam nam, qui voluptatibus</p>
                                    <canvas id="area-chart" width="400" height="160"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-4">
                            <div class="panel b-primary bt-md">
                                <div class="panel-content p-none">
                                    <div class="widget-list list-to-do">
                                        <h4 class="list-title">To do List</h4>
                                        <button class="add-item btn btn-o btn-primary btn-xs"><i class="fa fa-plus"></i></button>
                                        <ul>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h1" value="option1">
                                                    <label for="check-h1">Accusantium eveniet ipsam neque</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h2" value="option1" checked>
                                                    <label for="check-h2">Lorem ipsum dolor sit</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h3" value="option1">
                                                    <label for="check-h3">Dolor eligendi in ipsum sapiente</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h4" value="option1">
                                                    <label for="check-h4">Natus recusandae vel</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h5" value="option1">
                                                    <label for="check-h5">Adipisci amet officia tempore ut</label>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="checkbox-custom checkbox-primary">
                                                    <input type="checkbox" id="check-h6" value="option1">
                                                    <label for="check-h6">Possimus repellat repellendus</label>
                                                </div>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-8">
                            <div class="tabs mt-none">
                                <ul class="nav nav-tabs nav-justified">
                                    <li class="active"><a href="#home" data-toggle="tab">Employees</a></li>
                                    <li><a href="#profile" data-toggle="tab">Sells</a></li>
                                    <li><a href="#messages" data-toggle="tab">Messages</a></li>
                                    <li><a href="#settings" data-toggle="tab"><i class="fa fa-cog" aria-hidden="true"></i> Settings</a></li>
                                </ul>
                                <div class="tab-content">
                                    <div class="tab-pane fade in active" id="home">
                                        <div class="table-responsive">
                                            <table class="table table-striped table-hover">
                                                <thead>
                                                <tr>
                                                    <th>Name</th>
                                                    <th>Position</th>
                                                    <th>Office</th>
                                                    <th>Age</th>
                                                </tr>
                                                </thead>
                                                <tbody>
                                                <tr>
                                                    <td>Olivia Liang</td>
                                                    <td>Support Engineer</td>
                                                    <td>Singapore</td>
                                                    <td>34</td>
                                                </tr>
                                                <tr>
                                                    <td>Bruno Nash</td>
                                                    <td>Software Engineer</td>
                                                    <td>London</td>
                                                    <td>38</td>
                                                </tr>
                                                <tr>
                                                    <td>Sakura Yamamoto</td>
                                                    <td>Support Engineer</td>
                                                    <td>Tokyo</td>
                                                    <td>37</td>
                                                </tr>
                                                <tr>
                                                    <td>Michael Bruce</td>
                                                    <td>Javascript Developer</td>
                                                    <td>Singapore</td>
                                                    <td>29</td>
                                                </tr>
                                                <tr>
                                                    <td>Donna Snider</td>
                                                    <td>Customer Support</td>
                                                    <td>New York</td>
                                                    <td>27</td>
                                                </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="profile">
                                        <p><b>Profile</b> content</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae tellus tincidunt, mattis odio eu, accumsan quam. Duis ultricies, erat nec suscipit mattis, risus est efficitur enim, sed finibus lacus nisi et mauris. Ut sed accumsan ipsum. Aliquam vel nibh et turpis euismod porttitor. In diam odio, cursus eget faucibus quis, efficitur id erat. Aliquam euismod in justo sit amet ornare. Quisque eu fringilla libero. Donec iaculis sit amet nibh non laoreet.
                                        </p>
                                    </div>
                                    <div class="tab-pane fade" id="messages">
                                        <p><b>Message</b> content</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae tellus tincidunt, mattis odio eu, accumsan quam. Duis ultricies, erat nec suscipit mattis, risus est efficitur enim, sed finibus lacus nisi et mauris. Ut sed accumsan ipsum. Aliquam vel nibh et turpis euismod porttitor. In diam odio, cursus eget faucibus quis, efficitur id erat. Aliquam euismod in justo sit amet ornare. Quisque eu fringilla libero. Donec iaculis sit amet nibh non laoreet.
                                        </p>
                                    </div>
                                    <div class="tab-pane fade" id="settings">
                                        <p><b>Settings</b> content</p>
                                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas vitae tellus tincidunt, mattis odio eu, accumsan quam. Duis ultricies, erat nec suscipit mattis, risus est efficitur enim, sed finibus lacus nisi et mauris. Ut sed accumsan ipsum. Aliquam vel nibh et turpis euismod porttitor. In diam odio, cursus eget faucibus quis, efficitur id erat. Aliquam euismod in justo sit amet ornare. Quisque eu fringilla libero. Donec iaculis sit amet nibh non laoreet.
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12 col-md-4">
                            <div class="panel">
                                <div class="panel-content">
                                    <h5><b>Lorem ipsum dolor sit</b></h5>
                                    <p>Dolor sit amet <span class="highlight">consectetur</span> erte</p>
                                    <canvas id="pie-chart" width="400" height="260"></canvas>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-12 col-md-8">
                            <div class=" gallery-wrap">
                                <div class="row">
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="first photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="second photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="third photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="fourth photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="fifth photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="sixth photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="seventh photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                    <div class="col-xs-6 col-md-3">
                                        <a href="images/任务分派-lg.jpg" title="By John Doe">
                                            <img alt="eighth photo" src="images/任务分派.jpg" class="img-responsive">
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12 col-lg-3">
                    <div class="timeline">
                        <div class="timeline-box">
                            <div class="timeline-icon bg-primary">
                                <i class="fa fa-phone"></i>
                            </div>
                            <div class="timeline-content">
                                <h4 class="tl-title">Ello impedit iusto</h4> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur distinctio illo impedit iusto minima nisi quo tempora ut!
                            </div>
                            <div class="timeline-footer">
                                <span>Today. 14:25</span>
                            </div>
                        </div>
                        <div class="timeline-box">
                            <div class="timeline-icon bg-primary">
                                <i class="fa fa-tasks"></i>
                            </div>
                            <div class="timeline-content">
                                <h4 class="tl-title">consectetur adipisicing </h4> Lorem ipsum dolor sit amet. Consequatur distinctio illo impedit iusto minima nisi quo tempora ut!
                            </div>
                            <div class="timeline-footer">
                                <span>Today. 10:55</span>
                            </div>
                        </div>
                        <div class="timeline-box">
                            <div class="timeline-icon bg-primary">
                                <i class="fa fa-file"></i>
                            </div>
                            <div class="timeline-content">
                                <h4 class="tl-title">Impedit iusto minima nisi</h4> Lorem ipsum dolor sit amet, consectetur adipisicing elit. Consequatur distinctio illo impedit iusto minima nisi quo tempora ut!
                            </div>
                            <div class="timeline-footer">
                                <span>Today. 9:20</span>
                            </div>
                        </div>
                        <div class="timeline-box">
                            <div class="timeline-icon bg-primary">
                                <i class="fa fa-check"></i>
                            </div>
                            <div class="timeline-content">
                                <h4 class="tl-title">Lorem ipsum dolor sit</h4> Lorem ipsum dolor sit amet Consequatur distinctio illo impedit iusto minima nisi quo tempora ut!
                            </div>
                            <div class="timeline-footer">
                                <span>Yesteday. 16:30</span>
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
                                <a href="index" class="on-click"> <img alt="任务分派-green" src="images/任务分派-green.png" /></a>
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
<script src="${contextPath}/resources/vendor/toastr/toastr.min.js"></script>
<script src="${contextPath}/resources/vendor/chart-js/chart.min.js"></script>
<script src="${contextPath}/resources/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
<script src="${contextPath}/resources/js/examples/dashboard.js"></script>
</body>

</html>

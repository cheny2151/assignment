
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
                            <li><a href="index.ftl"><i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a></li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="analyst_list.ftl">人员列表</a></li>
                                    <li><a href="analyst_add.ftl">添加</a></li>
                                 <#--   <li><a href="ui-elements_tabs.ftl">Tabs</a></li>
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
                                    <li><a href="ui-elements_animations-appear.ftl">Animations</a></li>-->
                                </ul>
                            </li>
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-pie-chart" aria-hidden="true"></i><span>项目</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="project_list.ftl">项目列表</a></li>
                                    <li><a href="project_add.ftl">添加</a></li>
                                </ul>
                            </li>
                            <li class="has-child-item open-item active-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="assignment_list.ftl">任务列表</a></li>
                                    <li class="active-item"><a href="assignment_add.ftl">添加</a></li>
                                    <#--<li><a href="forms_advanced.ftl">Advanced</a></li>-->
                                    <#--<li><a href="forms_validation.ftl">Validation</a></li>-->
                                </ul>
                            </li>
                            <#--<li class="has-child-item close-item">
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
                        <li><i class="fa fa-columns" aria-hidden="true"></i><a href="#">任务单</a></li>
                        <li><a>添加</a></li>
                    </ul>
                </div>
            </div>
            <div class="row animated fadeInUp">
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Settings</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="placeholder" class="col-sm-2 control-label">Placeholder</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="placeholder" placeholder="Placeholder">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="disabled" class="col-sm-2 control-label">Disabled</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="disabled" placeholder="Disabled input" disabled="disabled">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="readonly" class="col-sm-2 control-label">Read only</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="readonly" value="Read only content" readonly="readonly">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Helpers</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="tooltip" class="col-sm-2 control-label">Tooltip</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="tooltip" placeholder="Hover me!" data-toggle="tooltip" data-trigger="hover" data-original-title="Your tooltip content!">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="popover" class="col-sm-2 control-label">Popover</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="popover" placeholder="Click me!" data-toggle="popover" data-placement="top" data-trigger="click" data-content="Your popover content!">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="blockofhelp" class="col-sm-2 control-label">Block help</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="blockofhelp" placeholder="input with help information">
                                                <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>A block of help text that breaks onto a new line and may extend beyond one line.</span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Sizes</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal ">
                                        <div class="form-group">
                                            <label for="sizelg" class="col-sm-2 control-label">Large</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control input-lg" id="sizelg" placeholder="large input">
                                                <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Add to the input the class <span class="code">.input-lg</span></span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sizemd" class="col-sm-2 control-label">Medium</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="sizemd" placeholder="default input">
                                                <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Default input size</span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="sizesm" class="col-sm-2 control-label">Small</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control input-sm" id="sizesm" placeholder="small input">
                                                <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Add to the input the class <span class="code">.input-sm</span></span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Icons</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal">
                                        <div class="form-group">
                                            <label for="lefticon" class="col-sm-2 control-label">Left icon</label>
                                            <div class="col-sm-10">
                                                    <span class="input-with-icon">
                                                    <input type="text" class="form-control" id="lefticon" placeholder="Left side icon">
                                                    <i class="fa fa-user"></i>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Right icon</label>
                                            <div class="col-sm-10">
                                                    <span class="input-with-icon right-icon-input">
                                                    <input type="text" class="form-control" id="righticon" placeholder="Right side icon">
                                                    <i class="fa fa-envelope"></i>
                                                </span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Groups Adds on </b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="left-addon-icon" class="col-sm-2 control-label">Icons</label>
                                            <div class="col-sm-10">
                                                <div class="input-group mb-sm">
                                                    <span class="input-group-addon">@</span>
                                                    <input type="text" class="form-control" id="left-addon-icon" placeholder="Username">
                                                </div>
                                                <div class="input-group mb-sm">
                                                    <input type="text" class="form-control" id="right-addon-icon">
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                                <div class="input-group">
                                                    <span class="input-group-addon">Total</span>
                                                    <input type="text" class="form-control" id="leftright-addon-icon">
                                                    <span class="input-group-addon">.00</span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Buttons</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <input type="text" class="form-control" id="button-addon" placeholder="comment">
                                                        <span class="input-group-btn">
                                                            <button class="btn btn-primary" type="button">Send</button>
                                                   </span>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Checkbox & radio</label>
                                            <div class="col-sm-10">
                                                <div class="input-group mb-sm">
                                                        <span class="input-group-addon">
                                                            <input type="checkbox" checked>
                                                        </span>
                                                    <input type="text" class="form-control" id="checkbox-addon" placeholder="other option">
                                                </div>
                                                <div class="input-group">
                                                        <span class="input-group-addon">
                                                            <input type="radio" checked>
                                                        </span>
                                                    <input type="text" class="form-control" id="radio-addon" placeholder="other option">
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Checkbox</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="left-addon-icon" class="col-sm-2 control-label">Default</label>
                                            <div class="col-sm-5">
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="checkbox1" value="option1" checked> Checkbox option 1
                                                    </label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="checkbox2" value="option2"> Checkbox option 2
                                                    </label>
                                                </div>
                                                <div class="checkbox">
                                                    <label>
                                                        <input type="checkbox" id="checkbox3" value="option2"> Checkbox option 3
                                                    </label>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="radio1" value="option1" checked> Radio option 1
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="radio2" value="option2"> Radio option 2
                                                    </label>
                                                </div>
                                                <div class="radio">
                                                    <label>
                                                        <input type="radio" name="optionsRadios" id="radio3" value="option3"> Radio option 3
                                                    </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Inline</label>
                                            <div class="col-sm-5">
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="inlineCheckbox1" value="option1" checked> Checkbox 1
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="inlineCheckbox2" value="option2"> Checkbox 2
                                                </label>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" id="inlineCheckbox3" value="option3"> Checkbox 3
                                                </label>
                                            </div>
                                            <div class="col-sm-5">
                                                <label class="radio-inline">
                                                    <input type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1" checked> Radio 1
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2"> Radio 2
                                                </label>
                                                <label class="radio-inline">
                                                    <input type="radio" name="inlineRadioOptions" id="inlineRadio3" value="option3"> Radio 3
                                                </label>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Custom</label>
                                            <div class="col-sm-5">
                                                <div class="checkbox-custom checkbox-success">
                                                    <input type="checkbox" id="checkboxCustom3" value="option1" checked>
                                                    <label for="checkboxCustom3">Checkbox success</label>
                                                </div>
                                                <div class="checkbox-custom checkbox-warning">
                                                    <input type="checkbox" id="checkboxCustom4" value="option1" checked>
                                                    <label for="checkboxCustom4">Checkbox warning</label>
                                                </div>
                                                <div class="checkbox-custom checkbox-danger">
                                                    <input type="checkbox" id="checkboxCustom5" value="option1" checked>
                                                    <label for="checkboxCustom5">Checkbox danger</label>
                                                </div>
                                                <div class="checkbox-custom checkbox-info">
                                                    <input type="checkbox" id="checkboxCustom6" value="option1" checked>
                                                    <label for="checkboxCustom6">Checkbox info</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="radio radio-custom radio-success">
                                                    <input type="radio" id="radioCustom3" name="CustomOptionsRadios" value="option3" checked>
                                                    <label for="radioCustom3">Radio success</label>
                                                </div>
                                                <div class="radio radio-custom radio-warning">
                                                    <input type="radio" id="radioCustom4" name="CustomOptionsRadios" value="option4">
                                                    <label for="radioCustom4">Radio warning</label>
                                                </div>
                                                <div class="radio radio-custom radio-danger">
                                                    <input type="radio" id="radioCustom5" name="CustomOptionsRadios" value="option5">
                                                    <label for="radioCustom5">Radio danger</label>
                                                </div>
                                                <div class="radio radio-custom radio-info">
                                                    <input type="radio" id="radioCustom6" name="CustomOptionsRadios" value="option6">
                                                    <label for="radioCustom6">Radio info</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="righticon" class="col-sm-2 control-label">Custom Inline</label>
                                            <div class="col-sm-5">
                                                <div class="checkbox-custom checkbox-inline">
                                                    <input type="checkbox" id="checkboxCustom1" value="option1" checked>
                                                    <label for="checkboxCustom1">Checkbox default</label>
                                                </div>
                                                <div class="checkbox-custom checkbox-inline checkbox-primary">
                                                    <input type="checkbox" id="checkboxCustom2" value="option1" checked>
                                                    <label for="checkboxCustom2">Checkbox primary</label>
                                                </div>
                                            </div>
                                            <div class="col-sm-5">
                                                <div class="radio radio-custom radio-inline">
                                                    <input type="radio" id="radioCustom1" name="CustomInlineOptionsRadios" value="option1" checked>
                                                    <label for="radioCustom1">Radio default</label>
                                                </div>
                                                <div class="radio radio-custom radio-inline radio-primary">
                                                    <input type="radio" id="radioCustom2" name="CustomInlineOptionsRadios" value="option2">
                                                    <label for="radioCustom2">Radio primary</label>
                                                </div>
                                            </div>
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
</body>

</html>

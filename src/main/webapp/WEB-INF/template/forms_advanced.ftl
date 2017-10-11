﻿<!doctype html>
<html lang="en" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="http://cdn.bootcss.com/font-awesome/4.6.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_date-picker/css/bootstrap-datepicker3.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_time-picker/css/timepicker.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_color-picker/css/bootstrap-colorpicker.min.css">
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
                            <li><a href="${contentPath}/index.ftl"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>
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
                                    <li class="active-item"><a href="forms_advanced.ftl">Advanced</a></li>
                                    <li><a href="forms_validation.ftl">Validation</a></li>
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
                        <li><a>Advanced</a></li>
                    </ul>
                </div>
            </div>
            <div class="row animated fadeInUp">
                <div class="col-sm-6">
                    <h4 class="section-subtitle"><b>Max Length</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="">
                                        <div class="form-group">
                                            <label for="inputMaxLength" class="control-label">Input</label>
                                            <input type="text" class="form-control" id="inputMaxLength" placeholder="Username" maxlength="20">
                                            <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Max characters set to <span class="code">20</span></span>
                                        </div>
                                        <div class="form-group">
                                            <label for="textareaMaxLength" class="control-label">Textarea</label>
                                            <textarea class="form-control" rows="3" id="textareaMaxLength" placeholder="Write a comment" maxlength="100"></textarea>
                                            <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Max characters set to <span class="code">100</span></span>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h4 class="section-subtitle"><b>Input Mask</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form>
                                        <div class="form-group">
                                            <div class="input-group mt-sm mb-sm">
                                                <span class="input-group-addon"><i class="fa fa-calendar-o"></i></span>
                                                <input type="text" class="form-control" id="date-mask" placeholder="dd/mm/yyyy">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group mb-sm">
                                                <span class="input-group-addon"><i class="fa fa-credit-card"></i></span>
                                                <input type="text" class="form-control" id="currency-mask">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="input-group mb-sm">
                                                <span class="input-group-addon"><i class="fa fa-car"></i></span>
                                                <input type="text" class="form-control" id="license-mask" placeholder="[9]-AAA-999">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="phone-mask">Country: <span id="country-name">Germany</span></label>
                                            <div class="input-group mb-sm">
                                                <span class="input-group-addon"><i class="fa fa-phone"></i></span>
                                                <input type="text" class="form-control" id="phone-mask" value="49">
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Searching & Tags Selects</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="select2-example-basic" class="col-sm-2 control-label">Basic</label>
                                            <div class="col-sm-10">
                                                <select name="country" id="select2-example-basic" class="form-control" style="width: 100%">
                                                    <optgroup label="AMERICA">
                                                        <option value="AI" label="Anguilla">Anguilla</option>
                                                        <option value="AG" label="Antigua and Barbuda">Antigua and Barbuda</option>
                                                        <option value="AR" label="Argentina">Argentina</option>
                                                        <option value="AW" label="Aruba">Aruba</option>
                                                        <option value="BS" label="Bahamas">Bahamas</option>
                                                        <option value="BB" label="Barbados">Barbados</option>
                                                        <option value="BZ" label="Belize">Belize</option>
                                                        <option value="BM" label="Bermuda">Bermuda</option>
                                                        <option value="BO" label="Bolivia">Bolivia</option>
                                                        <option value="BR" label="Brazil">Brazil</option>
                                                        <option value="VG" label="British Virgin Islands">British Virgin Islands</option>
                                                        <option value="CA" label="Canada">Canada</option>
                                                        <option value="KY" label="Cayman Islands">Cayman Islands</option>
                                                        <option value="CL" label="Chile">Chile</option>
                                                        <option value="CO" label="Colombia">Colombia</option>
                                                        <option value="CR" label="Costa Rica">Costa Rica</option>
                                                        <option value="CU" label="Cuba">Cuba</option>
                                                        <option value="DM" label="Dominica">Dominica</option>
                                                        <option value="DO" label="Dominican Republic">Dominican Republic</option>
                                                        <option value="EC" label="Ecuador">Ecuador</option>
                                                        <option value="SV" label="El Salvador">El Salvador</option>
                                                        <option value="FK" label="Falkland Islands">Falkland Islands</option>
                                                        <option value="GF" label="French Guiana">French Guiana</option>
                                                        <option value="GL" label="Greenland">Greenland</option>
                                                        <option value="GD" label="Grenada">Grenada</option>
                                                        <option value="GP" label="Guadeloupe">Guadeloupe</option>
                                                        <option value="GT" label="Guatemala">Guatemala</option>
                                                        <option value="GY" label="Guyana">Guyana</option>
                                                        <option value="HT" label="Haiti">Haiti</option>
                                                        <option value="HN" label="Honduras">Honduras</option>
                                                        <option value="JM" label="Jamaica">Jamaica</option>
                                                        <option value="MQ" label="Martinique">Martinique</option>
                                                        <option value="MX" label="Mexico">Mexico</option>
                                                        <option value="MS" label="Montserrat">Montserrat</option>
                                                        <option value="AN" label="Netherlands Antilles">Netherlands Antilles</option>
                                                        <option value="NI" label="Nicaragua">Nicaragua</option>
                                                        <option value="PA" label="Panama">Panama</option>
                                                        <option value="PY" label="Paraguay">Paraguay</option>
                                                        <option value="PE" label="Peru">Peru</option>
                                                        <option value="PR" label="Puerto Rico">Puerto Rico</option>
                                                        <option value="BL" label="Saint Barthélemy">Saint Barthélemy</option>
                                                        <option value="KN" label="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                        <option value="LC" label="Saint Lucia">Saint Lucia</option>
                                                        <option value="MF" label="Saint Martin">Saint Martin</option>
                                                        <option value="PM" label="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                                        <option value="VC" label="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                                        <option value="SR" label="Suriname">Suriname</option>
                                                        <option value="TT" label="Trinidad and Tobago">Trinidad and Tobago</option>
                                                        <option value="TC" label="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                        <option value="VI" label="U.S. Virgin Islands">U.S. Virgin Islands</option>
                                                        <option value="US" label="United States">United States</option>
                                                        <option value="UY" label="Uruguay">Uruguay</option>
                                                        <option value="VE" label="Venezuela">Venezuela</option>
                                                    </optgroup>
                                                    <optgroup label="ASIA">
                                                        <option value="AF" label="Afghanistan">Afghanistan</option>
                                                        <option value="AM" label="Armenia">Armenia</option>
                                                        <option value="AZ" label="Azerbaijan">Azerbaijan</option>
                                                        <option value="BH" label="Bahrain">Bahrain</option>
                                                        <option value="BD" label="Bangladesh">Bangladesh</option>
                                                        <option value="BT" label="Bhutan">Bhutan</option>
                                                        <option value="BN" label="Brunei">Brunei</option>
                                                        <option value="KH" label="Cambodia">Cambodia</option>
                                                        <option value="CN" label="China">China</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="GE" label="Georgia">Georgia</option>
                                                        <option value="HK" label="Hong Kong SAR China">Hong Kong SAR China</option>
                                                        <option value="IN" label="India">India</option>
                                                        <option value="ID" label="Indonesia">Indonesia</option>
                                                        <option value="IR" label="Iran">Iran</option>
                                                        <option value="IQ" label="Iraq">Iraq</option>
                                                        <option value="IL" label="Israel">Israel</option>
                                                        <option value="JP" label="Japan">Japan</option>
                                                        <option value="JO" label="Jordan">Jordan</option>
                                                        <option value="KZ" label="Kazakhstan">Kazakhstan</option>
                                                        <option value="KW" label="Kuwait">Kuwait</option>
                                                        <option value="KG" label="Kyrgyzstan">Kyrgyzstan</option>
                                                        <option value="LA" label="Laos">Laos</option>
                                                        <option value="LB" label="Lebanon">Lebanon</option>
                                                        <option value="MO" label="Macau SAR China">Macau SAR China</option>
                                                        <option value="MY" label="Malaysia">Malaysia</option>
                                                        <option value="MV" label="Maldives">Maldives</option>
                                                        <option value="MN" label="Mongolia">Mongolia</option>
                                                        <option value="MM" label="Myanmar [Burma]">Myanmar [Burma]</option>
                                                        <option value="NP" label="Nepal">Nepal</option>
                                                        <option value="NT" label="Neutral Zone">Neutral Zone</option>
                                                        <option value="KP" label="North Korea">North Korea</option>
                                                        <option value="OM" label="Oman">Oman</option>
                                                        <option value="PK" label="Pakistan">Pakistan</option>
                                                        <option value="PS" label="Palestinian Territories">Palestinian Territories</option>
                                                        <option value="YD" label="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option>
                                                        <option value="PH" label="Philippines">Philippines</option>
                                                        <option value="QA" label="Qatar">Qatar</option>
                                                        <option value="SA" label="Saudi Arabia">Saudi Arabia</option>
                                                        <option value="SG" label="Singapore">Singapore</option>
                                                        <option value="KR" label="South Korea">South Korea</option>
                                                        <option value="LK" label="Sri Lanka">Sri Lanka</option>
                                                        <option value="SY" label="Syria">Syria</option>
                                                        <option value="TW" label="Taiwan">Taiwan</option>
                                                        <option value="TJ" label="Tajikistan">Tajikistan</option>
                                                        <option value="TH" label="Thailand">Thailand</option>
                                                        <option value="TL" label="Timor-Leste">Timor-Leste</option>
                                                        <option value="TR" label="Turkey">Turkey</option>
                                                        <option value="™" label="Turkmenistan">Turkmenistan</option>
                                                        <option value="AE" label="United Arab Emirates">United Arab Emirates</option>
                                                        <option value="UZ" label="Uzbekistan">Uzbekistan</option>
                                                        <option value="VN" label="Vietnam">Vietnam</option>
                                                        <option value="YE" label="Yemen">Yemen</option>
                                                    </optgroup>
                                                    <optgroup label="EUROPE">
                                                        <option value="AL" label="Albania">Albania</option>
                                                        <option value="AD" label="Andorra">Andorra</option>
                                                        <option value="AT" label="Austria">Austria</option>
                                                        <option value="BY" label="Belarus">Belarus</option>
                                                        <option value="BE" label="Belgium">Belgium</option>
                                                        <option value="BA" label="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                        <option value="BG" label="Bulgaria">Bulgaria</option>
                                                        <option value="HR" label="Croatia">Croatia</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="CZ" label="Czech Republic">Czech Republic</option>
                                                        <option value="DK" label="Denmark">Denmark</option>
                                                        <option value="DD" label="East Germany">East Germany</option>
                                                        <option value="EE" label="Estonia">Estonia</option>
                                                        <option value="FO" label="Faroe Islands">Faroe Islands</option>
                                                        <option value="FI" label="Finland">Finland</option>
                                                        <option value="FR" label="France">France</option>
                                                        <option value="DE" label="Germany">Germany</option>
                                                        <option value="GI" label="Gibraltar">Gibraltar</option>
                                                        <option value="GR" label="Greece">Greece</option>
                                                        <option value="GG" label="Guernsey">Guernsey</option>
                                                        <option value="HU" label="Hungary">Hungary</option>
                                                        <option value="IS" label="Iceland">Iceland</option>
                                                        <option value="IE" label="Ireland">Ireland</option>
                                                        <option value="IM" label="Isle of Man">Isle of Man</option>
                                                        <option value="IT" label="Italy">Italy</option>
                                                        <option value="JE" label="Jersey">Jersey</option>
                                                        <option value="LV" label="Latvia">Latvia</option>
                                                        <option value="LI" label="Liechtenstein">Liechtenstein</option>
                                                        <option value="LT" label="Lithuania">Lithuania</option>
                                                        <option value="LU" label="Luxembourg">Luxembourg</option>
                                                        <option value="MK" label="Macedonia">Macedonia</option>
                                                        <option value="MT" label="Malta">Malta</option>
                                                        <option value="FX" label="Metropolitan France">Metropolitan France</option>
                                                        <option value="MD" label="Moldova">Moldova</option>
                                                        <option value="MC" label="Monaco">Monaco</option>
                                                        <option value="ME" label="Montenegro">Montenegro</option>
                                                        <option value="NL" label="Netherlands">Netherlands</option>
                                                        <option value="NO" label="Norway">Norway</option>
                                                        <option value="PL" label="Poland">Poland</option>
                                                        <option value="PT" label="Portugal">Portugal</option>
                                                        <option value="RO" label="Romania">Romania</option>
                                                        <option value="RU" label="Russia">Russia</option>
                                                        <option value="SM" label="San Marino">San Marino</option>
                                                        <option value="RS" label="Serbia">Serbia</option>
                                                        <option value="CS" label="Serbia and Montenegro">Serbia and Montenegro</option>
                                                        <option value="SK" label="Slovakia">Slovakia</option>
                                                        <option value="SI" label="Slovenia">Slovenia</option>
                                                        <option value="ES" label="Spain">Spain</option>
                                                        <option value="SJ" label="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                                        <option value="SE" label="Sweden">Sweden</option>
                                                        <option value="CH" label="Switzerland">Switzerland</option>
                                                        <option value="UA" label="Ukraine">Ukraine</option>
                                                        <option value="SU" label="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option>
                                                        <option value="GB" label="United Kingdom">United Kingdom</option>
                                                        <option value="VA" label="Vatican City">Vatican City</option>
                                                        <option value="AX" label="Åland Islands">Åland Islands</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="select2-example-multiple" class="col-sm-2 control-label">Multiple</label>
                                            <div class="col-sm-10">
                                                <select name="country" id="select2-example-multiple" class="form-control" multiple="multiple" style="width: 100%">
                                                    <optgroup label="AMERICA">
                                                        <option value="AI" label="Anguilla">Anguilla</option>
                                                        <option value="AG" label="Antigua and Barbuda">Antigua and Barbuda</option>
                                                        <option value="AR" label="Argentina">Argentina</option>
                                                        <option value="AW" label="Aruba">Aruba</option>
                                                        <option value="BS" label="Bahamas" selected="selected">Bahamas</option>
                                                        <option value="BB" label="Barbados">Barbados</option>
                                                        <option value="BZ" label="Belize">Belize</option>
                                                        <option value="BM" label="Bermuda">Bermuda</option>
                                                        <option value="BO" label="Bolivia">Bolivia</option>
                                                        <option value="BR" label="Brazil">Brazil</option>
                                                        <option value="VG" label="British Virgin Islands">British Virgin Islands</option>
                                                        <option value="CA" label="Canada" selected="selected">Canada</option>
                                                        <option value="KY" label="Cayman Islands">Cayman Islands</option>
                                                        <option value="CL" label="Chile">Chile</option>
                                                        <option value="CO" label="Colombia">Colombia</option>
                                                        <option value="CR" label="Costa Rica">Costa Rica</option>
                                                        <option value="CU" label="Cuba">Cuba</option>
                                                        <option value="DM" label="Dominica">Dominica</option>
                                                        <option value="DO" label="Dominican Republic">Dominican Republic</option>
                                                        <option value="EC" label="Ecuador">Ecuador</option>
                                                        <option value="SV" label="El Salvador">El Salvador</option>
                                                        <option value="FK" label="Falkland Islands">Falkland Islands</option>
                                                        <option value="GF" label="French Guiana">French Guiana</option>
                                                        <option value="GL" label="Greenland">Greenland</option>
                                                        <option value="GD" label="Grenada">Grenada</option>
                                                        <option value="GP" label="Guadeloupe">Guadeloupe</option>
                                                        <option value="GT" label="Guatemala">Guatemala</option>
                                                        <option value="GY" label="Guyana">Guyana</option>
                                                        <option value="HT" label="Haiti">Haiti</option>
                                                        <option value="HN" label="Honduras">Honduras</option>
                                                        <option value="JM" label="Jamaica">Jamaica</option>
                                                        <option value="MQ" label="Martinique">Martinique</option>
                                                        <option value="MX" label="Mexico">Mexico</option>
                                                        <option value="MS" label="Montserrat">Montserrat</option>
                                                        <option value="AN" label="Netherlands Antilles">Netherlands Antilles</option>
                                                        <option value="NI" label="Nicaragua">Nicaragua</option>
                                                        <option value="PA" label="Panama">Panama</option>
                                                        <option value="PY" label="Paraguay">Paraguay</option>
                                                        <option value="PE" label="Peru">Peru</option>
                                                        <option value="PR" label="Puerto Rico">Puerto Rico</option>
                                                        <option value="BL" label="Saint Barthélemy">Saint Barthélemy</option>
                                                        <option value="KN" label="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                        <option value="LC" label="Saint Lucia">Saint Lucia</option>
                                                        <option value="MF" label="Saint Martin">Saint Martin</option>
                                                        <option value="PM" label="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                                        <option value="VC" label="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                                        <option value="SR" label="Suriname">Suriname</option>
                                                        <option value="TT" label="Trinidad and Tobago">Trinidad and Tobago</option>
                                                        <option value="TC" label="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                        <option value="VI" label="U.S. Virgin Islands">U.S. Virgin Islands</option>
                                                        <option value="US" label="United States">United States</option>
                                                        <option value="UY" label="Uruguay">Uruguay</option>
                                                        <option value="VE" label="Venezuela" selected="selected">Venezuela</option>
                                                    </optgroup>
                                                    <optgroup label="ASIA">
                                                        <option value="AF" label="Afghanistan">Afghanistan</option>
                                                        <option value="AM" label="Armenia">Armenia</option>
                                                        <option value="AZ" label="Azerbaijan">Azerbaijan</option>
                                                        <option value="BH" label="Bahrain">Bahrain</option>
                                                        <option value="BD" label="Bangladesh">Bangladesh</option>
                                                        <option value="BT" label="Bhutan">Bhutan</option>
                                                        <option value="BN" label="Brunei">Brunei</option>
                                                        <option value="KH" label="Cambodia">Cambodia</option>
                                                        <option value="CN" label="China">China</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="GE" label="Georgia">Georgia</option>
                                                        <option value="HK" label="Hong Kong SAR China">Hong Kong SAR China</option>
                                                        <option value="IN" label="India">India</option>
                                                        <option value="ID" label="Indonesia">Indonesia</option>
                                                        <option value="IR" label="Iran">Iran</option>
                                                        <option value="IQ" label="Iraq">Iraq</option>
                                                        <option value="IL" label="Israel">Israel</option>
                                                        <option value="JP" label="Japan">Japan</option>
                                                        <option value="JO" label="Jordan">Jordan</option>
                                                        <option value="KZ" label="Kazakhstan">Kazakhstan</option>
                                                        <option value="KW" label="Kuwait">Kuwait</option>
                                                        <option value="KG" label="Kyrgyzstan">Kyrgyzstan</option>
                                                        <option value="LA" label="Laos">Laos</option>
                                                        <option value="LB" label="Lebanon">Lebanon</option>
                                                        <option value="MO" label="Macau SAR China">Macau SAR China</option>
                                                        <option value="MY" label="Malaysia">Malaysia</option>
                                                        <option value="MV" label="Maldives">Maldives</option>
                                                        <option value="MN" label="Mongolia">Mongolia</option>
                                                        <option value="MM" label="Myanmar [Burma]">Myanmar [Burma]</option>
                                                        <option value="NP" label="Nepal">Nepal</option>
                                                        <option value="NT" label="Neutral Zone">Neutral Zone</option>
                                                        <option value="KP" label="North Korea">North Korea</option>
                                                        <option value="OM" label="Oman">Oman</option>
                                                        <option value="PK" label="Pakistan">Pakistan</option>
                                                        <option value="PS" label="Palestinian Territories">Palestinian Territories</option>
                                                        <option value="YD" label="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option>
                                                        <option value="PH" label="Philippines">Philippines</option>
                                                        <option value="QA" label="Qatar">Qatar</option>
                                                        <option value="SA" label="Saudi Arabia">Saudi Arabia</option>
                                                        <option value="SG" label="Singapore" selected="selected">Singapore</option>
                                                        <option value="KR" label="South Korea">South Korea</option>
                                                        <option value="LK" label="Sri Lanka">Sri Lanka</option>
                                                        <option value="SY" label="Syria">Syria</option>
                                                        <option value="TW" label="Taiwan">Taiwan</option>
                                                        <option value="TJ" label="Tajikistan">Tajikistan</option>
                                                        <option value="TH" label="Thailand">Thailand</option>
                                                        <option value="TL" label="Timor-Leste">Timor-Leste</option>
                                                        <option value="TR" label="Turkey">Turkey</option>
                                                        <option value="™" label="Turkmenistan">Turkmenistan</option>
                                                        <option value="AE" label="United Arab Emirates">United Arab Emirates</option>
                                                        <option value="UZ" label="Uzbekistan">Uzbekistan</option>
                                                        <option value="VN" label="Vietnam">Vietnam</option>
                                                        <option value="YE" label="Yemen">Yemen</option>
                                                    </optgroup>
                                                    <optgroup label="EUROPE">
                                                        <option value="AL" label="Albania">Albania</option>
                                                        <option value="AD" label="Andorra">Andorra</option>
                                                        <option value="AT" label="Austria">Austria</option>
                                                        <option value="BY" label="Belarus">Belarus</option>
                                                        <option value="BE" label="Belgium">Belgium</option>
                                                        <option value="BA" label="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                        <option value="BG" label="Bulgaria">Bulgaria</option>
                                                        <option value="HR" label="Croatia">Croatia</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="CZ" label="Czech Republic">Czech Republic</option>
                                                        <option value="DK" label="Denmark">Denmark</option>
                                                        <option value="DD" label="East Germany">East Germany</option>
                                                        <option value="EE" label="Estonia">Estonia</option>
                                                        <option value="FO" label="Faroe Islands">Faroe Islands</option>
                                                        <option value="FI" label="Finland" selected="selected">Finland</option>
                                                        <option value="FR" label="France">France</option>
                                                        <option value="DE" label="Germany">Germany</option>
                                                        <option value="GI" label="Gibraltar">Gibraltar</option>
                                                        <option value="GR" label="Greece">Greece</option>
                                                        <option value="GG" label="Guernsey">Guernsey</option>
                                                        <option value="HU" label="Hungary">Hungary</option>
                                                        <option value="IS" label="Iceland">Iceland</option>
                                                        <option value="IE" label="Ireland">Ireland</option>
                                                        <option value="IM" label="Isle of Man">Isle of Man</option>
                                                        <option value="IT" label="Italy">Italy</option>
                                                        <option value="JE" label="Jersey">Jersey</option>
                                                        <option value="LV" label="Latvia">Latvia</option>
                                                        <option value="LI" label="Liechtenstein">Liechtenstein</option>
                                                        <option value="LT" label="Lithuania">Lithuania</option>
                                                        <option value="LU" label="Luxembourg">Luxembourg</option>
                                                        <option value="MK" label="Macedonia">Macedonia</option>
                                                        <option value="MT" label="Malta">Malta</option>
                                                        <option value="FX" label="Metropolitan France">Metropolitan France</option>
                                                        <option value="MD" label="Moldova">Moldova</option>
                                                        <option value="MC" label="Monaco">Monaco</option>
                                                        <option value="ME" label="Montenegro">Montenegro</option>
                                                        <option value="NL" label="Netherlands">Netherlands</option>
                                                        <option value="NO" label="Norway">Norway</option>
                                                        <option value="PL" label="Poland">Poland</option>
                                                        <option value="PT" label="Portugal">Portugal</option>
                                                        <option value="RO" label="Romania">Romania</option>
                                                        <option value="RU" label="Russia">Russia</option>
                                                        <option value="SM" label="San Marino">San Marino</option>
                                                        <option value="RS" label="Serbia">Serbia</option>
                                                        <option value="CS" label="Serbia and Montenegro">Serbia and Montenegro</option>
                                                        <option value="SK" label="Slovakia">Slovakia</option>
                                                        <option value="SI" label="Slovenia">Slovenia</option>
                                                        <option value="ES" label="Spain">Spain</option>
                                                        <option value="SJ" label="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                                        <option value="SE" label="Sweden">Sweden</option>
                                                        <option value="CH" label="Switzerland">Switzerland</option>
                                                        <option value="UA" label="Ukraine">Ukraine</option>
                                                        <option value="SU" label="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option>
                                                        <option value="GB" label="United Kingdom">United Kingdom</option>
                                                        <option value="VA" label="Vatican City">Vatican City</option>
                                                        <option value="AX" label="Åland Islands">Åland Islands</option>
                                                    </optgroup>
                                                </select>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="select2-example-tags" class="col-sm-2 control-label">Tagging</label>
                                            <div class="col-sm-10">
                                                <select name="country" id="select2-example-tags" class="form-control select-tag-primary" multiple="multiple" style="width: 100%">
                                                    <optgroup label="AMERICA">
                                                        <option value="AI" label="Anguilla">Anguilla</option>
                                                        <option value="AG" label="Antigua and Barbuda">Antigua and Barbuda</option>
                                                        <option value="AR" label="Argentina">Argentina</option>
                                                        <option value="AW" label="Aruba">Aruba</option>
                                                        <option value="BS" label="Bahamas">Bahamas</option>
                                                        <option value="BB" label="Barbados">Barbados</option>
                                                        <option value="BZ" label="Belize">Belize</option>
                                                        <option value="BM" label="Bermuda">Bermuda</option>
                                                        <option value="BO" label="Bolivia">Bolivia</option>
                                                        <option value="BR" label="Brazil">Brazil</option>
                                                        <option value="VG" label="British Virgin Islands">British Virgin Islands</option>
                                                        <option value="CA" label="Canada">Canada</option>
                                                        <option value="KY" label="Cayman Islands">Cayman Islands</option>
                                                        <option value="CL" label="Chile">Chile</option>
                                                        <option value="CO" label="Colombia">Colombia</option>
                                                        <option value="CR" label="Costa Rica">Costa Rica</option>
                                                        <option value="CU" label="Cuba">Cuba</option>
                                                        <option value="DM" label="Dominica">Dominica</option>
                                                        <option value="DO" label="Dominican Republic">Dominican Republic</option>
                                                        <option value="EC" label="Ecuador">Ecuador</option>
                                                        <option value="SV" label="El Salvador">El Salvador</option>
                                                        <option value="FK" label="Falkland Islands">Falkland Islands</option>
                                                        <option value="GF" label="French Guiana">French Guiana</option>
                                                        <option value="GL" label="Greenland">Greenland</option>
                                                        <option value="GD" label="Grenada">Grenada</option>
                                                        <option value="GP" label="Guadeloupe">Guadeloupe</option>
                                                        <option value="GT" label="Guatemala">Guatemala</option>
                                                        <option value="GY" label="Guyana">Guyana</option>
                                                        <option value="HT" label="Haiti">Haiti</option>
                                                        <option value="HN" label="Honduras">Honduras</option>
                                                        <option value="JM" label="Jamaica">Jamaica</option>
                                                        <option value="MQ" label="Martinique">Martinique</option>
                                                        <option value="MX" label="Mexico">Mexico</option>
                                                        <option value="MS" label="Montserrat">Montserrat</option>
                                                        <option value="AN" label="Netherlands Antilles">Netherlands Antilles</option>
                                                        <option value="NI" label="Nicaragua">Nicaragua</option>
                                                        <option value="PA" label="Panama">Panama</option>
                                                        <option value="PY" label="Paraguay">Paraguay</option>
                                                        <option value="PE" label="Peru">Peru</option>
                                                        <option value="PR" label="Puerto Rico">Puerto Rico</option>
                                                        <option value="BL" label="Saint Barthélemy">Saint Barthélemy</option>
                                                        <option value="KN" label="Saint Kitts and Nevis">Saint Kitts and Nevis</option>
                                                        <option value="LC" label="Saint Lucia">Saint Lucia</option>
                                                        <option value="MF" label="Saint Martin">Saint Martin</option>
                                                        <option value="PM" label="Saint Pierre and Miquelon">Saint Pierre and Miquelon</option>
                                                        <option value="VC" label="Saint Vincent and the Grenadines">Saint Vincent and the Grenadines</option>
                                                        <option value="SR" label="Suriname">Suriname</option>
                                                        <option value="TT" label="Trinidad and Tobago">Trinidad and Tobago</option>
                                                        <option value="TC" label="Turks and Caicos Islands">Turks and Caicos Islands</option>
                                                        <option value="VI" label="U.S. Virgin Islands">U.S. Virgin Islands</option>
                                                        <option value="US" label="United States">United States</option>
                                                        <option value="UY" label="Uruguay">Uruguay</option>
                                                        <option value="VE" label="Venezuela">Venezuela</option>
                                                    </optgroup>
                                                    <optgroup label="ASIA">
                                                        <option value="AF" label="Afghanistan">Afghanistan</option>
                                                        <option value="AM" label="Armenia">Armenia</option>
                                                        <option value="AZ" label="Azerbaijan">Azerbaijan</option>
                                                        <option value="BH" label="Bahrain">Bahrain</option>
                                                        <option value="BD" label="Bangladesh">Bangladesh</option>
                                                        <option value="BT" label="Bhutan">Bhutan</option>
                                                        <option value="BN" label="Brunei">Brunei</option>
                                                        <option value="KH" label="Cambodia">Cambodia</option>
                                                        <option value="CN" label="China">China</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="GE" label="Georgia">Georgia</option>
                                                        <option value="HK" label="Hong Kong SAR China">Hong Kong SAR China</option>
                                                        <option value="IN" label="India">India</option>
                                                        <option value="ID" label="Indonesia">Indonesia</option>
                                                        <option value="IR" label="Iran">Iran</option>
                                                        <option value="IQ" label="Iraq">Iraq</option>
                                                        <option value="IL" label="Israel">Israel</option>
                                                        <option value="JP" label="Japan">Japan</option>
                                                        <option value="JO" label="Jordan">Jordan</option>
                                                        <option value="KZ" label="Kazakhstan">Kazakhstan</option>
                                                        <option value="KW" label="Kuwait">Kuwait</option>
                                                        <option value="KG" label="Kyrgyzstan">Kyrgyzstan</option>
                                                        <option value="LA" label="Laos">Laos</option>
                                                        <option value="LB" label="Lebanon">Lebanon</option>
                                                        <option value="MO" label="Macau SAR China">Macau SAR China</option>
                                                        <option value="MY" label="Malaysia">Malaysia</option>
                                                        <option value="MV" label="Maldives">Maldives</option>
                                                        <option value="MN" label="Mongolia">Mongolia</option>
                                                        <option value="MM" label="Myanmar [Burma]">Myanmar [Burma]</option>
                                                        <option value="NP" label="Nepal">Nepal</option>
                                                        <option value="NT" label="Neutral Zone">Neutral Zone</option>
                                                        <option value="KP" label="North Korea">North Korea</option>
                                                        <option value="OM" label="Oman">Oman</option>
                                                        <option value="PK" label="Pakistan">Pakistan</option>
                                                        <option value="PS" label="Palestinian Territories">Palestinian Territories</option>
                                                        <option value="YD" label="People's Democratic Republic of Yemen">People's Democratic Republic of Yemen</option>
                                                        <option value="PH" label="Philippines">Philippines</option>
                                                        <option value="QA" label="Qatar">Qatar</option>
                                                        <option value="SA" label="Saudi Arabia">Saudi Arabia</option>
                                                        <option value="SG" label="Singapore" selected="selected">Singapore</option>
                                                        <option value="KR" label="South Korea">South Korea</option>
                                                        <option value="LK" label="Sri Lanka">Sri Lanka</option>
                                                        <option value="SY" label="Syria">Syria</option>
                                                        <option value="TW" label="Taiwan">Taiwan</option>
                                                        <option value="TJ" label="Tajikistan">Tajikistan</option>
                                                        <option value="TH" label="Thailand">Thailand</option>
                                                        <option value="TL" label="Timor-Leste">Timor-Leste</option>
                                                        <option value="TR" label="Turkey">Turkey</option>
                                                        <option value="™" label="Turkmenistan">Turkmenistan</option>
                                                        <option value="AE" label="United Arab Emirates">United Arab Emirates</option>
                                                        <option value="UZ" label="Uzbekistan">Uzbekistan</option>
                                                        <option value="VN" label="Vietnam">Vietnam</option>
                                                        <option value="YE" label="Yemen">Yemen</option>
                                                    </optgroup>
                                                    <optgroup label="EUROPE">
                                                        <option value="AL" label="Albania">Albania</option>
                                                        <option value="AD" label="Andorra">Andorra</option>
                                                        <option value="AT" label="Austria">Austria</option>
                                                        <option value="BY" label="Belarus">Belarus</option>
                                                        <option value="BE" label="Belgium">Belgium</option>
                                                        <option value="BA" label="Bosnia and Herzegovina">Bosnia and Herzegovina</option>
                                                        <option value="BG" label="Bulgaria">Bulgaria</option>
                                                        <option value="HR" label="Croatia">Croatia</option>
                                                        <option value="CY" label="Cyprus">Cyprus</option>
                                                        <option value="CZ" label="Czech Republic">Czech Republic</option>
                                                        <option value="DK" label="Denmark">Denmark</option>
                                                        <option value="DD" label="East Germany">East Germany</option>
                                                        <option value="EE" label="Estonia">Estonia</option>
                                                        <option value="FO" label="Faroe Islands">Faroe Islands</option>
                                                        <option value="FI" label="Finland" selected="selected">Finland</option>
                                                        <option value="FR" label="France">France</option>
                                                        <option value="DE" label="Germany">Germany</option>
                                                        <option value="GI" label="Gibraltar">Gibraltar</option>
                                                        <option value="GR" label="Greece">Greece</option>
                                                        <option value="GG" label="Guernsey">Guernsey</option>
                                                        <option value="HU" label="Hungary">Hungary</option>
                                                        <option value="IS" label="Iceland">Iceland</option>
                                                        <option value="IE" label="Ireland">Ireland</option>
                                                        <option value="IM" label="Isle of Man">Isle of Man</option>
                                                        <option value="IT" label="Italy">Italy</option>
                                                        <option value="JE" label="Jersey">Jersey</option>
                                                        <option value="LV" label="Latvia">Latvia</option>
                                                        <option value="LI" label="Liechtenstein">Liechtenstein</option>
                                                        <option value="LT" label="Lithuania">Lithuania</option>
                                                        <option value="LU" label="Luxembourg">Luxembourg</option>
                                                        <option value="MK" label="Macedonia">Macedonia</option>
                                                        <option value="MT" label="Malta">Malta</option>
                                                        <option value="FX" label="Metropolitan France">Metropolitan France</option>
                                                        <option value="MD" label="Moldova">Moldova</option>
                                                        <option value="MC" label="Monaco">Monaco</option>
                                                        <option value="ME" label="Montenegro">Montenegro</option>
                                                        <option value="NL" label="Netherlands">Netherlands</option>
                                                        <option value="NO" label="Norway">Norway</option>
                                                        <option value="PL" label="Poland">Poland</option>
                                                        <option value="PT" label="Portugal">Portugal</option>
                                                        <option value="RO" label="Romania">Romania</option>
                                                        <option value="RU" label="Russia">Russia</option>
                                                        <option value="SM" label="San Marino">San Marino</option>
                                                        <option value="RS" label="Serbia">Serbia</option>
                                                        <option value="CS" label="Serbia and Montenegro">Serbia and Montenegro</option>
                                                        <option value="SK" label="Slovakia">Slovakia</option>
                                                        <option value="SI" label="Slovenia">Slovenia</option>
                                                        <option value="ES" label="Spain">Spain</option>
                                                        <option value="SJ" label="Svalbard and Jan Mayen">Svalbard and Jan Mayen</option>
                                                        <option value="SE" label="Sweden">Sweden</option>
                                                        <option value="CH" label="Switzerland">Switzerland</option>
                                                        <option value="UA" label="Ukraine">Ukraine</option>
                                                        <option value="SU" label="Union of Soviet Socialist Republics">Union of Soviet Socialist Republics</option>
                                                        <option value="GB" label="United Kingdom">United Kingdom</option>
                                                        <option value="VA" label="Vatican City">Vatican City</option>
                                                        <option value="AX" label="Åland Islands">Åland Islands</option>
                                                    </optgroup>
                                                    <optgroup label="other">
                                                        <option value="1" label="write" selected="selected">write</option>
                                                        <option value="2" label="your" selected="selected">your</option>
                                                        <option value="3" label="tag" selected="selected">tag</option>
                                                    </optgroup>
                                                </select>
                                                <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Select from pre-existing options or create a new tag, use ',' to separate them.</span>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h4 class="section-subtitle"><b>Date picker</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="default-datepicker" class="col-sm-2 control-label ">Default</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon x-primary"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" id="default-datepicker">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Range</label>
                                            <div class="col-sm-10">
                                                <div class="input-daterange input-group" id="range-datepicker">
                                                    <input type="text" class="input-sm form-control" name="start" />
                                                    <span class="input-group-addon x-primary">to</span>
                                                    <input type="text" class="input-sm form-control" name="end" />
                                                </div>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-6">
                    <h4 class="section-subtitle"><b>Time picker</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="default-timepicker" class="col-sm-2 control-label ">Default</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon x-primary"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" id="default-timepicker">
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="24-timepicker" class="col-sm-2 control-label ">24 Hours</label>
                                            <div class="col-sm-10">
                                                <div class="input-group">
                                                    <span class="input-group-addon x-primary"><i class="fa fa-calendar"></i></span>
                                                    <input type="text" class="form-control" id="24-timepicker">
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
                    <h4 class="section-subtitle"><b>Color picker</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <form class="form-horizontal form-stripe">
                                        <div class="form-group">
                                            <label for="hex-colorpicker" class="col-sm-2 control-label">HEX</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="hex-colorpicker" value="0066BA">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="rgba-colorpicker" class="col-sm-2 control-label">RGBA</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="rgba-colorpicker" value="rgba(0, 102, 186,1)">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="all-formats-colorpicker" class="col-sm-2 control-label">All formats</label>
                                            <div class="col-sm-10">
                                                <input type="text" class="form-control" id="all-formats-colorpicker" value="rgb(0, 102, 186)">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label class="col-sm-2 control-label">Component</label>
                                            <div class="col-sm-10">
                                                <div id="component-colorpicker" class="input-group colorpicker-component">
                                                    <input type="text" class="form-control" value="0066BA">
                                                    <span class="input-group-addon"><i></i></span>
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
                                <a href="http://view.jqueryfuns.com/%E9%A2%84%E8%A7%88-/2016/11/24/7525f5fbb621750ede6d28d56c9cff70/任务分派-light/index.html" class="on-click"> <img alt="任务分派-light" src="images/任务分派-light.png" /></a>
                            </li>
                            <li>
                                <a href="http://view.jqueryfuns.com/%E9%A2%84%E8%A7%88-/2016/11/24/7525f5fbb621750ede6d28d56c9cff70/任务分派-blue/index.html" class="on-click"> <img alt="任务分派-blue" src="images/任务分派-blue.png" /></a>
                            </li>
                            <li>
                                <a href="http://view.jqueryfuns.com/%E9%A2%84%E8%A7%88-/2016/11/24/7525f5fbb621750ede6d28d56c9cff70/任务分派-red/index.html" class="on-click"> <img alt="任务分派-red" src="images/任务分派-red.png" /></a>
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
<script src="vendor/bootstrap_max-lenght/bootstrap-maxlength.js"></script>
<script src="vendor/select2/js/select2.min.js"></script>
<script src="vendor/input-masked/inputmask.bundle.min.js"></script>
<script src="vendor/input-masked/phone-codes/phone.js"></script>
<script src="vendor/bootstrap_date-picker/js/bootstrap-datepicker.min.js"></script>
<script src="vendor/bootstrap_time-picker/js/bootstrap-timepicker.js"></script>
<script src="vendor/bootstrap_color-picker/js/bootstrap-colorpicker.min.js"></script>
<script src="javascripts/examples/任务单/advanced.js"></script>
</body>
</html>

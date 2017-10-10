
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
                            <li><a href="index.ftl"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>
                            <li class="has-child-item open-item active-item">
                                <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/analyst/list">人员列表</a></li>
                                    <li><a href="${contextPath}/analyst/add">添加</a></li>
                                    <li><a href="ui-elements_tabs.ftl">Tabs</a></li>
                                    <li><a href="ui-elements_buttons.ftl">Buttons</a></li>
                                    <li class="active-item"><a href="ui-elements_typography.ftl">Typography</a></li>
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
                            <li class="has-child-item close-item">
                                <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                                <ul class="nav child-nav level-1">
                                    <li><a href="${contextPath}/assignment/list">任务列表</a></li>
                                    <li><a href="forms_advanced.ftl">Advanced</a></li>
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
                        <li><i class="fa fa-home" aria-hidden="true"></i><a href="#">人员管理</a></li>
                        <li><a>Typography</a></li>
                    </ul>
                </div>
            </div>

            <div class="row animated fadeInUp">
                <div class="col-sm-12">
                    <h4 class="section-subtitle">Typography <b>Sizes</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="mb-lg"><b>Default</b> sizes</h5>
                                    <p>p paragraph size</p>
                                    <h6>h6 heading size</h6>
                                    <h5>h5 heading size</h5>
                                    <h4>h4 heading size</h4>
                                    <h3>h3 heading size</h3>
                                    <h2>h2 heading size</h2>
                                    <h1>h1 heading size</h1>
                                </div>
                                <div class="col-md-6">
                                    <h5><b>Class</b> sizes</h5>
                                    <p class="mb-lg">To change the default size you can use the class <span class="code">.text-[size]</span></p>
                                    <p class="text-xs">p paragraph with the class <span class="code">.text-xs</span></p>
                                    <p class="text-sm">p paragraph with the class <span class="code">.text-sm</span></p>
                                    <p class="text-md">p paragraph with the class <span class="code">.text-md</span></p>
                                    <p class="text-lg">p paragraph with the class <span class="code">.text-lg</span></p>
                                    <p class="text-xl">p paragraph with the class <span class="code">.text-xl</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle">Typography <b>Colors</b></h4>
                    <p class="section-text">Add the class <span class="code">.color-[name]</span></p>

                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-4">
                                    <h5 class="mb-lg"><b>Basic</b> colors</h5>
                                    <h4 class="color-success">Heading with color Success</h4>
                                    <p class="color-success">paragraph with color Success</p>
                                    <h4 class="color-warning">Heading with color Warning</h4>
                                    <p class="color-warning">paragraph with color Warning</p>
                                    <h4 class="color-danger">Heading with color Danger</h4>
                                    <p class="color-danger">paragraph with color Danger</p>
                                    <h4 class="color-info">Heading with color Info</h4>
                                    <p class="color-info">paragraph with color Info</p>
                                </div>
                                <div class="col-md-4">
                                    <h5 class="mb-lg"><b>Primary</b> colors</h5>

                                    <h4 class="color-darker-1">Heading with color Darker-1</h4>
                                    <p class="color-darker-1">paragraph with color Darker-1</p>
                                    <h4 class="color-primary">Heading with color Primary</h4>
                                    <p class="color-primary">paragraph with color Primary</p>
                                    <h4 class="color-lighter-1">Heading with color Lighter-1</h4>
                                    <p class="color-lighter-1">paragraph with color Lighter-1</p>
                                </div>

                                <div class="col-md-4">
                                    <h5 class="mb-lg"><b>Ligth & Dark</b> colors</h5>

                                    <h4 class="color-dark">Heading with color Dark</h4>
                                    <p class="color-dark">paragraph with color Dark</p>
                                    <h4 class="color-muted">Heading with color Muted</h4>
                                    <p class="color-muted">paragraph with color Muted</p>
                                    <div class="bg-scale-3 p-xs" style="display: inline-block">
                                        <h4 class="color-light">Heading with color Light</h4>
                                        <p class="color-light">paragraph with color Light</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle">Typography <b>Feature</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-6">
                                    <h5 class="mb-lg"><b>Alignments</b> of the text</h5>
                                    <p class="text-left">Lorem ipsum dolor sit amet <span class="code">.text-left</span></p>
                                    <p class="text-center">Lorem ipsum dolor sit amet <span class="code">.text-center</span></p>
                                    <p class="text-right">Lorem ipsum dolor sit amet <span class="code">.text-right</span></p>
                                    <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad, asperiores delectus, earum eum explicabo facilis id incidunt iusto molestias nihil pariatur quis ratione vero! Assumenda expedita fugiat quaerat quos sunt. <span class="code">.text-justift</span></p>
                                </div>
                                <div class="col-md-6">
                                    <h5 class="mb-lg"><b>Styles</b> of the text</h5>
                                    <p class="text-bold">Lorem ipsum dolor sit amet <span class="code">.text-bold</span></p>
                                    <p class="text-italic">Lorem ipsum dolor sit amet <span class="code">.text-italic</span></p>
                                    <p class="text-capitalize">Lorem ipsum dolor sit amet <span class="code">.text-capitalize</span></p>
                                    <p class="text-uppercase">Lorem ipsum dolor sit amet <span class="code">.text-uppercase</span></p>
                                    <p class="text-lowercase">Lorem ipsum dolor sit amet <span class="code">.text-lowercase</span></p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Blockquotes</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <h5><b>Basic</b> blockquote</h5>
                                    <p> Wrap the quote with the tag <span class="code">&lt;blockquote></span> to use the basic structure</p>
                                    <blockquote>
                                        <p>"I learned life and death are always so mixed up together, in the same way some beginnings are endings, and some endings become beginnings."</p>
                                        <small>Capheus, Sense8</small>
                                    </blockquote>
                                    <h5 class="text-right"><b>Right side</b> blockquote</h5>
                                    <p class="text-right"> Add the class <span class="code">blockquote-reverse</span> </p>
                                    <blockquote class="blockquote-reverse">
                                        <p>"It��s not the drugs that make a drug addict, it��s the need to escape reality."</p>
                                        <small>Riley Blue, Sense8</small>
                                    </blockquote>
                                    <h5><b>Border Width</b> blockquote</h5>
                                    <p>Remove or change the width of the border with the class <span class="code">.b-[size]</span></p>
                                    <blockquote class="b-primary b-none">
                                        <p>"The past is done with us the moment we are done with it."</p>
                                        <small>Sun Bak, Sense8 <span class="code">.b-none</span></small>
                                    </blockquote>
                                    <blockquote class="b-primary bl-xs">
                                        <p>"He is my brother. Not by something as accidental as blood. By something much stronger. By choice."</p>
                                        <small>Wolfgang Bogdanow, Sense8 <span class="code">.bl-xs</span></small>
                                    </blockquote>
                                    <blockquote class="b-primary bl-sm">
                                        <p>"There��s a huge difference between what we work for and what we live for."</p>
                                        <small>Nomi Marks, Sense8 <span class="code">.bl-sm</span></small>
                                    </blockquote>
                                    <blockquote class="b-primary bl-md">
                                        <p>"It��s obedience, not resistance. That��s the glue of every country, every army, every religion in the world."</p>
                                        <small>Felix, Sense8 <span class="code">.bl-md</span></small>
                                    </blockquote>
                                    <blockquote class="b-primary bl-lg">
                                        <p>"All beauty is temporary. Decay and death haunt every breath we take."</p>
                                        <small>Lito Rodriguez, Sense8 <span class="code">.bl-lg</span></small>
                                    </blockquote>
                                    <blockquote class="b-primary bl-xl">
                                        <p>"Death doesn��t let you say goodbye. It just carves holes in your life, in your future, in your heart."</p>
                                        <small>Riley Blue, Sense8 <span class="code">.bl-xl</span></small>
                                    </blockquote>
                                    <h5 class="pt-lg"><b>Border style</b> blockquote</h5>
                                    <p>Set the border rounded width <span class="code">.b-rounded</span></p>
                                    <blockquote class=" b-primary bl-md b-rounded">
                                        <p>"This is what life is. Fear, rage, desire... love. To stop feeling emotions, to stop wanting to feel them, is to feel death."</p>
                                        <small>Sun Bak, Sense8</small>
                                    </blockquote>
                                    <h5 class="pt-lg"><b>Border colors</b> blockquote</h5>
                                    <p>Set the border color with the class <span class="code">.b-[color]</span></p>
                                    <div class="col-md-6">
                                        <blockquote>
                                            <p>"Blockquote default border color"</p>
                                        </blockquote>
                                        <blockquote class="b-success bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-success</span>"</p>
                                        </blockquote>
                                        <blockquote class="b-warning bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-warning</span>"</p>
                                        </blockquote>
                                        <blockquote class="b-danger bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-danger</span>"</p>
                                        </blockquote>
                                        <blockquote class="b-info bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-info</span>"</p>
                                        </blockquote>
                                    </div>
                                    <div class="col-md-6">
                                        <blockquote class="b-darker-1 bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-darker-1</span>"</p>
                                        </blockquote>
                                        <blockquote class="b-primary bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-primary</span>"</p>
                                        </blockquote>
                                        <blockquote class="b-lighter-1 bl-md">
                                            <p>"Blockquote with the class <span class="code">.b-lighter-1</span>"</p>
                                        </blockquote>
                                    </div>
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

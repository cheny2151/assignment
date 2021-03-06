
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
                    <li id="home" onclick="changeMenu(this)"><a href="${contextPath}/index"><i class="fa fa-home" aria-hidden="true"></i><span>Home</span></a></li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-cubes" aria-hidden="true"></i><span>人员管理</span></a>
                        <ul class="nav child-nav level-1">
                            <li id="analystList" onclick="changeMenu(this)"><a href="${contextPath}/analyst/list">人员列表</a></li>
                            <li id="analystAdd" onclick="changeMenu(this)" ><a href="${contextPath}/analyst/add" > [#if Session.menu = 'analystAdd']class="active-item" [/#if]添加</a></li>
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
                            <li id="projectList" onclick="changeMenu(this)"><a  href="${contextPath}/project/list">项目列表</a></li>
                            <li id="projectAdd" onclick="changeMenu(this)"><a href="${contextPath}/page/project_add">添加</a></li>
                        </ul>
                    </li>
                    <li class="has-child-item close-item">
                        <a><i class="fa fa-columns" aria-hidden="true"></i><span>任务单</span></a>
                        <ul class="nav child-nav level-1">
                            <li id="assignmentList" onclick="changeMenu(this)"><a href="${contextPath}/assignment/list">任务列表</a></li>
                            <li id="assignmentAdd" onclick="changeMenu(this)"><a href="${contextPath}/assignment/add">添加</a></li>
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
<script type="text/javascript">
    function changeMenu(target){
        sessionStorage.setItem("menu",$(target).attr("id"));
    }
</script>


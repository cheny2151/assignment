<!doctype html>
<html lang="zh" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
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

    [#include "menu.ftl"]

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
                                <a class="fa fa-times action deleteOne" href="/analyst/delete?ids=${analyst.id}"
                                   style="cursor: pointer;"></a>
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

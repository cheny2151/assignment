<!doctype html>
<html lang="en" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/data-table/media/css/dataTables.bootstrap.min.css">
    <link type="text/css" href="${contextPath}/resources/css/common.css">
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
                        <li><i class="fa fa-table" aria-hidden="true"></i><a href="#">Tables</a></li>
                        <li><a>Data-table</a></li>
                    </ul>
                </div>
            </div>
            <form action="${contextPath}/project/delete" method="get">
                <button class="btn btn-o btn-danger" id="deleteAll">delete</button>
                <div><br></div>
                <div class="row animated fadeInRight">
                    <div class="col-sm-12">
                        <div class="panel">
                            <div class="panel-content">
                                <div class="table-responsive">
                                    <table id="basic-table" class="data-table table table-striped nowrap table-hover"
                                           cellspacing="0" width="100%">
                                        <thead>
                                        <tr>
                                            <th><input id="all" type="checkbox"></th>
                                            <th>项目名</th>
                                            <th>价格</th>
                                            <th>标准</th>
                                            <th>负责人</th>
                                            <th>操作</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        [#list projects as project]
                                        <tr>
                                            <td><input type="checkbox" name="ids" value="${project.id}"></td>
                                            <td>${project.name}</td>
                                            <td>${project.price}</td>
                                            <td>${project.standard}</td>
                                            <td>
                                                [#list project.analysts as analyst]
                                                ${analyst.name}
                                                    [#if analyst_has_next],[/#if]
                                                [/#list]
                                            </td>
                                            <td style="width: 150px;">
                                                <a class="fa fa-cog" href="/project/edit?id=${project.id}"
                                                   style="cursor: pointer;"></a>
                                                &nbsp;
                                                &nbsp;
                                                <a class="fa fa-times action deleteOne" href="/project/delete?ids=${project.id}"
                                                   style="cursor: pointer;"></a>
                                            </td>
                                        </tr>
                                        [/#list]
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
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
<script src="${contextPath}/resources/vendor/data-table/media/js/jquery.dataTables.min.js"></script>
<script src="${contextPath}/resources/vendor/data-table/media/js/dataTables.bootstrap.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script type="text/javascript">
    $(function () {

        [@flush_message /]

//        $('.data-table').DataTable({})

    });
</script>
</body>

</html>

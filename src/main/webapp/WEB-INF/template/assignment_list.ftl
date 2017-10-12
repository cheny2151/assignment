<!doctype html>
<html lang="en" class="fixed">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <title>任务分派</title>
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/vendor/bootstrap/css/font-awesome.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/animate.css/animate.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/style.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/data-table/media/css/dataTables.bootstrap.min.css">
    <link type="text/css" href="${contextPath}/resources/css/common.css">
    <link rel="stylesheet" type="text/css" href="${contextPath}/resources/css/my-icon.css">
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
            <div class="row animated fadeInRight">
                <div class="col-sm-12">
                    <h4 class="section-subtitle"><b>Searching, ordering and paging</b></h4>
                    <div class="panel">
                        <div class="panel-content">
                            <div class="table-responsive">
                                <table id="basic-table" class="data-table table table-striped nowrap table-hover" cellspacing="0" width="100%">
                                    <thead>
                                    <tr>
                                        <th>编号</th>
                                        <th>项目</th>
                                        <th>接单日期</th>
                                        <th>截至日期</th>
                                        <th>流水个数</th>
                                        <th>操作</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    [#list assignments as assignment]
                                    <tr>
                                        <td>${assignment.name}</td>
                                        <td>
                                            [#list assignment.projects as project]
                                                ${project.name}
                                                [#if project_has_next],[/#if]
                                            [/#list]
                                        </td>
                                        <td>${assignment.startDate!"-"}</td>
                                        <td>${assignment.finalDate!"-"}</td>
                                        <td>${assignment.serialNumbers?size}</td>
                                        <td style="position: relative;">
                                            <a href="/assignment/view?id=${assignment.id}" style="cursor: pointer;position: absolute;left: 0;"><i class="view" ></i></a>
                                            &nbsp;
                                            &nbsp;
                                            <a class="fa fa-times action deleteOne" href="/assignment/delete?ids=${assignment.id}"
                                               style="cursor: pointer;position: absolute;left: 30px;"></a>
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
<script src="${contextPath}/resources/js/examples/tables/data-tables.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script type="text/javascript">
    [@flush_message /]
</script>

</body>

</html>

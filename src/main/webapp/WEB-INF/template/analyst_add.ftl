
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
    <link rel="stylesheet" href="${contextPath}/resources/css/common.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/select2/css/select2-bootstrap.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_date-picker/css/bootstrap-datepicker3.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_time-picker/css/timepicker.css">
    <link rel="stylesheet" href="${contextPath}/resources/vendor/bootstrap_color-picker/css/bootstrap-colorpicker.min.css">
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
                        <li><a>添加</a></li>
                    </ul>
                </div>
            </div>

            <div class="panel">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-md-12">
                            <form id="form" class="form-horizontal form-stripe" action="${contextPath}/analyst/save" method="post">
                                <div class="form-group">
                                    <label for="placeholder" class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                    <input type="text" class="form-control" id="placeholder" placeholder="name" name="name">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="disabled" class="col-sm-2 control-label">工号</label>
                                    <div class="col-sm-10">
                                        <input type="text" class="form-control" id="disabled" placeholder="Number" name="number" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="select2-example-multiple" class="col-sm-2 control-label">选择项目:</label>
                                    <div class="col-sm-10">
                                        <select name="projectIds" id="select2-example-multiple" class="form-control" multiple="multiple" style="width: 100%">
                                            <optgroup label="项目列表">
                                                [#list projects as project]
                                                    <option value="${project.id}" >${project.name}</option>
                                                [/#list]
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

        <a href="#" class="scroll-to-top"><i class="fa fa-angle-double-up"></i></a>
    </div>
</div>
<script src="${contextPath}/resources/js/jquery.min.js"></script>
<script src="${contextPath}/resources/vendor/jquery-validation/jquery.validate.min.js"></script>
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

        });

        $("#form").validate({
            rules:{
                name:"required"
            }
        });

    </script>
</body>

</html>

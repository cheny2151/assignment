
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
    <link rel="stylesheet" href="${contextPath}/resources/css/calendar/style.css">
</head>
    <style type="text/css">
        .form-inputs {
            margin-left:10px;
            margin-right: 20px;
            width: 20%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            white-space: nowrap;
        }
        .form-inputs-head {
            margin-right: 10px;
            width: 5%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .form-select{
            width: 35%;
            height: 34px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }
        .select2-container--bootstrap{
            display: "";
            margin-top: -5px;
        }
        .btn-my{
            margin-left:5%;
        }
        .ECalendarBox{
            z-index: 100;
        }
        .icon{
            display: none;
        }
        .currentdate>h2{
            margin-top: 5px;
        }
    </style>

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
                            <form id="aForm" class="form-horizontal form-stripe" action="${contextPath}/assignment/save" method="post">
                                <div class="form-group">
                                    <label for="placeholder" class="col-sm-2 control-label">任务编号</label>
                                    <div class="col-sm-10">
                                        <input type="text" name="name" class="form-inputs" placeholder="Code" >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="placeholder" class="col-sm-2 control-label">接单日期</label>
                                    <div class="col-sm-10" >
                                        <input type='text' name='startDate' id="start_date" class='form-inputs'  placeholder='Start Date' >
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="placeholder" class="col-sm-2 control-label">完成日期</label>
                                    <div class="col-sm-10" style="z-index: 50">
                                        <input type='text' name='finalDate' id="end_date" class='form-inputs'  placeholder='Final Date' >
                                    </div>
                                </div>
                                <div class="form-group" id="form-group">
                                    <a style="margin-left:8% " id="add" href="javascript:void(0)" class="btn btn-primary btn-sm">add</a>
                                   <label style="margin-left: 3%">流水号</label>
                                   <label style="margin-left: 14%">项目</label>
                                </div>
                                <div class="form-group" style="margin-left:12%;width: 80%;">
                                    <label for="textareaMaxLength" class="control-label">备注</label>
                                    <textarea class="form-control" name="memo" rows="5" id="textareaMaxLength" placeholder="Write a memo" maxlength="500"></textarea>
                                    <span class="help-block"><i class="fa fa-info-circle mr-xs"></i>Max characters set to <span class="code">500</span></span>
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
        </div>

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
<script src="${contextPath}/resources/js/calendar/Ecalendar.jquery.min.js"></script>
<script src="${contextPath}/resources/js/common.js"></script>
<script type="text/javascript">
    $(function () {

        alert("..");

    [@flush_message /]

        var $formGroup = $("#form-group");

        //下标
        var count = 0;
        //增加子流水号
        $("#add").click(function () {

            $formGroup.append($("<div class='col-sm-10' style='margin-left: 13%'>" +
                    "<input type='text' name='serialNumbers["+count+"].number' class='form-inputs-head' placeholder='Number' >" +
                    "<select name='serialNumbers["+count+"].projectIds' class='select-example-multiple form-select' multiple='multiple'>" +
                    "<optgroup label='项目列表'>"+
            [#list projects as project]
                    "<option value='${project.id}'>${project.name}</option></optgroup>"+
            [/#list]
                    "</select>" +
                    "<a href='javascript:void(0)' class='btn btn-danger btn-sm btn-my deleteOne'>delete</a>" +
                    "</div>"));

            $(".select-example-multiple").select2({
                placeholder: "Select a project",
                allowClear: true
            });

            count++;

        });

        //Delete
        $formGroup.on("click",".deleteOne",function () {
           var $this = $(this);
           $this.parent("div").remove();
        });

        //日历控件
        $("#start_date").ECalendar({
            type:"date",                   //模式，time: 带时间选择; date: 不带时间选择;
            stamp : false,                //是否转成时间戳，默认true;
            offset:[0,2],                  //弹框手动偏移量;
            format:"yyyy-mm-dd",       //时间格式 默认 yyyy-mm-dd hh:ii;
            skin:"#006AC3",               //皮肤颜色，默认随机，可选值：0-8,或者直接标注颜色值;
            step:10,                      //选择时间分钟的精确度;
            callback:function(v,e){}     //回调函数
        });

        $("#end_date").ECalendar({
            type:"date",
            stamp : false,
            offset:[0,2],
            format:"yyyy-mm-dd",
            skin:"#006AC3",
            step:10,
            callback:function(v,e){}
        });


    });

    $("#aForm").validate({
        rules:{
            name:"required"
        }
    });

</script>
</body>

</html>

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
</head>

<body>
<div>
    <div>
        <div class="content" style="margin: 0;">
            <div class="row animated bounce" style="margin:0;">
                <div style="margin:0;">
                    <div>
                        <div class="panel-content">
                            <h1 class="error-number">404</h1>
                            <h2 class="error-name"> Page not found</h2>
                            <p class="error-text">Sorry, the page you are looking for cannot be found.
                                <br/>Please check the url for errors or try one of the options below</p>
                            <div class="row mt-lg">
                                <div class="col-sm-6  col-sm-offset-3">
                                    <button class="btn btn-sm btn-darker-2 btn-block" onClick="history.back();">BACK</button>
                                </div>
                            </div>
                        </div>
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
<script src="${contextPath}/resources/js/common.js"></script>

<script type="text/javascript">
    $(function () {
        [@flush_message /]
    })
</script>
</body>

</html>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>tail log</title>
    <script src="resources/js/jquery.min.js"></script>
</head>
<body>
<div id="log-container" style="overflow-y: scroll; background: #333; color: #aaa; padding: 10px;">
    <div>
    </div>
</div>
</body>
<script>
    $(document).ready(function() {
        // 指定websocket路径
        var websocket = new WebSocket('ws://localhost:8080/log');
        websocket.onmessage = function(event) {
            // 接收服务端的实时日志并添加到HTML页面中
            $("#log-container div").append(event.data);
            // 滚动条滚动到最低部
            $("#log-container").scrollTop($("#log-container div").height() - $("#log-container").height());
        };
    });
</script>
</body>
</html>
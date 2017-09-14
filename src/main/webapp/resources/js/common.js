$().ready(function () {

    var $all = $("#all");
    var $deleteAll = $("#deleteAll");

    //checkbox全选
    $all.on("change",function () {
        var $this =$(this);
        if ($this.prop("checked")){
            $(":checkbox").prop("checked",true);
        }else {
            $(":checkbox").prop("checked",false);
        }
     });

    //确认删除对话框
    $deleteAll.click(function () {
        return !!confirm("确定删除？");
    });

});


//消息框
var $message;
var timeout;
$.message = function () {
    var message = {};
    if ($message == null) {
        var $message = $("<div class='message'></div>");
        var $messageTitle = $("<div class='message_title'></div>");
        var $messageContent = $("<div class='message_content'></div>")
        $messageTitle.appendTo($message);
        $messageContent.appendTo($message);
        $message.appendTo("body");
    }

    if (typeof arguments[0] === "string" && typeof arguments[1] === "string") {
        message.type = arguments[0];
        message.content = arguments[1];
    } else {
        return false
    }

    $message.children("div.message_title").html(message.type);
    $message.children("div.message_content").html(message.content);

    clearTimeout(timeout);
    var timeout = setTimeout(function () {
        $message.hide();
    },3000);

    return $message;
};


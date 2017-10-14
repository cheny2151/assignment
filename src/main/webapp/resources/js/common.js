$().ready(function () {

    //菜单栏切换
    var menu = sessionStorage.getItem("menu");
    $("#" + menu).addClass("active-item").closest(".has-child-item").removeClass("close-item").addClass("open-item active-item");

    //会话保存菜单栏缩放状态
    var item = sessionStorage.getItem("menuList");
    if (item == true) {
        $("html").addClass("left-sidebar-collapsed");
    } else {
        $("html").removeClass("left-sidebar-collapsed");
    }
    $(".left-sidebar-toggle").on("click", (function () {
        if (item == true) {
            sessionStorage.setItem("menuList", 0);
        } else {
            sessionStorage.setItem("menuList", 1);
        }
    }));

    //checkbox全选
    var $all = $("#all");

    $all.on("change", function () {
        var $this = $(this);
        if ($this.prop("checked")) {
            $(":checkbox").prop("checked", true);
        } else {
            $(":checkbox").prop("checked", false);
        }
    });

    //删除事件
    var $deleteAll = $("#deleteAll");
    var $deleteOne = $(".deleteOne");

    $deleteAll.click(function () {
        return confirm("确定删除？");
    });
    /* TODO：由于分页暂由前端框架，会出现bug
    $deleteOne.click(function () {
         return confirm("确定删除？");
     });*/


});


//消息框
var $message;
var timeout;
$.message = function () {
    var message = {};
    if ($message == null) {
        var $message = $("<div class='message'></div>");
        var $messageTitle = $("<div class='message_title'></div>");
        var $messageContent = $("<div class='message_content'></div>");
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
    }, 3000);

    return $message;

};


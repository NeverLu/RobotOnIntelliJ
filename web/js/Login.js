$(function() {
    $( "#login" ).dialog({
        width: 500,
        height: 300,
        modal: true,
        autoOpen: false,
        show: {
//            effect: "blind",
            duration: 1000
        },
        hide: {
//            effect: "blind",
            duration: 1000
        }
    });

    $( "#login_click" ).click(function() {
        $( "#login" ).dialog( "open" );
    });
});

$(function () {
    $("#user_out").click(function () {
        var ctx = $("#ctx").val();
        var tmp = document.createElement("form");
        var action = ctx + "/servlet/loginAct?act=quit";
        tmp.action = action;
        tmp.method = "post";
        document.body.appendChild(tmp);
        tmp.submit();
        return tmp;
    })
})
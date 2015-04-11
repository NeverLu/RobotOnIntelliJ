/**
 * Created by LU on 2015/4/6.
 */


jQuery(document).ready(function($){
    $("#search-add").click(function(){
        $('.search-group').last().after('' +
            '<div class="form-group search-group">' +
            '<div class="btn-group search-btn-group" onclick="searchSelect()" ><button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown"aria-expanded="false"> 并 <span class="caret "></span></button><ul class="dropdown-menu" role="menu"><li><a href="#">或</a></li><li><a href="#">非</a></li></ul></div>'+
            '<div class="search-input search-input-add"><input type="text" class="form-control input-lg " id="search_input2"placeholder="Search_Input"></div>' +
            '<div class="btn-group search-btn-group" onclick="searchSelect()" ><button type="button" class="btn btn-primary btn-lg dropdown-toggle" data-toggle="dropdown"aria-expanded="false"> 所有 <span class="caret "></span></button><ul class="dropdown-menu" role="menu"><li><a href="#">所有</a></li><li><a href="#">主题</a></li><li><a href="#">姓名</a></li><li><a href="#">行业</a></li></ul></div>' +
            '<div class="search-remove"><button type="submit" class="btn btn-lg btn-primary" onclick="searchRemove(this)"><i class="icon-minus icon-1x"></i> 删除</button></div>' +
            '</div>');
    })

    $("#search-add").hover(function(){
        $("#search-add").addClass("blod");
    }, function () {
        $("#search-add").removeClass("blod");
    })

})

function searchRemove(self) {
    $(self).parent().parent().remove();
}

function searchSelect() {
    $('.dropdown-menu > li > a').click(function () {
        var content = $(this).text() + '  <span class="caret"></span>';
//        alert(content);
        $(this).closest('.search-btn-group').find('button.dropdown-toggle ').html(content);
    })
}
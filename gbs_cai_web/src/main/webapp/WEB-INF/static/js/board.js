/**
 * board javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */

jQuery(document).ready(function ($) {
    var boardList = "";
    $(".class_title").click(function () {
        var class_idx = $(this).attr("idx");//("value");
        $.ajax({
            type: 'GET',
            url: '/board/getBoardListByClassId',
            data: {class_idx: class_idx},
            success: function (result) { //result = boardList
                /**
                 * logic flow
                 * 1. hiddenify class list div
                 * 2. show board list about class idx
                 * 3. spread data
                 * */
                boardList = result;
                $('#classList').css('display', 'none');
                $('#boardList').css('display', 'block');

                var cnt = 1;
                var htmlStr = '';
                
                for (var i = 0; i < result.length; i++) {
                    htmlStr += "<tr>";
                    htmlStr += "<td>" + cnt + "</td>";
                    htmlStr += "<td><a  class='boardDetailView' href='#' >" + result[i].title + "</a></td>";
                    htmlStr += "<td>" + result[i].user_nm + "</td>";
                    htmlStr += "<td>" + result[i].date + "</td>";
                    htmlStr += "<td>" + result[i].hit + "</td>";
                    htmlStr += "</tr>";
                    cnt++;
                }
                $("#boardList tbody").html(htmlStr);
                $("tbody td").css("text-align", "center");
            }
        });
    });
    
    $("#showList").click(function(){
       $("#boardList").css("display", "none");
       $("#classList").css("display", "block");
    });
    
    $("document").on('click', '.boardDetailView',function(){
        console.log(1);
        $("#boardList").css("display","none");
        $("#detail").css("display","block");
        console.log(boardList);
        
    });  
    
    $("#showWrite").click(function(){
        $()
    });
    
});
/**
 * board javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */
jQuery(document).ready(function ($) {
    $("#boardDiv").css("display", "none");
    
    //Ajax to server
    $("#showQnA").click(function(){
        var class_id = $("#class_id").val();
        $.ajax({
            type:"GET",       
            dataType:"json",
            url:"/board/getBoardListByClassId",
            data:{class_id},
            success:boardReqResponse,
            error:ajaxErr
        });
        
        $(".container").css("display", "none");
        $("#boardDiv").css("display", "block");
        
        $(window).scrollTop(0);
    });
    
    $('body').on('click', '.showContent',function(){
        var cssVal = $(this).next().css("display");

        if(cssVal==='table-row'){
            $(this).next().css("display","none");
        }else {
            $('.content').css("display","none");
            $(this).next().slideToggle("fast");
        }
    });
    
    $("#showList").click(function(){
        $("#boardDiv").css("display", "none");
        $(".container").css("display", "block");

    });
});


var boardReqResponse = function(data){
    var htmlStr = "";
    var cnt = 1;
    for (var i in data) {
        htmlStr += "<tr class='showContent'>";
            htmlStr += "<td align=center>"+cnt+"</td>";
            htmlStr += "<td align=center>"+data[i].title+"</td>";
            htmlStr += "<td align=center>"+ data[i].user_nm +"</td>";;     
        htmlStr += "</tr>";
        htmlStr += "<tr class='content' style='display:none;'>";
            htmlStr += "<td colspan = '3' >"+data[i].detail+"</td>";
        htmlStr += "</tr>";
        cnt++;
    };
    
    if(cnt == 1){
        htmlStr = "<tr><td>No contents posted yet.</td></tr>";
    }
    
    $("#board-body").html(htmlStr);

}

var ajaxErr = function(data){
    console.log(data);
}
    
    
    
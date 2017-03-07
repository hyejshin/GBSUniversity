/**
 * board javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */
jQuery(document).ready(function ($) {
    SPEAKER = "Speaker";
    
    $("#boardDiv").css("display", "none");
    
    //Ajax to server -> get board list
    $("#showQnA").click(function () {
        var class_id = $("#class_id").val();
        $.ajax({
            type: "GET",
            dataType: "json",
            url: "/board/getBoardListByClassId",
            data: {class_id},
            success: boardReqResponse,
            error: ajaxErr
        });

        $("#class-detail-div").css("display", "none");
        $("#boardDiv").css("display", "block");

        $(window).scrollTop(0);
    });

   // Ajax to server -> post question
    $("#submit").click(function () {
        var url = "";
        if($("#submit").attr("value") === "Modify"){
            url = "/board/modifyQuestion";
        }else{
            url = "/board/postQuestion";
        }
        $.ajax({
            type: "POST",
            dataType: "json",
            url: url,
            data: $("#BoardWriteForm").serialize(),
            success: saveReqResponse,
            error: ajaxErr
        });

        $(".container").css("display", "none");
        $("#boardDiv").css("display", "block");

        $(window).scrollTop(0);
        $("#addPostDetail").text("");

    });

    //post anwser
    $('body').on("click",".answer-submit", function(){
        var postUrl = "/board/postAnswer";
        
        var param = $(this).parent(".answerForm").serialize();
        param +="&class_id="+$("#class_id").val();
        param +="&board_id="+$("#board_id").val();
        
        $.ajax({
            type:"POST",
            dataType:"json",
            url : postUrl,
            data: param,
            success: detailReqResponse,
            error : ajaxErr
        });
        
    });


    //click table row event
    $('body').on('click', '.showContent', function () {
        var cssVal = $(this).next($(".content")).css("display");
        
        if (cssVal === 'table-row') {
            $(this).next(".content").css("display", "none");
            $(this).next(".content").next(".answer").css("display", "none");
        } else {
            $('.content').css("display", "none");
            $('.answer').css("display", "none");
            $(this).next(".content").slideToggle("fast");
            $(this).next(".content").next(".answer").slideToggle("fast");
        }
    });
    
    //click modify button -> modify version
    $('body').on('click','.modify', function(){
        $("#writenew").children(".table caption").text("Modify Question"); 
        var str = $(this).parents("tr").next(".content").text();
        $("#addPostDetail").val(str);
        $("#idx").attr("value", $(this).attr("idx"));
        $("#submit").val("Modify");
    });

    $("#showList").click(function () {
        $("#boardDiv").css("display", "none");
        $(".container").css("display", "block");
    });
});

function createBoardList(data){
    var htmlStr = "";
    var cnt = 1;
    for (var i in data) {
        htmlStr += "<tr class='showContent'>";
        htmlStr += "<td align=center>" + cnt + "</td>";
        htmlStr += "<td align=center>" + data[i].title + "</td>";
        htmlStr += "<td align=center>" + data[i].user_nm + "</td>";
        if (data[i].user_id == $("#user_id").val()) {// Question
            htmlStr += "<td align=center><input type='button' class='btn btn-info modify' idx='"+data[i].idx+"'value='Modify'/></td>";
        } 
        htmlStr += "</tr>";
        htmlStr += "<tr class='content' style='display:none;'>";
        htmlStr += "<td colspan = '4' >" + data[i].detail + "</td>";
        htmlStr += "</tr>";
        if($("#type").val() === SPEAKER){ // Leaner , Speaker
            htmlStr += "<tr class='answer' style='display:none;'><td align=center colspan =4>" 
                        + "<form class='answerForm' name='answerForm' >"
                                +"<textarea class='answerDetail' name='answerDetail'></textarea>"
                                +"<input type='hidden' name='idx' value='"+data[i].idx+"'/>"
                                +"<input type='button' class='btn btn-info answer-submit' value='Answer'/>"
                        + "</form>"
                    + "</td></tr>";
        }
        cnt++;
    }; 
    if (cnt == 1) {
        htmlStr = "<tr><td colspan='4' align=center>No contents posted yet.</td></tr>";
    }
    $("#board-body").html(htmlStr);
}
var saveReqResponse = function(data){
    alert("Post Complete!");
    createBoardList(data);
    $("#addPostDetail").val("");
    
};
var boardReqResponse = function (data) {
    createBoardList(data);
}
var detailReqResponse = function(data){
    createBoardList(data);
}

var ajaxErr = function (data) {
    console.log(data);
    alert(data);
    alert("Error occured.Please try again.");
}


    
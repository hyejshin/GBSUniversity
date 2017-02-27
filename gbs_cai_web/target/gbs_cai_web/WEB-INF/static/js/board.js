/**
 * board javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */
var boardList;
jQuery(document).ready(function ($) {
    var sock;
    var url = "http://"+window.location.host+"/echo/";
    sock = new SockJS(url);
    
    sock.onmessage=onMessage;
    
    //데이터를 끊고싶을때 실행하는 메소드
    sock.onclose = onClose;
    
    /* sock.onopen = function(){
        sock.send($("#message").val());
    }; */
    function sendMessage(){
            /*소켓으로 보내겠다.  */
            sock.send($("#message").val());
    }
    //evt 파라미터는 웹소켓을 보내준 데이터다.(자동으로 들어옴)
    function onMessage(evt){
        var data = evt.data;
        $("#data").append(data+"<br/>");
        //sock.close();
    }
    
    function onClose(evt){
        $("#data").append("연결 끊김");
    }
    
    $("#sendBtn").click(function(){
        sendMessage();
    });

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
                    htmlStr += "<td><a  class='boardDetailView' cnt=" + cnt + " >" + result[i].title + "</a></td>";
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

    $("#showList").click(function () {
        $("#boardList").css("display", "none");
        $("#classList").css("display", "block");
    });

    $(".table").on('click', '.boardDetailView', function () {
        /**
         * logic flow
         * 1. get cnt -1 index of boardList
         * 2. show detail about class index
         * */
//        var cnt = $("this").attr("cnt");
//        var htmlStr = "";
//        console.log(boardList[cnt]);
//        htmlStr += "<table class='detailTable' summary='table for detail view'>";
//        htmlStr += "<tr>";
//        htmlStr += "<td align='center'>Author</td>";
//        htmlStr += "<td>" + boardList[cnt].user_nm + "</td>";
//        htmlStr += "<td align='center'>Date</td>";
//        htmlStr += "<td>" + boardList[cnt].date + "</td>";
//        htmlStr += "</tr>";
//        htmlStr += "<tr>";
//        htmlStr += "<td align='center'>Title</td>";
//        htmlStr += "<td>" + boardList[cnt].detail + "</td>";
//        htmlStr += "</tr>"
//        htmlStr += "</table>";
//
//        console.log(htmlStr);

        $("#boardList").css("display", "none");
        $("#detail").css("display", "block");


        console.log(boardList);

    });

    $("#showWrite").click(function () {
        $()
    });

});
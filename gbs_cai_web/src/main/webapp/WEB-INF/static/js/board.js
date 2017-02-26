/**
 * qna javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */

jQuery(document).ready(function ($) {


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
                $('#classList').css('display', 'none');
                $('#boardList').css('display', 'block');
                var cnt = 1;
                var htmlStr = '';
                for (var i = 0; i < result.length; i++) {
                    htmlStr += "<tr>";
                    htmlStr += "<td>" + cnt + "</td>";
                    htmlStr += "<td>" + "<a href=''>" + result[i].title + "</a></td>";
                    htmlStr += "<td>" + result[i].user_nm + "</td>";
                    htmlStr += "<td>" + result[i].date + "</td>";
                    htmlStr += "<td>" + result[i].hit + "</td>";
                    htmlStr += "</tr>";
                }
                $(".table .table-striped tbody").append(htmlStr);

            }

        });

    });
});
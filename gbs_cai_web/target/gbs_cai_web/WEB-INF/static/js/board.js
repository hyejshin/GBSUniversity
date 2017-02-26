/**
 * qna javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */
addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); 
			function hideURLbar(){ window.scrollTo(0,1); } 
	

jQuery(document).ready(function($) {
	$(".scroll").click(function(event) {
		event.preventDefault();
		$('html,body').animate({
			scrollTop : $(this.hash).offset().top
		}, 1000); 
	});
        
        $(".class_title").click(function(){
            var class_idx = $(this).attr("idx");//("value");
            $.ajax({
			type : 'GET',
			url : '/board/getBoardListByClassId',
			data : {class_idx : class_idx}, 
			success : function(result) { //result = boardList
                            console.log(result);
//				$("#tbList").empty();
//				//alert(result.length);
//				 for(var i=0;i<result.length;i++) {
//					$("#tbList").append("<tr><td><a href='detail.do?idx="+result[i].idx+"'>"+result[i].idx+"</a></td>"+
//					"<td>"+result[i].id+"</td>"+"<td>"+result[i].pw+"</td>"+
//					"<td>"+result[i].name+"</td>"+"<td>"+result[i].email+
//					"</td>"+"<td>"+result[i].tel+"</td>"+"<td>"+result[i].address+"</td></tr>");
//				} 
				
			}
				
		});
            
        });
});
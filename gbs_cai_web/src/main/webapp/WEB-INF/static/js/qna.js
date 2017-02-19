/**
 * qna javascript
 * Editor: Misu Choi
 * date: 2017-02-18  
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
});

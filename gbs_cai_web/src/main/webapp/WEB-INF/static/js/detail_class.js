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
        $.ajax()
        
        $("#container").css("display", "none");
        $("#boardDiv").css("display", "block");
        
        $(window).scrollTop(0);
    });
    
    $("#showList").click(function(){
        $("#boardDiv").css("display", "none");
        $("#container").css("display", "block");

    });
    
});

    
    
    
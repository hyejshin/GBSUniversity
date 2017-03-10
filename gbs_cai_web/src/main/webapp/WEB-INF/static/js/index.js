/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(document).ready(function(){
    $("#login-button").click(function(){
        if($("#user_id").val() === null || $("#user_id").val() === ""){
            $("#user_id").css({border: '0 solid red'}).animate({borderWidth: 3},600);
            $("#user_id").css({border: '0 solid red'}).animate({borderWidth: 0},600)
            return false;
        }else{
            $("#loginForm").attr("method", "post");
            $("#loginForm").attr("action", "/login");
            $("#loginForm").submit();
        }
    });
    
});
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page session="false" %>
<%
	HttpSession session2 = request.getSession();
	String user_id2 = (String)session2.getAttribute("user_id");
	String user_nm2 = (String)session2.getAttribute("user_nm");
	
%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CHATIo</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
	crossorigin="anonymous">
<!-- Latest compiled and minified CSS -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
  <!-- Optional theme -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">
	
<style>
#mainWrapper {
	display: none;
}

#chatWrapper {
	/* border: 1px #ccc solid;
    border-radius: 10px;
    background: rgba(233, 255, 175, 0.46);
    padding: 10px;
    overflow-y:auto;
    overflow-x:hidden;
    border-right:solid #ff920a 2px;
    min-height:200px; */
	
}

body {
	margin: 0 auto;
	max-width: 800px;
	padding: 0 20px;
}

.container1 {
	border: 1px solid rgba(51, 51, 51, 0.12);
	background-color: #f0ecf8;
	/* border-radius: 3px; */
	/* padding: 3px 2px; */
	margin: 6px 0;
	width: 70%;
	border-radius: 5px;
}

.darker {
	float: right;
	border-color: rgba(42, 7, 7, 0.22);
	background-color: rgb(169, 227, 183);
	width: 60%;
	border-radius: 8px;
	margin-bottom: 5px;
}

.container1::after {
	content: "";
	clear: both;
	display: table;
}

.container1 img {
	float: left;
	max-width: 60px;
	width: 100%;
	margin-right: 20px;
	border-radius: 50%;
}

.container1.right {
	font-weight: 700;
	float: right;
	margin-left: 20px;
	margin-right: 0;
}

li {
	list-style: none;
}

.balloon {
	position: relative;
	display: inline-block;
}

.balloon span {
	display: inline-block;
	padding: 5px;
	color: #333;
	background: #f0ecf8;
	border-radius: 5px;
}

.balloon span#me {
	display: inline-block;
	padding: 5px;
	color: #333;
	background: rgba(157, 223, 171, 0.18);
	border-radius: 5px;
}

.balloon:after {
	content: '';
	position: absolute;
	width: 0;
	height: 0;
	border-style: solid;
}

.balloon.test_2:after {
	border-color: transparent transparent rgba(125, 25, 25, 0)
		rgb(169, 227, 183);
	right: -19px;
}

.balloon.test_1:after, .balloon.test_2:after {
	border-width: 10px 10px;
	top: 50%;
	margin-left: -10px;
}

.balloon.test_3:after, .balloon.test_4:after {
	border-width: 10px 15px;
	top: 50%;
	margin-top: -10px;
}

.balloon.test_1:after {
	border-color: #7d1919 transparent transparent transparent;
	bottom: -25px;
}

.balloon.test_3:after {
	border-color: transparent #f0ecf8 transparent transparent;
	left: -25px;
}

.balloon.test_4:after {
	border-color: transparent transparent transparent #aad6e3 right:-25px;
}

* {
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	box-sizing: border-box;
	outline: none;
}

.login-form {
	margin: 50px auto;
	max-width: 360px;
}

.login-form>section {
	text-align: center;
	margin-top: 15px;
}

.login-form>section img {
	margin-bottom: 20px;
}

.login-form>section a {
	color: #657fed;
}

.login-form h4 {
	font-weight: normal;
	font-size: 20px;
	color: #737373;
	margin-bottom: 20px;
}

form[role=login] {
	font: 15px/2.2em Lato, serif;
	color: #555;
	background: #f7f7f7;
	padding: 40px;
	-webkit-box-shadow: 0 3px 3px 0 rgba(50, 50, 50, 0.2);
	-moz-box-shadow: 0 3px 3px 0 rgba(50, 50, 50, 0.2);
	box-shadow: 0 3px 3px 0 rgba(50, 50, 50, 0.2);
}

form[role=login] img {
	display: block;
	margin: 0 auto;
	margin-bottom: 25px;
}

form[role=login] input, form[role=login] button {
	font-size: 17px;
}

form[role=login] input {
	color: #989898;
	background: #fff;
	border: 1px solid #c0c0c0;
	border-radius: 0;
	-moz-border-radius: 0;
	-webkit-border-radius: 0;
	box-shadow: none;
	margin: 0;
	position: relative;
	z-index: 999;
}

form[role=login] input:focus {
	z-index: 1000;
}

form[role=login] input[type=email] {
	margin-bottom: -1px;
}

form[role=login] input::-webkit-input-placeholder {
	color: #c0c0c0;
}

form[role=login] input:-moz-placeholder {
	color: #c0c0c0;
}

form[role=login] input::-moz-placeholder {
	color: #c0c0c0;
}

form[role=login] input:-ms-input-placeholder {
	color: #c0c0c0;
}

form[role=login] button {
	font-size: 14px;
	font-weight: bold;
	text-shadow: 1px 1px 1px #4082ef;
	border: 1px solid #3b88c3;
	background: #52a6e6;
	margin-top: 15px;
	margin-bottom: 8px;
	-webkit-box-shadow: inset 0 1px 2px 0 rgba(255, 255, 255, .3);
	-moz-box-shadow: inset 0 1px 2px 0 rgba(255, 255, 255, .3);
	box-shadow: inset 0 1px 2px 0 rgba(255, 255, 255, .3);
}
</style>
</head>
<body style="font-family: Verdana">
	<section class="container">
		<section class="login-form" id="namesWrapper">
			<section>

				<h4>Join with your team</h4>
			</section>
			<form id="usernameForm" role="login">

				<input type="text" name="username" required placeholder="NickName"
					id="username" class="form-control input-lg" value="<%=user_nm2%>" disabled/> 
                                <input type="hidden" name="userid" id="userid" value="<%=user_id2%>"/>
                                <br> <select
					class="form-control" name="room" id="room">
					<option value="AL">All</option>
					<option value="CAI">CAI</option>
                                        <option value="CAILDT">CAI_Large Deal Team</option>
                                        <option value="CBDS">CBDS</option>
                                        <option value="CPRS">CPR/S</option>
                                        <option value="DSIX">DS&iX</option>
                                        <option value="DS">Dist Sector</option>
					<option value="FS">FS Sector</option>
                                        <option value="IS">Ind Sectorr</option>
                                        <option value="SUP">Support Function</option>
				</select>
				<button type="submit" name="submit" class="btn btn-block btn-info">Submit</button>
			</form>
		</section>
	</section>
		
	<!-- 로그인 마지막/ CHAT 시작부분 -->
	<div class="container">
	<div id="mainWrapper">

 <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">
  Current Users
</button>
<div id="myModal" class="modal fade">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Current Users</h4>
            </div>
            <div class="modal-body">
            <div id="users"></div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
<!-- /.modal -->
	
		
		<h4 style="font-weight: 700; margin-top: 22px;">
			<span class="glyphicon glyphicon-comment"></span>&nbsp;RECENT CHAT
			HISTORY
		</h4>
		<!-- 					<div class="col-md-8">
					<div class="panel panel-primary">
						<div class="panel-heading">CURRENT USERS</div>
						<div id="users"></div>
					</div>
				</div> -->
		<div id="chatWrapper" >
			<div id="chatWindow" style="height:285px; overflow-y: auto;"></div>			
		</div>
                <div style="margin-top: 18%;">
				<form id="messageForm">
					<div class="form-group">
						<input class="form-control" style="background-color: #fff;"
							type="text" id="message" placeholder="Say Something..." /> <input
							class="btn btn-success" type="submit" value="submit"
							style="margin-top: 5px;" />
					</div>
				</form>
		</div>

            </div>
	</div>		
	
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"
		integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
		crossorigin="anonymous"></script>
	<script src="/script/socket.io.slim.js"></script>
	<script>
		$(function(){
                        
			var socket = io.connect('http://localhost:30000');
			var $messageForm = $('#messageForm');
			var $message = $('#message');
			var $chat = $('#chatWindow');
			var $usernameForm = $('#usernameForm');
			var $users = $('#users');
			var $username = $('#username');
                        var $userid   = $('#userid');
			var $error = $('#error');
			var $room  = $('#room');
                                
			$usernameForm.submit(function(e){
				e.preventDefault();
				var enterInfo = { 'username' : $username.val() ,
                                                  'userid'   : $userid.val(),
                                                  'room'     : $room.val()
                                                };
				socket.emit('new user', enterInfo, function(data){
					if(data != null){
						$('#namesWrapper').hide();
						$('#mainWrapper').show();
                                                
                                                var itemProcessed = 0;
						data.forEach(function(msg){
                                                        if(msg.userid == $userid.val()){
                                                            $chat.append('<li><div class="darker balloon test_2"><span id="me"><strong class="right">'+msg.username +'<p>'+msg.message+'</p></strng></span></div></li>');
                                                        }else{
                                                            $chat.append('<li><div class="container1 balloon test_3"><span><strong>'+msg.username +'</strong>'+'<p>'+msg.message+'</p></span></div></li>');
                                                        }
							
                                                        itemProcessed++;
                                                        if(itemProcessed === data.length){
                                                            $('#chatWindow').animate({
                                                                    scrollTop : $('#chatWindow').prop('scrollHeight')},0);
                                                        }
						});
					}else{
						$error.html('Username is taken');
					}    
				});
			});

			socket.on('usernames',function(data){
				var html = '';
				for(i = 0; i< data.length; i++){
					html += data[i].username + '<br>';
				}

				$users.html(html);
			});

			$messageForm.submit(function(e){
				e.preventDefault();
                                if($message.val() == ''){
                                    alert('Please enter message.');
                                    return ;
                                }
				var info = { 'msg' : $message.val(),
                                             'userid' : $userid.val(),
                                             'room': $room.val()};
				socket.emit('send message', info);// $message.val());
				$message.val('');
			});

			socket.on('new message', function(data){
                                if(data.msg.userid == $userid.val()){
                                    $chat.append('<li><div class="darker balloon test_2"><span id="me"><strong class="right">'+data.user +'<p>'+data.msg.msg+'</p></strng></span></div></li>');
                                }else{
                                    $chat.append('<li><div class="container1 balloon test_3"><span><strong>'+data.user +'</strong>'+'<p>'+data.msg.msg+'</p></span></div></li>');
                                }
                                $('#chatWindow').animate({scrollTop : $('#chatWindow').prop('scrollHeight')},0);
				
			});
		});
	</script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    
   <!-- Latest compiled and minified JavaScript -->
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</body>
</html>
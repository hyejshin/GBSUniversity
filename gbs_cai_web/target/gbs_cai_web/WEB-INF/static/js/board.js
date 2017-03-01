/**
 * board javascript
 * Editor: Misu Choi
 * Modify : Joosang Kim
 * date: 2017-02-18  
 * Note : add board page dynamic action
 */
var socket   = {client: null,
                stomp: null};
var service = {
                RECONNECT_TIMEOUT: 30000,
                SOCKET_URL: "/chat",
                CHAT_TOPIC: "/topic/message",
                CHAT_BROKER: "/app/chat"
               };

// init socket connection
function initCon() {
    socket.client = new SockJS(service.SOCKET_URL);
    socket.stomp = Stomp.over(socket.client);
    socket.stomp.connect({}, connect_callback);
    socket.stomp.onclose = reconnect;
}

var connect_callback = function(){
    socket.stomp.subscribe(service.CHAT_TOPIC, function(msg){
            parseMsg(msg);
        }
    );
}

var parseMsg = function(data){
    var jsonData = JSON.parse(data.body);
    console.log(data.body)
    appendMessage(jsonData);
}

var appendMessage = function(jsonData){
    $("#data").append(jsonData.message);
}

var reconnect = function() {
      $timeout(function() {
        initCon();
      }, this.RECONNECT_TIMEOUT);
    };
    
var send = function(msg){
    var id = Math.floor(Math.random() * 100000); //create randome message id
    socket.stomp.send(service.CHAT_BROKER,
                      {priority : 9},
                      JSON.stringify({message : msg, user_nm: $("#userNm").val(), id:id})
                      )
};

jQuery(document).ready(function ($) {
    initCon();
    
    //click sedn button
    $("#sendBtn").click(function(){
        send($("#message").val());
    });
    $(".class_title").click(function () {
        $("#chatDiv").css("display", "block");
        $("#classList").css("display", "none");
    });
    
    $("#showList").click(function () {
        $("#boardList").css("display", "none");
        $("#classList").css("display", "block");
    });
    $("#showWrite").click(function () {
        $()
    });
                });
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
                SOCKET_URL: "/chat",  //end point-> coonect
                CHAT_TOPIC: "/topic/message/",   //@sendTo
                CHAT_BROKER: "/app/chat/"
               };

// init socket connection
function initCon(class_id) {
    service.CHAT_BROKER += class_id;
    service.CHAT_TOPIC += class_id;
    socket.client = new SockJS("/chat"); //
    socket.stomp = Stomp.over(socket.client);
    socket.stomp.connect({}, connect_callback(class_id));
    socket.stomp.onclose = reconnect;
}

// cloase connection
function closeCon(){
    socket.stomp.disconnect(function(){
        
    });
}

var connect_callback = function(){
    console.log(service.CHAT_TOPIC);
    socket.stomp.subscribe( "/topic/message/C00001" , function(msg){
            parseMsg(msg);
        }
    );
};

var parseMsg = function(data){
    var jsonData = JSON.parse(data.body);
    console.log(data.body)
    appendMessage(jsonData);
}

var appendMessage = function(jsonData){
    $("p").append(jsonData.message);
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

var createSocketForClass = function(class_id){
    if(class_id == null){
        alert("Wrong class infomation.");
        $("#classListDiv").css("display","block");
        $("#chatDiv").css("display","none");
        return;
    }else{
        initCon(class_id);
    }
} 
jQuery(document).ready(function ($) {
    /*
     * 1. show registered class list
     */
    $("#chatDiv").css("display", "none");
    
    $(".classId").on('click', function(){
        $("#classListDiv").css("display","none");
        $("#chatDiv").css("display","block");
        //create new socket
        createSocketForClass($(this).text());
    });
    
    $("#goBack").click(function(){
        $("#classListDiv").css("display","block");
        $("#chatDiv").css("display","none");
    });
    
    /**
     * send message
     * */
    $("#btn-chat").click(function(){
       // Check text box validation
       if($("#btn-input").val() == null || $("#btn-input").val().trim() == ""){
           alert("Please enter message");
           return;
       }else{
           send($("#btn-input").val());  
           $("#btn-input").val("");
       };
    });
    
    
});

    
    
    
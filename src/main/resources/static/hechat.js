var stompClient = null;
function setConnected(connected) {
    $("#connect").prop("disabled", connected);
    $("#disconnect").prop("disabled", !connected);
    $("#send").prop("disabled", !connected);
    if (connected) {
        $("#conversation").show();
    }
    else {
        $("#conversation").hide();
    }
    $("#msg").html("");
}


function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
    setConnected(false);
    console.log("Disconnected");
}

function sendMessage() {
    let message = $("#msg").val()
    showMessage( message);
    console.log(message);
    stompClient.send("/app/sendMessage", {}, JSON.stringify(message));
    $("#msg").html("")
}

function showMessage(message) {
    $("#communicate").append("<li>" + message + "</li>");
}

$(function () {
    $("form").on('submit', function (e) {
        e.preventDefault();
    });
    var socket = new SockJS('/ws');
    stompClient = Stomp.over(socket);
    stompClient.connect({}, function (frame) {
        setConnected(true);
        console.log('Connected: ' + frame);
        stompClient.send("/app/sendMessage", {}, JSON.stringify("2"));
        stompClient.subscribe('/topic/public', function (message) {
            showMessage(message.body);
        });
    });
    $( "#send" ).click(function() { sendMessage(); });
});
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
	
<html>
<head>
	<title>Main View</title>
</head>

<body>
<!-- header.jsp -->
<jsp:include page="../template/header.jsp"/>
	<h1>Main View </h1>
	<ul>
		<li><a href="../board/boardList.do">보드 게시판</a></li>
		<li><a href="../member/memberEnrollView.do">회원가입</a></li>
		<li><a href="../mypage/mypageList.do">마이페이지</a></li>
		<li><a href="../googleMap.jsp">지도 보기</a></li>
	</ul>
	<%-- <img alt="" src="<c:url value='/resources/images/slide1.jpg'></c:url>">dsada --%>



<script type="text/javascript">
	var wsUri = "ws://localhost:8080/ryan/websocket/echo.do";
	function init() {
		output = document.getElementById("output");
	}
	
	function send_message() {
		websocket = new WebSocket(wsUri);
		websocket.onopen = function(evt) {
			onOpen(evt)
		};
		websocket.onmessage = function(evt) {
			onMessage(evt)
		};
		websocket.onerror = function(evt) {
			onError(evt)
		};
	}
	
	function onOpen(evt) {
		writeToScreen("Connected to Endpoint!");
		doSend(textID.value);
	}
	
	function onMessage(evt) {
		writeToScreen("Message Received: " + evt.data);
	}
	
	function onError(evt) {
		writeToScreen('ERROR: ' + evt.data);
	}
	
	function doSend(message) {
		writeToScreen("Message Sent: " + message);
		websocket.send(message);
		//websocket.close();
	}
	
	function writeToScreen(message) {
		var pre = document.createElement("p");
		pre.style.wordWrap = "break-word";
		pre.innerHTML = message;
		output.appendChild(pre);
	}
	
	window.addEventListener("load", init, false);
</script>

<h1 style="text-align: center;">Hello World WebSocket Client</h1><br>
<div style="text-align: center;">
	<form action="">
		<input onclick="send_message()" value="Send" type="button">
		<input id="textID" name="message" value="Hello WebSocket!" type="text"><br>
	</form>
</div>
<div id="output"></div>






<!-- 
<form>
        송신 메시지 작성하는 창
        <input id="textMessage" type="text">
        송신 버튼
        <input onclick="sendMessage()" value="Send" type="button">
        종료 버튼
        <input onclick="disconnect()" value="Disconnect" type="button">
    </form>
    <br />
    결과 메시지 보여주는 창
    <textarea id="messageTextArea" rows="10" cols="50"></textarea>
     
    <script type="text/javascript">
        //WebSocketEx는 프로젝트 이름
        //websocket 클래스 이름
        var webSocket = new WebSocket("ws://localhost:8080/ryan/websocket");
        var messageTextArea = document.getElementById("messageTextArea");
        //웹 소켓이 연결되었을 때 호출되는 이벤트
        webSocket.onopen = function(message){
            messageTextArea.value += "Server connect...\n";
        };
        //웹 소켓이 닫혔을 때 호출되는 이벤트
        webSocket.onclose = function(message){
            messageTextArea.value += "Server Disconnect...\n";
        };
        //웹 소켓이 에러가 났을 때 호출되는 이벤트
        webSocket.onerror = function(message){
            messageTextArea.value += "error...\n";
        };
        //웹 소켓에서 메시지가 날라왔을 때 호출되는 이벤트
        webSocket.onmessage = function(message){
            messageTextArea.value += "Recieve From Server => "+message.data+"\n";
        };
        //Send 버튼을 누르면 실행되는 함수
        function sendMessage(){
            var message = document.getElementById("textMessage");
            messageTextArea.value += "Send to Server => "+message.value+"\n";
            //웹소켓으로 textMessage객체의 값을 보낸다.
            webSocket.send(message.value);
            //textMessage객체의 값 초기화
            message.value = "";
        }
        //웹소켓 종료
        function disconnect(){
            webSocket.close();
        }
    </script> -->

<!-- Footer.jsp -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>

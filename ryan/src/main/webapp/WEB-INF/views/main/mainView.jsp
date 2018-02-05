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


	<h1 style="text-align: center;">Hello World WebSocket Client</h1><br>
	<div style="text-align: center;">
		<form action="">
			<input onclick="send_message()" value="Send" type="button">
			<input onclick="disconnect()"  value="disconnect" type="button">
			<input id="textID" name="message" value="Hello WebSocket!" type="text"><br>
		</form>
	</div>
	<div id="output"></div>


<script type="text/javascript">

// websocket
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
	
	function disconnect() {
		alert("stop");
		websocket.close(); 
	}
	
	window.addEventListener("load", init, false);
</script>

<!-- Footer.jsp -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>

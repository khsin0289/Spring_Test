<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>OBELAB</title>
		
		<%-- 페이지 알림 (존재할 경우에만 작동) --%>
		
		<%-- .js Files --%>
<!-- 		<script type="text/javascript" src=""></script> -->
		
		<%-- .css Files --%>
		<link rel="stylesheet" href="/obelab/resources/css/_master.css">

	</head>
	<body>
		<div class="div-index-view">
		<c:choose>
		<c:when test="${ exceptionView != null }">
			<jsp:include page="${ exceptionView }"></jsp:include>
		</c:when>
		<c:otherwise>
			<c:choose>
			<c:when test="${ showPage != null }">
				<jsp:include page="${ showPage }"></jsp:include>
			</c:when>
			<c:otherwise>
				<jsp:include page="${ exceptionView }"></jsp:include>
			</c:otherwise>
		</c:choose>
		</c:otherwise>
		</c:choose>
		
		</div>
		
		<script type="text/javascript">
// 			alert("화면 해상도 넓이 : " + window.screen.width);
// 			alert("화면 해상도 높이 : " + window.screen.height);
// 			alert("브라우저 창 크기 : " + document.body.clientWidth);
			var msg = "${msg}";
			if(msg != "") {
				alert(msg);
				msg == "";
			}
		</script>
		
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OBELAB</title>
		
		<%-- .css Files --%>
		<link rel="stylesheet" href="/obelab/resources/css/_master.css">
		<!-- dataTables -->
		<link rel="stylesheet" href="/obelab/resources/css/datatables.css">
	    <!-- BOOTSTRAP CUSTOMS -->
	    <link rel="stylesheet" href="/obelab/resources/css/_customBoot.css"/>
	     <!-- FONT STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_font.css">
	    <!-- COLOR CODE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_colorCode.css">
	    <!-- PLACEHORDER STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_placeholder.css">
	    <!-- DATA PAGE STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_data.css">
	    <!-- SUBJECT PAGE STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_subject.css">
	    <!-- LOGIN FORM STYLE -->
		<link rel="stylesheet" href="/obelab/resources/css/_login.css">
	    
		
		<!-- BOOTSTRAP CORE STYLE  -->
	    <link href="/obelab/resources/assets/css/bootstrap.css" rel="stylesheet" />
	    <!-- FONT AWESOME ICONS  -->
<!-- 	    <link href="/obelab/resources/assets/css/font-awesome.css" rel="stylesheet" /> -->
	    <!-- CUSTOM STYLE  -->
	    <link href="/obelab/resources/assets/css/style.css" rel="stylesheet" />
	    
	    
	    <!-- CORE JQUERY SCRIPTS -->
	    <script src="/obelab/resources/assets/js/jquery-1.11.1.js"></script>
	    <!-- BOOTSTRAP SCRIPTS  -->
	    <script src="/obelab/resources/assets/js/bootstrap.js"></script>
	    
	    <!-- DATA TABLES -->
	    <script src="/obelab/resources/js/datatables.js"></script>
	    
	</head>
	<body>
<!-- 		<h1>Doctor Page</h1> -->
		<div class="div-doctor-view">
		<c:choose>
		<c:when test="${ exceptionView != null }">
			<jsp:include page="${ exceptionView }"></jsp:include>
		</c:when>
		<c:otherwise>
			<!-- BASIC MODAL INCLUDE -->
			<jsp:include page="/WEB-INF/views/modalPages/basic/basicOk.jsp"></jsp:include>
			<jsp:include page="/WEB-INF/views/modalPages/basic/basicOkCancel.jsp"></jsp:include>
			<!-- BASIC MODAL INCLUDE END -->
			
			<!-- TOP PAGE INCLUDE -->
			<div class="div-top-view">
				<jsp:include page="/WEB-INF/views/doctorPages/top/logoHead.jsp"></jsp:include>
				<jsp:include page="/WEB-INF/views/doctorPages/top/menuSection.jsp"></jsp:include>
			</div>
			<!-- TOP PAGE INCLUDE END -->
			
			<!-- CENTER PAGE INCLUDE -->
			<div class="div-center-view">
			<c:if test="${ center != null }">
				<jsp:include page="${ center }"></jsp:include>
			</c:if>
			</div>
			<!-- CENTER PAGE INCLUDE END -->
			
		</c:otherwise>
		</c:choose>
		</div>
		<script type="text/javascript">
// 		alert("${center}");
// 			alert("화면 해상도 넓이 : " + window.screen.width);
// 			alert("화면 해상도 높이 : " + window.screen.height);
// 			alert("브라우저 창 크기 : " + document.body.clientWidth);
// 			var msg = "${msg}";
// 			if(msg != "") {
// 				alert(msg);
// 				msg == "";
// 			}
// 			alert("${center}");
		</script>
	</body>
</html>
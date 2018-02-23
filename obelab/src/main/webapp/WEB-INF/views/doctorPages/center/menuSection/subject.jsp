<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
<%-- 		<c:choose> --%>
<%-- 		<c:when test="${ dataList != null }"> --%>
			<div class="center-sort bg-color-ffffff">
			<c:if test="${ chart != null }">
				<jsp:include page="${ chart }"></jsp:include>
			</c:if>
			<c:if test="${ table != null }">
				<jsp:include page="${ table }"></jsp:include>
			</c:if>
			</div>
<%-- 		</c:when> --%>
<%-- 		<c:when test="${ compare != null }"> --%>
<%-- 			<jsp:include page="${ compare }"></jsp:include> --%>
<%-- 		</c:when> --%>
<%-- 		<c:otherwise> --%>
<%-- 			<jsp:include page="${ exceptionDetail }"></jsp:include> --%>
<%-- 		</c:otherwise> --%>
<%-- 		</c:choose> --%>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>Insert title here</title>
	</head>
	<body>
		<h1>test</h1>
			<c:choose>
				<c:when test="${name == NaN || name == null || name == '' || name == undefined }">
					<a href="/obelab/insertOne">insertOne 이동</a>
					<a href="/obelab/test/selectList">selectList 이동</a>
				</c:when>
				<c:otherwise>
					<p>이름 : ${ name }</p>
					<p>나이 : ${ age }</p>
				</c:otherwise>
			</c:choose>
	</body>
</html>
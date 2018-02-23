<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OBELAB[Error]</title>
	</head>
	<body>
		<section class="non-top-middle-sm exception-text CR-Ex">
		<c:if test="${ errorMsg != null }">
			${ errorMsg }
		</c:if>
		</section>
<!-- 		<h1>에러코드 : 404</h1> -->
<!-- 		<h1>Error Code : ???</h1> -->
<!-- 		<br> -->
<!-- 		<h3>페이지를 찾을 수 없습니다.</h3> -->
<!-- 		<h3>Page not Found.</h3> -->
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>logout</h1>
		<script type="text/javascript">
		var msg = "${msg}";
		if(msg == "로그아웃 성공") {
			alert(msg);
			location.href="/obelab";
		} else {
			alert(msg);
			window.history.back();
		}
		</script>
	</body>
</html>
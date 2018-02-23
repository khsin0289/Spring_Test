<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>modifyOne</h1>
		<form name="frmModify">
			이름 : <input type="text" name="name" value="${testBean.name}">
			나이 : <input type="text" name="age" value="${testBean.age}">
			<input type="hidden" name="test_seq" value="${testBean.test_seq}">
			<button onclick="javascript:goModify()">수정완료</button>
			<input type="reset" value="다시작성">
		</form>
		
		<a style="cursor: pointer;" onclick="backPage()">돌아가기</a>
		
		<script type="text/javascript">
			function goModify() {
				var modiFrm = document.frmModify;
				modiFrm.method = "post";
				modiFrm.action = "./modifyOne";
				modiFrm.submit();
			}
			function backPage() {
				window.history.back();
			} 
		</script>
	</body>
</html>
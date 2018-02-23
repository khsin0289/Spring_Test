<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>헤더</title>
</head>
<body>

	<div class="header">
		<h1>Header area</h1>
		<c:if test="${empty loginUser}"><a href="../member/login.do">로그인</a></c:if>
		<c:if test="${!empty loginUser}">[ ${sessionScope.loginUser.id } ] 님 환영합니다.</c:if>
		<c:if test="${!empty loginUser}"><a href="../member/logout.do">로그아웃</a></c:if>
	</div>  	

		<%-- <c:if test="${!empty loginUser}">
		
		<li class="w3-hide-small">
			<a href="/friends/member/memberInfoView.do/" class="w3-hover-white" style="width:250px;padding-top:11px;padding-bottom: 10px;margin-bottom: -5px;">
				<b>
					<img src="/friends/resources/profileUploadFiles/${sessionScope.loginUser.userimgupload}" alt="" style="width:24px; height:24px;border-radius: 50%;display:inherit;"/>${sessionScope.loginUser.id} 님 환영합니다.
			    </b>
		    </a>
		</li>
		</c:if> --%>
<hr style="border:0;border-top: 1px solid black;">
</body>
</html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	
<!-- Footer.jsp -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>

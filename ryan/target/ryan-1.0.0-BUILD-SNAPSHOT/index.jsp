<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
	<h1>Spring Sample Porject </h1>
	<a href="view/mainView.do">메인화면으로 이동</a>
	
	<c:if test="${not empty sessionScope.loginUser.id }"> <!-- sessionScopre.id가 있으면 -->
	 	${sessionScope.loginUser.id} 아이디로 로그인중...<br/>
	</c:if>
	로그인 아이디 : ${sessionScope.loginUser.id}
	<ul>
		<li><a href="board/boardList.do">보드 게시판</a></li>
		<li><a href="member/memberEnrollView.do">회원가입</a></li>
		<li><a href="member/login.do">로그인</a></li>
		<li><a href="mypage/mypageList.do">마이페이지</a></li>
		<li><a href="googleMap.jsp">지도 보기</a></li>
		<li><a href="main/mainView.do">메인페이지</a></li>
	</ul>
	<%-- <img alt="" src="<c:url value='/resources/images/slide1.jpg'></c:url>">dsada --%>
	
</body>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시물 상세보기</title>
</head>
<body>

		<table id="BoardTable">
			<tr>
				<td><input type="checkbox" name="checkAll"></td>
				<td>No</td>
				<td>제목</td>
				<td>내용</td>
			</tr>
			<c:forEach items="${boardList}" var="boardList" varStatus="status">
			<tr>
				<td><input type="checkbox" name="inputCheck"></td>
				<td>${boardList.no}</td>
				<td>${boardList.subject}</td>
				<td>${boardList.contents}</td>
			</tr>
			</c:forEach>
		</table>
		
		<input type="button" value="목록으로" onclick="location.href='/ryan/board/boardList.do'">
		

</body>
</html>
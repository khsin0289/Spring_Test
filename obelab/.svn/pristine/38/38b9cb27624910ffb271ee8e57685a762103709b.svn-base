<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<h1>selectList 페이지</h1>
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>나이</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
				<c:when test="${!testList.isEmpty() }">
					<c:forEach var="each" items="${ testList }">
						
						<tr>
							<td><a href="/obelab/test/selectOne?test_seq=${each.test_seq}">${each.test_seq}</a></td>
							<td>${each.name}</td>
							<td>${each.age}</td>
						</tr>
					</c:forEach>
				
				</c:when>
				<c:otherwise>
					<tr>
						<td>x</td>
						<td>x</td>
						<td>x</td>
					</tr>
				</c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<a href="/obelab">돌아가기</a>
	</body>
</html>
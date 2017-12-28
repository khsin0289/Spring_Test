<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<title>MemberList</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href='https://fonts.googleapis.com/css?family=RobotoDraft' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-1.12.3.min.js"></script>

<table id="myTable">
	<c:forEach items="${boardList}" var="boardList" varStatus="status">
		<tr>
			<td scope="col" style="width:25%">${boardList.id}</td>
			<td scope="col" style="width:25%">${boardList.name}</td>
			<td scope="col" style="width:25%">${boardList.phone}</td>
		</tr>
	</c:forEach>
</table>

<!-- paging -->
<div class="paging" style="text-align: center;">
	<span class="page_num">
		<c:if test="${currentPage <= 1}">
		</c:if>
		<c:if test="${currentPage > 1 }">
			<a href="/member/memberList.do?page=1&keyword=${keyword }&searchType=${searchType }" >처음</a>
			<a href="/member/memberList.do?page=${currentPage-1}&keyword=${keyword }&searchType=${searchType }">이전</a>
		</c:if>
		
		<c:forEach var="p" step="1" begin="${startPage }" end="${endPage }">
		
			<c:if test="${p ==currentPage }">
				<label class="on" style="background-color: black;">${p }</label>
			</c:if>
			<c:if test="${p != currentPage }">
				<a href="${adminCsListView }">${p }</a>
			</c:if>
		</c:forEach>
		<c:if test="${currentPage >= maxPage}">
		</c:if>
		<c:if test="${currentPage < maxPage}">
			<a href="/friends/admin/adminCsListView.do?page=${currentPage + 1 }&keyword=${keyword }&searchType=${searchType }">다음</a>
			<a href="/friends/admin/adminCsListView.do?page=${maxPage }&keyword=${keyword }&searchType=${searchType }">끝</a>
		</c:if>
		
	</span>
</div>
</body>
</html> 
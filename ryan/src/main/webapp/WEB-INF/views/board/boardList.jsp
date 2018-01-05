<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Board List</title>

<style type="text/css">

	#BoardTable{border: 1px solid black;}
	table tr td {width:25%;}
</style>

</head>
<body>
	<h1>BOARD</h1>
		<table id="BoardTable">
			<tr>
				<td></td>
				<td>No</td>
				<td>제목</td>
				<td>내용</td>
			</tr>
			<c:forEach items="${boardList}" var="boardList" varStatus="status">
				<c:url var="boardCall" value="/ryan/index.jsp">
					<c:param name="boadNum" value="${boardList.no}"/>
				</c:url>
			<tr>
				<td><input type="checkbox" id="checkAll" name="checkAll" ></td>
				<td>${boardList.no}</td>
				<td>${boardList.subject}</td>
				<td><a href="${boardCall}">${boardList.contents}</a></td>
			</tr>
			</c:forEach>
	</table>
	
	<div>
		<input type="button" value="메인으로" onclick="location.href='/ryan/index.jsp'">
		<button onclick="location.href='/ryan/board/boardWriteView.do'">글쓰기</button>
		<button>삭제</button>
		<button onclick="checkAll()">전체선택</button>
	</div>

	<script type="text/javascript">
		function checkAll() {
			alert("모두 선택");
			if( $("#checkAll").is(':checked') ){
		        $("input[name=checkRow]").prop("checked", true);
		      }else{
		        $("input[name=checkRow]").prop("checked", false);
		      }
		}
	</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- jQuery CDN -->
<script  src="https://code.jquery.com/jquery-3.2.1.js"  integrity="sha256-DZAnKJ/6XZ9si04Hgrsxu/8s717jcIzLy3oi35EouyE="  crossorigin="anonymous"></script>

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
				<td><input type="checkbox" name="checkAll"></td>
				<td>No</td>
				<td>제목</td>
				<td>내용</td>
			</tr>
			<c:forEach items="${boardList}" var="boardList" varStatus="status">
				<c:url var="boardCall" value="boardDetailView.do">
					<c:param name="boadNum" value="${boardList.no}"/>
				</c:url>
			<tr>
				<td><input type="checkbox" name="inputCheck"></td>
				<td>${boardList.no}</td>
				<td>${boardList.subject}</td>
				<td><a href="${boardCall}">${boardList.contents}</a></td>
			</tr>
			</c:forEach>
		</table>
	
	<div>
		<input type="button" value="메인으로" onclick="location.href='/ryan/index.jsp'">
		<button onclick="location.href='/ryan/board/boardWriteView.do'">글쓰기</button>
		<button onclick="location.href='/ryan/board/boardDelete.do'">삭제</button>
	</div>

	<script type="text/javascript">
	
	$(document).ready(function(){
		$("input[name=checkAll]").click(function(){
			
			var chk = $(this).is(":checked");
			if(chk){
				alert("전체선택");
				$("input[name=inputCheck]").prop("checked",true); //체크박스 전체선택

			}else{
				alert("전체선택 해제");
				$("input[name=inputCheck]").prop("checked",false); //체크박스 전체선택 해제
			}
			
		});
	})
	</script>
</body>
</html>
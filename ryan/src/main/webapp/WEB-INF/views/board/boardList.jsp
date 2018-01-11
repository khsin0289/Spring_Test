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
	로그인한 아이디 : ${sessionScope.loginUser.id}
		<table id="BoardTable">
			<tr>
				<td><input type="checkbox" id="checkAll" name="checkAll" ></td>
				<td>No</td>
				<td>제목</td>
				<td>내용</td>
			</tr>
			<c:forEach items="${boardList}" var="boardList" varStatus="status">
				<c:url var="boardCall" value="boardDetailView.do">
					<c:param name="seq" value="${boardList.seq}"/>
				</c:url>
			<tr>
				<td><input type="checkbox" id="inputCheck" name="inputCheck" ></td>
				<td>${boardList.seq}</td>
				<td>${boardList.subject}</td>
				<td><a href="${boardCall}">${boardList.contents}</a></td>
			</tr>
			</c:forEach>
	</table>
	
	<div>
		<input type="button" value="메인으로" onclick="location.href='/ryan/index.jsp'">
		<button onclick="location.href='/ryan/board/boardWriteView.do'">글쓰기</button>
		<button>삭제</button>
	</div>
	
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		//최상단 체크박스 클릭
		$("#checkAll").click(function(){
			//클릭되었으면
			if($("#checkAll").prop("checked")){
				//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
				$("input[name=inputCheck]").prop("checked",true);
				//클릭이 안되있으면
			}else{
				//input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
				$("input[name=inputCheck]").prop("checked",false);
			}
		})
	});
</script>
</body>
</html>
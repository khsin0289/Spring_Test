<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 상세화면</title>
</head>
<style>
#BoardTable{	border: 1px solid black; width:20%;}
</style>
<body>
<h1>게시판 상세화면</h1>

<h1>BOARD</h1>
	로그인한 아이디 : ${sessionScope.loginUser.id}
		<table id="BoardTable">
			<tr>
				<td>번호</td>
				<td>${boardVO.seq}</td>
			</tr>
			<tr>
				<td>제목</td>
				<td>${boardVO.subject}</td>
			</tr>
			<tr>
				<td>내용</td>
				<td>${boardVO.contents}</td>
			</tr>
	</table>
	
	<button onclick="location.href='boardList.do'">목록으로</button>
	<button onclick="location.href='boardDelete.do?seq=${boardVO.seq}'">삭제</button>
	<button onclick="location.href='boardUpdateView.do?seq=${boardVO.seq}'">수정</button>
	
	<script type="text/javascript">
	</script>
</body>
</html>
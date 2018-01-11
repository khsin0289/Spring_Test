<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 상세화면</title>
</head>
<body>
<h1>게시판 상세화면</h1>

<h1>BOARD</h1>
	로그인한 아이디 : ${sessionScope.loginUser.id}
		<table id="BoardTable">
			<tr>
				<td>게시물 번호</td>
				<td>제목</td>
				<td>내용</td>
			</tr>
			<tr>
				<td>${boardVO.seq}</td>
				<td>${boardVO.subject}</td>
				<td>${boardVO.contents}</td>
			</tr>
	</table>
	
	<button onclick="location.href='boardList.do'">목록으로</button>
	<button onclick="location.href='boardDelete.do?seq=${boardVO.seq}'">삭제</button>
	
	<script type="text/javascript">
	</script>
</body>
</html>
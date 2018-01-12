<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>
</head>
<body>
<!-- header.jsp -->
<jsp:include page="../template/header.jsp"/>

	<form id="boardForm" action="/ryan/board/boardWrite.do"  method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="4" cols="50" name="contents"></textarea></td>
			</tr>
		</table>
	</form>
	<input type="button" onclick="save_btn()" value="저장하기">
	<input type="button" onclick="location.href='boardList.do'"value="뒤로가기">
	
	<script type="text/javascript">
		function save_btn(){
		    alert('저장성공');
		    document.getElementById("boardForm").submit();
		}
	</script>
<!-- Footer -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>
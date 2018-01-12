<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인한 아이디 : ${sessionScope.loginUser.id}
	<form id="updateForm" action="/ryan/board/boardUpdate.do?seq=${boardVO.seq}"  method="post">
		<table>
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject" value="${boardVO.subject}"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><textarea rows="4" cols="50" name="contents">${boardVO.contents}</textarea></td>
			</tr>
		</table>
	</form>
	<input type="button" onclick="save_btn()" value="수정한 내용 저장하기">
	<input type="button" onclick="location.href='boardDetailView.do?seq=${boardVO.seq}'"value="뒤로가기">
	
	<script type="text/javascript">
		function save_btn(){
		    alert('저장성공');
		    document.getElementById("updateForm").submit();
		}
	</script>
</body>
</html>
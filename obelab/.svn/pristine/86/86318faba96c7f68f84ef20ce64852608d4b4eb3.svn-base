<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>insertOne</h1>
	<form name="frmInsert">
		email : <input type="text" name="doc_email" value="">
		pw : <input type="text" name="doc_pw" value="">
		last : <input type="text" name="doc_last_name" value="">
		first : <input type="text" name="doc_first_name" value="">
		tel : <input type="text" name="doc_tel" value="">
		department : <input type="text" name="doc_department" value="">
		
		<button onclick="javascript:goInsert()">등록시작</button>
		<input type="reset" value="다시작성">
	</form>
	
	<a href="./">돌아가기</a>
	
	<script type="text/javascript">
		function goInsert() {
			var inFrm = document.frmInsert;
			inFrm.method = "post";
			inFrm.action = "/obelab/test/insertDoc";
			inFrm.submit();
		}
	</script>
</body>
</html>
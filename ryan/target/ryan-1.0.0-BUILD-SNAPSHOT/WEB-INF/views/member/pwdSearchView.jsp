<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>
<script type="text/javascript">

</script>

</head>
<body>
	<div id="container">
		<div class="section_title"><h1>	<span>비밀번호 찾기</span></h1></div>
		<div style="text-align: center; margin-bottom: 100px;">
			<form class="form-inline" style="width: 50%;">
				<table border="1" cellspacing="0" style="width: 100%;">
					<tr>
						<td>
							<dl style="margin-right: 40px;">
								<strong>비밀번호 찾기</strong>
								<div>
									<label for="exampleInputName2">email : </label>
									<input type="text" name="email1" id="exampleInputName2" placeholder="asd" onkeypress="if(event.keyCode==13){searchEnterKey();}">@
									<label for="exampleInputName2"></label>
									<input type="text" name="email2" id="exampleInputName2" placeholder="naver.com"  onkeypress="if(event.keyCode==13){searchEnterKey();}">
								</div>
								<button onclick="javascript:pwdSearch();">찾기</button>
							</dl>
						</td>
					</tr>
				</table>
			</form>
			<form style="margin-top: 50px;" id="searchPwdForm">
				<div>
					<label for="exampleInputName2" >아이디</label>
					<input type="text"  name="searchResultPwd" id="exampleInputName2" readonly>
					<button  id="moveLoginBtn"><a href="login.do">로그인 화면으로</a></button>
				</div>
			</form>
		</div>
	</div>

</body>
</html>
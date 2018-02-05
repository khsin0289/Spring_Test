<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>비밀번호 찾기</title>

<script type="text/javascript">

	function search(){
		if((pwsearch.id.value!=null)&&(pwsearch.email1.value!=null)){
			pwsearch.submit();
		}else if(pwsearch.id.value==null) {
			alert("아이디를 입력하세요.")
		}else if(pwsearch.email.value==null) {
			alert("이메일주소를 입력하세요.")
		}
	}
	
	function showMsg(m){
		if(m==0){
		}else if(m==1){
			alert("입력하신 정보가 등록하신 정보와 다릅니다.");
			window.open("searchpw.do","_self", "" );
		}
	}
	
	function login(){
		window.open("login.do","_self","");
	}

</script>

</head>
<body>
<!-- <h2 align="center">비밀번호 찾기</h2>
<div align="center">
<p >아이디와 이메일 주소를 입력해 주세요.</p>
<form action="sendpw.do" name="pwsearch" method="post" >
	<table border="1" >
		
		<tr>
			<td>아이디</td>
			<td>e-mail</td>
		</tr>
		<tr>
			<td><input type="text" name="id"/></td>
			<td><input type="text" name="email1" />@<input type="text" name="email2" /></td>
		</tr>
		<tr align="center">
			<td colspan="2"><input type="button" value="비밀번호 찾기 " onclick="search()" /></td>
			
		</tr>
	</table>

</form>
</div> 
<p align="center">로그인 페이지로 가시려면 <a href="javascript:login()">로그인페이지</a>를 클릭하세요.</p> -->
	<div id="container">
		<div class="section_title"><h1>	<span>비밀번호 찾기</span></h1></div>
			<form style="width: 100%;" action="emailAuth.do">
				<table border="1" cellspacing="0" style="width: 100%;">
					<tr>
						<td>아이디
							<input type="text" name="id" onkeypress="if(event.keyCode==13){searchEnterKey();}">
						</td>
					<tr>
						<td>이메일
							<input type="text" name="email1" onkeypress="if(event.keyCode==13){searchEnterKey();}">@
							<input type="text" name="email2" onkeypress="if(event.keyCode==13){searchEnterKey();}">
							<input type="submit" value="메일 보내기" >
						</td>
					</tr>
				</table>
			</form>
			<button  id="moveLoginBtn"><a href="login.do">로그인 화면으로</a></button>
	</div>

</body>
</html>
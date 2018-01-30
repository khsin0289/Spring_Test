<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>
<script
  src="http://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  
<script type="text/javascript">
	// 아이디 찾기
	function idSearch(){
		console.log($('#email1').val() + $('#email2').val());
		 $.ajax({
			url: "/ryan/member/idSearch.do",
			method:"POST",
			async:true,
			data:{
				email1: $('#email1').val(),
				email2: $('#email2').val()
			},
			success: function(data) {
				alert("성공" + data);
				console.log(data.memberVO);
				if(data.memberVO == null){
					alert("email주소 입력이 올바르지 않습니다.");
				}else{
					$("#findId").val(data.memberVO.id);
				}
			}
		});
	} 
	//엔터키 이벤트
	function searchEnterKey(){
		$('#searchBtn').trigger('click');
	}
</script>
</head>

<body>
	<div id="container">
		<div class="section_title"><h1>	<span>아이디 찾기</span></h1></div>
		<div style="text-align: center; margin-bottom: 100px;">
			<form style="width: 50%;">
				<table border="1" cellspacing="0" style="width: 100%;">
					<tr>
						<td>
							<dl style="margin-right: 40px;">
								<strong>아이디 찾기</strong>
								<div>
									<label for="">email : </label>
									<input type="text" name="email1" id="email1" placeholder="asd" onkeypress="if(event.keyCode==13){searchEnterKey();}">@
									<label for="exampleInputName2"></label>
									<input type="text" name="email2" id="email2" placeholder="naver.com"  onkeypress="if(event.keyCode==13){searchEnterKey();}">
								</div>
								<button type="button" onclick="idSearch();">찾기</button>
							</dl>
						</td>
					</tr>
				</table>
			</form>
			<form style="margin-top: 50px;" id="searchPwdForm">
				<div>
					<label for="" >아이디</label>
					<input type="text"  name="searchResultId" id="findId" readonly>
					<button  id="moveLoginBtn"><a href="login.do">로그인 화면으로</a></button>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
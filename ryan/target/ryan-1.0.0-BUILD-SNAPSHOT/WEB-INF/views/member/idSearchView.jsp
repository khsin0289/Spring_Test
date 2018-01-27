<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>아이디 찾기</title>

<script type="text/javascript">
	// 아이디 찾기
	function emailCheck(){
		$.ajax({
			url: "/ryan/member/idSearch.do",
			method:"POST",
			async:true,
			data:{
				email1: $("input[email1=email1]").val(),
				email2: $("input[email2=email2]").val()
			},
			success: function(data) {
				if(data.memberVO == null){
					alert("email주소 입력이 올바르지 않습니다.");
				}else{
					$("input[name=searchResultId]").val(data.memberVO.id);
				}
			}
			
		});
	}
	</script>
</head>

<body>
	<div id="container">
		<h1><span>아이디 찾기</span></h1>
		<form style=" margin-top:49px;" class="form-inline">
			<table style="width: 100%;">
				<tr>	
					<td>
						<strong>이메일 인증</strong>본인 명의의 이메일로 본인 인증합니다.
						<div>
							<label for="inputPassword2" class="sr-only">email</label>
							<input type="text" name="email1" id="email1" placeholder="이메일입력" >@
							<input type="text"  name="email2" id="email2" placeholder="naver.com" >
						</div>
						<button type="button" name="emailConfirm" onclick="javascript:confirm_MailSend();">인증메일전송</button>
						<span id = "confirmSpan" style="display: none">
							<input type="text" name = "confirm" id = "confirm" placeholder="인증번호를 입력" >
						</span>
						<span id="confirmCheck"></span>
						<input type="hidden" name ="hidConfirm" id= "hidConfirm">
					</td>
				</tr>
			<p>본인 인증은 반드시 회원님 명의로 된 이메일로 이용해주세요. 타인의 개인정보를 도용하여 가입할 경우 향후 적발 시 서비스 이용제한 및 법적 제제를 받으실 수 있습니다.</p>
			</table>
		</form> 
		<a href="javascript:emailCheck();">완료</a>
	</div>

	<div class="tooltip">인증번호가 오지 않나요?
		<span class="tooltiptext">Friends가 발송한 메일이 스팸 메일로 분류된 것은 아닌지 확인해 주세요. 스팸 메일함에도 메일이 없다면, 다시 한 번 '인증번호 받기'를 눌러주세요.</span>
	</div>
	
	<form id="searchIdForm">
		<div class="form-group">
			<div>
				<label for="exampleInputName2" id="searchId">찾은 아이디</label>
				<input type="text" name="searchResultId" id="exampleInputName2" readonly placeholder="이메일 인증후 확인이 가능">
				</div>
			</div>
	</form>
</body>
</html>
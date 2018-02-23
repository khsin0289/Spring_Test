<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>OBELAB</title>
		
		<!-- LOGIN FORM STYLE -->
		<link rel="stylesheet" href="/obelab/resources/css/_login.css">
		<!-- FONT STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_font.css">
	    <!-- COLOR CODE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_colorCode.css">
		<!-- PLACEHORDER STYLE -->
	    <link rel="stylesheet" href="/obelab/resources/css/_placeholder.css">
	    
	</head>
	<script  src="http://code.jquery.com/jquery-3.3.1.js"  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="  crossorigin="anonymous"></script>
	
<script type="text/javascript">
	function goInsert() {
		var form=document.frmInsert;

		/* if(!/^[가-힣a-zA-Z]+$/.test(form.doc_first_name.value)){
			alert('한글과 영문만 사용가능');
			return false;
		} */

		if(form.doc_first_name.value == ""){
			alert("first_name 입력해주세요");
			form.doc_first_name.focus();
			return false;
			
		} else if(form.doc_last_name.value.length==0){
			alert("last_name 입력해주세요");
			form.doc_last_name.focus();
			return false;
			
		} else if(form.doc_email.value.length==0){
			alert("email을 입력해주세요");
			form.doc_email.focus();
			return false;
			
		} else if(form.doc_pw.value=="") {
			alert("비밀번호 입력해주세요");
			form.doc_pw.focus();
			return false;
			
		} else if(form.doc_pw2.value=="") {
			alert("비밀번호 확인해주세요");
			form.doc_pw2.focus();
			
		} else if(form.doc_pw.value != form.doc_pw2.value){
			alert("비밀번호가 일치하지 않습니다.");
			form.doc_pw2.value="";
			form.doc_pw2.focus();
			return false;
			
		}else if(form.doc_tel.value=="") {
			alert("전화번호 입력해 주세요.");
			form.doc_tel.focus();
			return false;
			
		} else if(form.doc_department.value=="") {
			alert("부서 입력해 주세요.");
			form.doc_department.focus();
			return false;
			
		} else {
			alert("회원가입 성공");
			var inFrm = document.frmInsert;
			inFrm.method = "post";
			inFrm.action = "/obelab/login/insertDoctor";
			inFrm.submit();
		}
	}

	//이메일 전송버튼 / 유효성검사 + 메일인증번호 발송
	$(document).ready(function(){
		var text = "";
	    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
	    for( var i=0; i < 6; i++ ){
	        text += possible.charAt(Math.floor(Math.random() * possible.length));
		}
	    console.log("dd   :" +text );
		
 		$( "#checkMailPw" ).on( "click", function() {
			var checkAuthNum = $("#checkAuthNum").val(); //input 값
			if(checkAuthNum != text){
				alert("인증번호가 틀립니다.")
			}else if(checkAuthNum == null){
				alert("인증번호를 입력해주세요");
			}else{
				alert(text +"  :  "+ checkAuthNum);		
				alert("인증완료");
				document.getElementById('checkAuthNum').value = '';
				document.getElementById('checkAuthNum').setAttribute('disabled', '');
			}
		});
		
		$("#sendMailBtn").on("click",function(){
		// 이메일 인증 난수발생 영문대문자 + 숫자
		var sendMailBtn = document.getElementById('sendMailBtn');
	    sendMailBtn.setAttribute('disabled', '');
		var value = $("#doc_email").val();
		var checkAuthNum = $("#checkAuthNum").val();
			if(value != ""){
				$.ajax({
					url: "emailChk",
					method:"POST",
					async:true,
					data:{
						doc_email : value,
						authNum : text
					},
					success : function(data){
						if(data.doctorBean == null){ 
							alert("사용가능한 이메일 주소입니다. 인증번호를 발송합니다.");
							console.log(text);
							
							document.getElementById('doc_email').setAttribute('disabled', '');
						}else{ 
							alert("이미 사용중인 이메일 주소입니다.");
							sendMailBtn.removeAttribute('disabled');
						} 
					} 
				});
			}else{
				alert("이메일을 입력해주세요d");
				sendMailBtn.removeAttribute('disabled');
			}
		});
	});

</script>

	<body>
		<section class="non-top-middle-l">
		<img src="/obelab/resources/image/logo/logo.png" class="logo-img">
		<form name="frmInsert">
			<div class="login-card padding-bottom-40 padding-top-40 login-card-width border-shadow-gray">
				<h4>Name</h4>
				<input type="text" name="doc_first_name" class="login-card-input-133x42-font-14" placeholder="First Name">
				<input type="text" name="doc_last_name" class="login-card-input-133x42-font-14" placeholder="Last Name">
				
				<h4>Email</h4>
				<input type="button" id="sendMailBtn" name="sendMailBtn" class="login login-sm-btn" value="인증">
				<input type="email" id="doc_email" name="doc_email" class="login-card-input-205x42-font-14" placeholder="Email@obelab.com">
				
				<input type="button" id="checkMailPw" name="checkMailPw" class="login login-sm-btn" value="확인">
				<input type="text" id="checkAuthNum" name="checkMail" class="login-card-input-140x42-font-14">
				<br><br><br>
				<h4>Password</h4>
				<input type="password" name="doc_pw" class="login-card-input-274x42-font-16">
				
				<h4>Confirm Password</h4>
				<input type="password" name="doc_pw2" class="login-card-input-274x42-font-16">
				
				<h4>Phone</h4>
				<input type="text" id="doc_tel" name="doc_tel" class="login-card-input-274x42-font-14" placeholder="000-0000-0000">
				
				<h4>Department</h4>
				<input type="text" id="doc_department" name="doc_department" class="login-card-input-274x42-font-14" placeholder="Department">
				
			</div>
			<input type="button" name="signOn" class="login login-submit" value="Sign on" onclick="goInsert()">
		</form>
		</section>
	</body>
</html>
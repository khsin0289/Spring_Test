<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<script  src="http://code.jquery.com/jquery-3.3.1.js"  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="  crossorigin="anonymous"></script>
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
	<script type="text/javascript">
		function sendPw() {
			var form=document.findpwForm;
			
			var text = "";
		    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
		    for( var i=0; i < 6; i++ ){
		        text += possible.charAt(Math.floor(Math.random() * possible.length));
			}
		    console.log("dd   :" +text );
			// 이메일 인증 난수발생 영문대문자 + 숫자
			var doc_email = $("#doc_email").val();
				if(doc_email != ""){
					$.ajax({
						url: "sendPw",
						method:"POST",
						async:true,
						data:{
							doc_email : doc_email,
							authNum : text
						},
						success : function(data){
							alert("임시비밀번호 전송 완료");
							var fpwFrm = document.findpwForm;
							fpwFrm.submit();
						} 
					});
				}else{
					alert("이메일을 입력해주세요");
				}
		}
	</script>
	<body>
		<section class="non-top-middle-sm">
		<img src="/obelab/resources/image/logo/logo.png" class="logo-img">
		<div class="login-card padding-bottom-20 padding-top-40 login-card-width border-shadow-gray">
			<form name="findpwForm">
				<h4>Name</h4>
				<input type="text" id="doc_first_name" name="doc_first_name" class="login-card-input-133x42-font-14" placeholder="First Name">
				<input type="text" id="doc_last_name" name="doc_last_name" class="login-card-input-133x42-font-14" placeholder="Last Name">
				<h4>ID</h4>
				<input type="text" id="doc_email" name="doc_email" class="login-card-input-274x42-font-14" placeholder="Email@obelab.com">
				<input type="button"  class="login login-submit" value="임시 비밀번호 발급" onclick="sendPw()">
			</form>
		</div>
		</section>
		
	
	</body>
</html>
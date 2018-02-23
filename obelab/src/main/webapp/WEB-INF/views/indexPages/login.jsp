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
	<body>
		
		<section class="non-top-middle-sm">
		<img src="/obelab/resources/image/logo/logo.png" class="logo-img">
		<form action="${pageContext.request.contextPath}/logout" method="POST">
			<div class="login-card padding-bottom-20 padding-top-40 login-card-width border-shadow-gray">
				<input type="email" name="" class="login-card-input-274x42-font-14" placeholder="Email@obelab.com">
				<input type="password" name="" class="login-card-input-274x42-font-14" placeholder="Password">
				<input type="submit" name="login" class="login login-submit" value="Sign in">
				<div class="login-help">
					<a href="/obelab/login/check" >Sign on</a> | <a href="/obelab/login/findpw" >Forgot Password</a>
				</div>
			</div>
		</form>
		</section>
		<input type="button" name="adminLogin" class="login login-submit" value="Admin Login" onclick="adminLogin()">
		<input type="button" name="doctorLogin" class="login login-submit" value="Doctor Login" onclick="doctorLogin()">
<!-- 		<br> -->
<!-- 		<span class="NB-Ex">나눔ExtraBold</span>&nbsp;&nbsp;<span>Class Name : NB-Ex</span><br> -->
<!-- 		<span class="NB-B">나눔Bold</span>&nbsp;&nbsp;<span>Class Name : NB-B</span><br> -->
<!-- 		<span class="NB-R">나눔Regular</span>&nbsp;&nbsp;<span>Class Name : NB-R</span><br> -->
<!-- 		<span class="NB-L">나눔Light</span>&nbsp;&nbsp;<span>Class Name : NB-L</span><br> -->
<!-- 		<span class="CR-Ex">칸다라ExtraBold</span>&nbsp;&nbsp;<span>Class Name : CR-Ex</span><br> -->
<!-- 		<span class="CR-B">칸다라Bold</span>&nbsp;&nbsp;<span>Class Name : CR-B</span><br> -->
<!-- 		<span class="CR-R">칸다라Regular</span>&nbsp;&nbsp;<span>Class Name : CR-R</span><br> -->
<!-- 		<span class="CR-L">칸다라Light</span>&nbsp;&nbsp;<span>Class Name : CR-L</span><br> -->
<!-- 		<span class="H-Ex">헬베티카ExtraBold</span>&nbsp;&nbsp;<span>Class Name : H-Ex</span><br> -->
<!-- 		<span class="H-B">헬베티카Bold</span>&nbsp;&nbsp;<span>Class Name : H-B</span><br> -->
<!-- 		<span class="H-R">헬베티카Regular</span>&nbsp;&nbsp;<span>Class Name : H-R</span><br> -->
<!-- 		<span class="H-L">헬베티카Light</span>&nbsp;&nbsp;<span>Class Name : H-L</span><br> -->
		<script type="text/javascript">
			function adminLogin() {
				location.href="/obelab/login/admin";
			}
			
			function doctorLogin() {
				location.href="/obelab/login/doctor?doc_num=3";
			}
		</script>
		<%-- 페이지 알림 (존재할 경우에만 작동) --%>
		<script type="text/javascript">
			var msg = "${msg}";
			if(msg != "") {
				alert(msg);
				msg == ""; 
			}
		</script>
	</body>
</html>
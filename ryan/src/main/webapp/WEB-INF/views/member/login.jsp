<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<title>로그인</title>
</head>
<body>

	<h1>로그인 페이지</h1>
	
<!-- 로그인 Form -->	
	<div class="" align="center">
		<form method="post" name="loginForm" action="/ryan/member/login.do">
			<div class="box">
				<table>
					<tr>
						<td>
							<input type="text" id="id" name="id" placeholder="아이디" onkeypress="if(event.keyCode==13){loginEnterKey();}" autofocus>
						</td>
					</tr>
					<tr>
						<td>
							<input type="password" id="pwd" name="pwd" placeholder="비밀번호"  onkeypress="if(event.keyCode==13){loginEnterKey();}" autofocus>
						</td>
					</tr>
				</table>
	
			<input type="submit" value="Login" class="loginBtn" id="loginBtn" onclick="">
		    <p><span class="idSave"><input type="checkbox" id="idSave"><label for="">아이디 저장</label></span></p>
			</div>
	
		<hr>
		<div class="findUserInfo">
			<a href="/ryan/member/idSearchView.do">아이디 찾기</a> | <a href="/ryan/member/pwdSearchView.do" id="pwdSearch">비밀번호 찾기</a> | <a href="memberEnrollView.do">회원가입</a> | <a href="../view/mainView.do">메인으로</a>
		</div>
		</form >
	</div>
	
	
	
	
	
	<!-- 페이스북 로그인 -->
	<div id="fb-root"></div>
	<script>
		(function(d, s, id) {
			var js, fjs = d.getElementsByTagName(s)[0];
			if (d.getElementById(id)) return;
			js = d.createElement(s); js.id = id;
			js.src = 'https://connect.facebook.net/ko_KR/sdk.js#xfbml=1&version=v2.11&appId=108033466553883';
			fjs.parentNode.insertBefore(js, fjs);
		}(document, 'script', 'facebook-jssdk'));
	</script>
	<div class="fb-login-button" data-max-rows="1" data-size="large" data-button-type="login_with" data-show-faces="false" data-auto-logout-link="true" data-use-continue-as="false"></div>
	<!-- 페이스북 로그인 -->
	
<script type="text/javascript">
/* $(document).ready(function(){
	// 아이디 저장
	var value = localStorage.getItem("id");  //웹저장소에 키에 해당하는 데이터 가져옴.
		if(value != null){          // 데이터가 존재하면
			$("#id").attr("value", value);   // 아이디 input box에 데이터 뿌려줌
	     	$('#idSave').attr('checked', true);  // checkBox에 check 해줌
	   }
	   
	   $('.loginBtn').on('click',function(){
	      if($('#idSave').is(":checked")){ 
	         //로그인 버튼 클릭 시 아이디저장 체크박스에 체크가 되어 있는지 확인
	         localStorage.setItem("id",$("#id").val()); 
	         // 체크되어 있으면 아이디 스토리지에 저장해줌
	      }else{ 
	        localStorage.removeItem("id"); 
	      //체크되어 있지 않으면 스토리지에 저장된 데이터 삭제
	      }
	      // 로그인
	      $.ajax({
	          url: "/loginCheck.do",
	          method:"POST",
	          async:true,
	          data:{
	             id: $("#id").val(),
	             pwd: $("#pwd").val()
	          },
	          error: function(error){
	          },
	          success: function(data) {
	             if(data.loginMsg=="main"){
	            	 alert("로그인 성공");
	            	 location.href="../view/mainView.do"
	             }else if(data.loginMsg=="admin"){
	            	 alert("관리자 로그인");
	                location.href="/friends/member/adminIndexView.do"
	             }else{
	            	 alert("올바른 값을 입력해주세요");
	                 $("#id").val("");
	                 $("#pwd").val("");
	                 $("#id").focus();
	             }
	          }
	          
	       });
	    });
	}); 
	// 엔터키 이벤트
	function loginEnterKey(){
	   $('.loginBtn').trigger('click');
	} */
</script>

<jsp:include page="../template/footer.jsp"/>
</body>
</html>
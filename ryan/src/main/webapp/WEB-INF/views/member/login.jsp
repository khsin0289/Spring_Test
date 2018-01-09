<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
		<form method="post" name="loginForm" >
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
	
			<input type="button" value="Login" class="loginBtn" id="loginBtn" onclick="">
		    <p><span class="idSave"><input type="checkbox" id="idSave"><label for="">아이디 저장</label></span></p>
			</div>
	
		<hr>
		<div class="findUserInfo">
			<a href="/friends/member/idSearchView.do" id="idSearch">아이디 찾기</a> | <a href="/friends/member/pwdSearchView.do" id="pwdSearch">비밀번호 찾기</a> | <a href="memberEnrollView.do">회원가입</a>
		</div>
		</form >
	</div>


<script type="text/javascript">
$(document).ready(function(){
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
	          url: "loginCheck",
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
	            	 location.href="/ryan/index.jsp"
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
	}
</script>
</body>
</html>
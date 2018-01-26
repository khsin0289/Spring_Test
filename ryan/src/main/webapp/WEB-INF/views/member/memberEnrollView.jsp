<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>

<body>
<h1>회원가입</h1>

	<!-- enrollForm -->
	<form method="post" name="memberEnrollForm" action="/ryan/member/memberEnroll.do" style=" width: 50%;" enctype="multipart/form-data">
		<!-- id -->
		<div>
			<label for="inputId">아이디</label>
			<div>
	            <input type="text" class="" id="inputId" name="id" placeholder="아이디">
	            <input type="button" class="" id="idCheck" name="idCheck"  value="중복확인" onclick="">
            	<span id="spn"></span> 
            </div>
        </div>
        
        <!-- password -->
        <div>
        	<label for="inputPassword">비밀번호</label>
          	<div>
          		<input type="password" class="form-control" id="inputPassword" name="pwd" placeholder="비밀번호">
          	</div>
        </div>
        
        <!-- password2 -->
        <div>
        	<label for="inputPassword2" >비밀번호 확인</label>
          	<div >
          		<input type="password" id="inputPassword2" placeholder="비밀번호 확인">
          	</div>
        </div>
        
        <!-- name -->
        <div>
        	<label for="inputName">이름</label>
          	<div>
          		<input type="text" id="inputName" name="name" placeholder="이름">
          	</div>
        </div>
        
        <!-- tel -->
        <div>
        	<label for="inputPhone" >연락처</label>
          	<div class="col-sm-7">
          		<input type=text class="form-control" id="inputPhone" name="tel" placeholder="핸드폰번호">
           	 	<small class="text-muted"></small>
          	</div>
        </div>
        
        <!-- birth -->
        <div>
        	<label for="inputYear">생년월일</label>
          	<span>
	          	<span>
		          	<input type=text id="inputYear" name="birth" placeholder="년">
	          	</span>
          	</span>
          	<span>
	          	<span>
		          	<input type=text id="inputMonth" placeholder="월">
	          	</span>
          	</span>
	        <span >
	          	<span>
		          	<input type=text style="width:70px" class="form-control" id="inputDay" placeholder="일">
	          	</span>
	        </span>
        </div>
        
        
        <!-- 이메일 -->
        <div>
			<label for="inputEmail">Email</label>
            	<input type="text" class="inputEmail" name="email1">@
            	<input type="text" class="inputEmail" name="email2">
            	<input type="button" value="이메일 인증">
        </div>
        
        <!-- 프로필사진 -->
        <div >
        	<label for="inputProfile">프로필사진</label>
          	<div >
          		<input type="file" id="inputProfile" name="uploadImg">
          	</div>
        </div>
        
        <!-- 주소  -->
        <label for="inputAddress">주소</label>
		<input type="text" id="sample6_postcode" class="inputAddress" name="zipcode" placeholder="우편번호">
		<input type="button" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
		<input type="text" id="sample6_address" class="inputAddress" name="address1" placeholder="주소">
		<input type="text" id="sample6_address2" class="inputAddress" name="address2"placeholder="상세주소">
				
		<div class="form-group row">
			<div>
				<button type="submit" id="">가입완료</button>
				<input type="button" value="메인으로" onclick="location.href='../view/mainView.do'">
			</div>
		</div>
		
	</form>
<!-- end form -->



<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
// 다음주소 API Start
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수
                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }
                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
// 다음주소 API End

// 아이디 중복체크
$(document).ready(function(){
	$("#idCheck").on("click",function(){
		var value = $("#inputId").val();
		$.ajax({
			url: "idCheck.do",
			method:"GET",
			async:true,
			data:{
				id : $("#inputId").val()
			},
			success : function(data){
				if(data.memberVO == null){ 
					$("#spn").text("사용가능한 아이디 입니다.");
				}else{ 
					$("#spn").text("이미 사용중인 아이디 입니다.."); 
					$("#id").text(""); 
					$("#id").focus(); 
				} 
			} 
		});
	});
});
</script>

</body>
</html> 
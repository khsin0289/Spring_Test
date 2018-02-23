<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<div class="center-sort bg-color-ffffff">
			<c:if test="${ autoLogOut != null }">
				<jsp:include page="${ autoLogOut }"></jsp:include>
			</c:if>
			<c:if test="${ editConfirm != null }">
				<jsp:include page="${ editConfirm }"></jsp:include>
			</c:if>
			<c:if test="${ deleteConfirm != null }">
				<jsp:include page="${ deleteConfirm }"></jsp:include>
			</c:if>
			<div class="in-top-middle-l">
			<form>
				<div class="login-card padding-bottom-10 padding-top-10  in-login-card-width border-gray border-shadow-gray">
					<section class="align-right">
						<input type="button" name="docEditBtn" id="docEditBtn" class="circle-edit-btn">
						<label><span onclick="editUserInfo()"></span></label>
					</section>
					<h4>Name</h4>
					<input id="firstName" type="text" name="" class="login-card-input-133x42-font-14" placeholder="First Name" readonly>
					<input id="lastName" type="text" name="" class="login-card-input-133x42-font-14" placeholder="Last Name" readonly>
					
					<h4>Email</h4>
					<input type="button" id="sendMailBtn" name="sendMailBtn" class="login login-sm-btn" value="인증" readonly>
					<input id="registerEmail" type="email" name="" class="login-card-input-205x42-font-14" placeholder="Email@obelab.com" readonly>
					
					<input type="button" id="checkMailPw" name="checkMailPw" class="login login-sm-btn" value="확인" readonly>
					<input id="checkMail" type="text" name="" class="login-card-input-140x42-font-14" readonly>
					<br><br><br>
					<h4>Password</h4>
					<input id="password" type="password" name="" class="login-card-input-274x42-font-16" readonly>
					
					<h4>Confirm Password</h4>
					<input id="confirmPassword" type="password" name="" class="login-card-input-274x42-font-16" readonly>
					
					<h4>Phone</h4>
					<input id="phone" type="email" name="" class="login-card-input-274x42-font-14" placeholder="000-0000-0000" readonly>
					
					<h4>Department</h4>
					<input id="department" type="text" name="" class="login-card-input-274x42-font-14" placeholder="Department" readonly>
					
				</div>
				<div id="bottom-btn-area" class="button-center-sort height-60 display-none">
					<div class="color-btn blue-ok-btn-sm" data-toggle="modal" data-target="#user-edit-confirm" data-dismiss="modal">
						<div class="NB-R">OK</div>
					</div>
					<div class="color-btn white-cancel-btn-sm" onclick="editCancel()">
						<div class="NB-R">CANCEL</div>
					</div>
				</div>
			</form>
			</div>
		</div>
		<script type="text/javascript">
		function editUserInfo() {
			var inputTags = document.getElementsByTagName('input');
// 			console.log(inputTags);
			for(var i=0; i<inputTags.length; i++) {
				if(inputTags[i].getAttribute('type') === 'text') {
					inputTags[i].removeAttribute('readonly');
				}
			}
			document.getElementById('sendMailBtn').disabled = false;
			document.getElementById('checkMailPw').disabled = false;
// 			document.getElementById('docEditBtn').disabled = true;
			document.getElementById('bottom-btn-area').style.display = 'block';
			document.getElementById('firstName').focus();
		}
		
		function editCancel() {
			var inputTags = document.getElementsByTagName('input'); 
			console.log(inputTags);
			for(var i=0; i<inputTags.length; i++) {
				if(inputTags[i].getAttribute('type') === 'text') {
					inputTags[i].setAttribute('readonly', '');
				}
			}
			document.getElementById('sendMailBtn').disabled = true;
			document.getElementById('checkMailPw').disabled = true;
// 			document.getElementById('docEditBtn').disabled = false;
			
			document.getElementById('bottom-btn-area').style.display = 'none';
		}
		
		<!-- SEND MAIL -->
		document.getElementById('sendMailBtn').addEventListener('click', function() {
			alert('aa');
		});
		</script>
	</body>
</html>
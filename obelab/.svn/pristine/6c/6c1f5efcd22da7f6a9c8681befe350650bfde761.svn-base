<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		
		<div class="modal fade" id="user-info-form">
			<div class="modal-dialog-high">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<section class="in-top-middle-l">
							<div class="center-sort bg-color-ffffff">
								
								<div class="in-top-middle-l">
								<form>
									<div class="login-card padding-bottom-20 padding-top-20  in-login-card-width border-gray border-shadow-gray">
										<section class="align-right">
											<input type="button" name="editBtn" id="editBtn" class="circle-edit-btn">
											<label><span onclick="editUserInfo()"></span></label>
											
											<input type="button" name="deleteBtn" id="deleteBtn" class="circle-delete-btn">
											<label><span data-toggle="modal" data-target="#user-delete-confirm"></span></label>
										</section>
										<h4>Name</h4>
										<input type="text" name="firstName" placeholder="First Name">
										<input type="text" name="lastName" placeholder="Last Name">
										
										<h4>Email</h4>
										<input type="button" name="sendMailBtn" class="login login-sm-btn" value="인증">
										<input type="email" name="registerEmail" placeholder="Email@obelab.com">
										
										<input type="button" name="checkMailPw" class="login login-sm-btn" value="확인">
										<input type="text" name="checkMail">
										<br><br><br>
										<h4>Password</h4>
										<input type="password" name="password">
										
										<h4>Confirm Password</h4>
										<input type="password" name="password">
										
										<h4>Phone</h4>
										<input type="email" name="phone" placeholder="000-0000-0000">
										
										<h4>Department</h4>
										<input type="text" name="department" placeholder="Department">
										
									</div>
									<div id="bottom-btn-area" class="button-center-sort display-none">
										<div class="color-btn blue-ok-btn" data-toggle="modal" data-target="#user-auto-logout" data-dismiss="modal">
											<div class="NB-R">OK</div>
										</div>
										<div class="color-btn white-cancel-btn" onclick="editCancel()">
											<div class="NB-R">CANCEL</div>
										</div>
									</div>
								</form>
								</div>
							</div>
								<input type="button" id="nonCheck" class="login non-check" value="Next">
								<input type="button" id="checkNext" class="login check-ok" value="Next" data-toggle="modal" data-target="#patient-info" data-dismiss="modal">
							</section>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
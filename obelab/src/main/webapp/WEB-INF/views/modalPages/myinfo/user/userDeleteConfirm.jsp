<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<!-- USER INFO DELETE CONFIRM MODAL -->
		<div class="modal fade" id="user-delete-confirm">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal">&times;</button>
							<h4 class="modal-title NB-B">Sign Out Confirm</h4>
						</div>
						<div class="modal-body">
							<div class="info-text"><h3>삭제하시겠습니까?</h3></div>
						</div>
						<div class="modal-footer">
							<div class="color-btn blue-ok-btn" data-toggle="modal" data-target="#user-auto-logout" data-dismiss="modal">
								<div class="NB-R">OK</div>
							</div>
							<div class="color-btn white-cancel-btn" data-dismiss="modal">
								<div class="NB-R">CANCEL</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		<!-- USER INFO DELETE CONFIRM MODAL END -->
	</body>
</html>
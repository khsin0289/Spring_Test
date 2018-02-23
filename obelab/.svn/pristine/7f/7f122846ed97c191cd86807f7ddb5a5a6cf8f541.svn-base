<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<!-- BASIC MODAL -->
		<div class="modal fade" id="basic-modal-ok">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header-basic">
						<button id="ok-basic-close" type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 id="ok-basic-modal-title" class="modal-title NB-B">Sign Out Confirm</h4>
					</div>
					<div class="modal-body">
						<div id="ok-basic-modal-body" class="modal-body-basic-text NB-R font-color-505050">
							수정할 경우 계정이 비활성화 됩니다.<br>
							그래도 수정하시겠습니까?
						</div>
						<input type="hidden" id="ok-woring-about" value="--">
					</div>
					<div class="modal-footer">
						<div id="ok-basic-modal-ok-btn" class="color-btn blue-ok-middle-btn" data-dismiss="modal">
							<div class="NB-R">OK</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			<!-- OK BUTTON CLICK EVENT -->
			document.getElementById('ok-basic-modal-ok-btn').addEventListener('click', function() {
				var work = document.getElementById('ok-woring-about').value;
				console.log(work);
				var link = document.location.href;
				console.log(link);
				if (link.includes('doctor')) {
// 					if (work === 'logout') {
// 						location.href='/obelab/logout';
// 					}
					location.href='/obelab/doctor/'+work;
				}
			});
			
			<!-- CLOSE BUTTON CLICK EVENT -->
			document.getElementById('ok-basic-close').addEventListener('click', function() {
				document.getElementById('ok-basic-modal-title').innerHTML = "";
		    	document.getElementById('ok-basic-modal-body').innerHTML = "";
		    	document.getElementById('ok-woring-about').value = "";
			});
			
		</script>
		
		<!-- BASIC MODAL END -->
	</body>
</html>
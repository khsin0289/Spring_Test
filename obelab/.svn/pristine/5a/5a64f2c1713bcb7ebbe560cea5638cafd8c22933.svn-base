<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<!-- BASIC MODAL -->
		<div class="modal fade" id="basic-modal-ok-cancel">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header-basic">
						<button id="ok-cancel-basic-close" type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 id="ok-cancel-basic-modal-title" class="modal-title NB-B">----</h4>
					</div>
					<div class="modal-body">
						<div id="ok-cancel-basic-modal-body" class="modal-body-basic-text NB-R font-color-505050">
							--
						</div>
						<input type="hidden" id="ok-cancel-woring-about" value="--">
					</div>
					<div class="modal-footer">
						<div id="ok-cancel-basic-modal-ok-btn" class="color-btn blue-ok-btn" data-dismiss="modal">
							<div class="NB-R">OK</div>
						</div>
						<div id="ok-cancel-basic-modal-cancel-btn" class="color-btn white-cancel-btn" data-dismiss="modal">
							<div class="NB-R">CANCEL</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript">
			document.getElementById('ok-cancel-basic-modal-ok-btn').addEventListener('click', function() {
				var work = document.getElementById('ok-cancel-woring-about').value;
				console.log(work);
				if (work === 'signout') {
					location.href='/obelab/'
				}
			});
			
			document.getElementById('ok-cancel-basic-modal-cancel-btn').addEventListener('click', function() {
				document.getElementById('ok-cancel-basic-modal-title').innerHTML = "";
		    	document.getElementById('ok-cancel-basic-modal-body').innerHTML = "";
		    	document.getElementById('ok-cancel-woring-about').value = "";
			});
			document.getElementById('ok-cancel-basic-close').addEventListener('click', function() {
				document.getElementById('ok-cancel-basic-modal-title').innerHTML = "";
		    	document.getElementById('ok-cancel-basic-modal-body').innerHTML = "";
		    	document.getElementById('ok-cancel-woring-about').value = "";
			});	
			
		</script>
		<!-- BASIC MODAL END -->
	</body>
</html>
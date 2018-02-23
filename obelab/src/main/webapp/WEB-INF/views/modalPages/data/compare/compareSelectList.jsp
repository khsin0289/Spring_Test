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
		<div class="modal fade" id="sel-compare-list">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title NB-B">Choice Compare Data</h4>
					</div>
					<div class="modal-body">
						<div class="modal-list-scroll">
							<ul class="list-group list-unstyled">
								<li><a class="list-group-item" href="#">2018-02-08 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item" href="#">2018-02-10 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item active" href="#">2018-02-12 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item" href="#">2018-02-14 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item" href="#">2018-02-16 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item" href="#">2018-02-18 00:00:00 / N-Baek / 1-2-3-1 </a>
								<li><a class="list-group-item" href="#">2018-02-20 00:00:00 / N-Baek / 1-2-3-1 </a>
							</ul>
						</div>
					</div>
					<div class="modal-footer">
						<div class="color-btn blue-ok-btn" data-toggle="modal" data-target="#compare-result" data-dismiss="modal">
							<div class="NB-R">OK</div>
						</div>
						<div class="color-btn white-cancel-btn" data-dismiss="modal">
							<div class="NB-R">CANCEL</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<div class="modal fade" id="sel-compare">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title NB-B">Choice Compare Data</h4>
					</div>
					<div class="modal-body">
						<div class="color-btn white-btn" data-toggle="modal" data-target="#sel-compare-list" data-dismiss="modal">
							<div class="modal-btn-text-main NB-R">ㅇㅇㅇ이전 데이터</div>
						</div>
						<div class="color-btn white-btn" data-toggle="modal" data-target="#compare-result" data-dismiss="modal">
							<div class="modal-btn-text-main NB-R">ㅇㅇㅇ 평균 데이터</div>
						</div>
						<div class="color-btn white-btn" data-toggle="modal" data-target="#compare-result" data-dismiss="modal">
							<div class="modal-btn-text-main NB-R">전체 평균 데이터</div>
							<div class="modal-btn-text-sub NB-R">(해당 ID의 소유데이터기준)</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</body>
</html>
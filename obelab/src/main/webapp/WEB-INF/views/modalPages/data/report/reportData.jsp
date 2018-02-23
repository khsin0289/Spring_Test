<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<div class="modal fade" id="report-data">
			<div class="modal-dialog-middle">
				<div class="modal-content">
					<div class="modal-body">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<div class="center-sort-modal-report NB-R">
							<div class="center-head-sort-report">
								<div class="center-left-sort-report">
									<span class="info-text">Info</span>
									<div class="info-div-report">
										<table class="table-info">
											<thead class="thead-info">
												<th class="th-info" rowspan="2" colspan="2">홍길동</th>
												
											</thead>
											<tbody>
												<tr>
													<td>나이</td><td>11</td>
												</tr>
												<tr>					
													<td>Category&nbsp;&nbsp;(Task)</td><td>N-Back&nbsp;&nbsp;(1-2-3-1)</td>
												</tr>
												<tr>
													<td>검사일자</td><td>2018-02-16 00:00:00</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
								<div class="center-right-sort-report">
									<span class="info-text">Opinion</span>
									<div>
										<textarea rows="" cols="40" class="textarea-report"></textarea>
									</div>
								</div>
							</div>
							<div class="center-head-sort-report">
								<div class="text-border"><span class="info-text-font">Time Series Graph</span></div>
								<div class="align-center">
									<img src="/obelab/resources/image/test/report-img1.png">
								</div>
							</div>
							<div class="center-head-sort-report">
								<div class="text-border"><span class="info-text-font">Activation Map</span></div>
								<div class="align-center">
									<img src="/obelab/resources/image/test/report-img2.png">
								</div>
							</div>
							<input type="button" class="color-btn blue-ok-large-btn" value="OK" data-dismiss="modal">
						</div>
					</div>
				</div>
			</div>
		</div>
		
	</body>
</html>
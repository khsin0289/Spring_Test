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
		<section class="center-left-sort NB-R">
<!-- 		<a href="/obelab/doctor/data-compare">compare</a> -->
		<span class="info-text">Info</span>
		<div class="info-div">
			<table class="table-info">
				<thead class="thead-info">
					<th class="th-info" rowspan="2" colspan="2">홍길동</th>
					
				</thead>
				<tbody>
					<tr>
						<td>나이</td><td>11</td>
					</tr>
					<tr>					
						<td>Category</td><td>N-Back</td>
					</tr>
					<tr>
						<td>Task</td><td>1-2-3-1</td>
					</tr>
					<tr>
						<td>검사일자</td><td>2018-02-16 00:00:00</td>
					</tr>
					<tr>
						<td>메모</td><td><div class="info-text-memo">가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하가나다라마바사아자차카타파하</div></td>
					</tr>
				</tbody>
			</table>
		</div>
		<input type="button" name="report" class="color-btn blue-btn" value="REPORT" data-toggle="modal" data-target="#report-data">
		<input type="button" name="compare" class="color-btn white-btn" value="COMPARE" data-toggle="modal" data-target="#sel-compare">
		<c:if test="${ compare != null }">
			<jsp:include page="${ compare }"></jsp:include>
		</c:if>
		<c:if test="${ compareList != null }">
			<jsp:include page="${ compareList }"></jsp:include>
		</c:if>
		<c:if test="${ compareResult != null }">
			<jsp:include page="${ compareResult }"></jsp:include>
		</c:if>
		<c:if test="${ report != null }">
			<jsp:include page="${ report }"></jsp:include>
		</c:if>
		</section>
	</body>
</html>
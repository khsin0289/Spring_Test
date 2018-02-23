<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:if test="${ addDvcModal != null }">
			<jsp:include page="${ addDvcModal }"></jsp:include>
		</c:if>
			
		<div class="center-sort">
			<section class="table-info-text align-left display-block">Device</section>
			<div class="btn-line align-right">
				<img class="table-btn-img" src="/obelab/resources/image/table/del-btn-img.png">
			</div>
			<section class="center-bottom-sort">
	<!-- 	<input type="search" class="light-table-filter" data-table="order-table" placeholder="Filter"> -->
	
				<table class="table table-hover">
					<thead style="background-color: ">
						<tr id="">
							<th>ㅁ</th>
							<th>No</th>
							<th class="table-colum-sort-desc">Serial No.</th>
							<th>Validate</th>
							<th>Alias</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>N20910293</td>
							<td>valid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>2</td>
							<td>N20910293</td>
							<td>invalid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>3</td>
							<td>N20910293</td>
							<td>valid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>4</td>
							<td>N20910293</td>
							<td>invalid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>5</td>
							<td>N20910293</td>
							<td>valid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>6</td>
							<td>N20910293</td>
							<td>invalid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>7</td>
							<td>N20910293</td>
							<td>valid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>8</td>
							<td>N20910293</td>
							<td>invalid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>9</td>
							<td>N20910293</td>
							<td>valid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>10</td>
							<td>N20910293</td>
							<td>invalid</td>
							<td>집 근처 있는 조용한 카페의 2층 서랍</td>
						</tr>
					</tbody>
				</table>
		
			<input id="userClick" type="button" name="patient-info" class="color-btn blue-btn" value="ADD DEVICE" data-toggle="modal" data-target="#add-device">
			</section>
		</div>
		
		<!-- TABLE FILTER EVENT JAVASCRIPT -->
		<script src="/obelab/resources/js/__tableFilter.js"></script>
		
		<script type="text/javascript">
		<!-- SECTION CHECK -->
		// 해당 section이 어떤 section인지 확인!
		var sectionTags = document.getElementsByTagName('section');
		var infoText;
		for(var i=0; i<sectionTags.length; i++) {
// 			console.log(sectionTags[i]);
// 			console.log(sectionTags[i].classList);
			if(sectionTags[i].classList.contains('table-info-text')) {
// 				console.log(sectionTags[i].innerHTML);
				infoText = sectionTags[i].innerHTML.toLowerCase();
				break;
			}
		}
		console.log(infoText);
		<!-- SECTION CHECK END -->
		
		<!-- DEVICE TABLE FILTER EVENT -->
		if(infoText === 'device') {
			var thead = document.getElementsByTagName('thead');
			console.log(thead);
			
			var tr = thead[0].children;
			console.log(tr);
			
			var th = tr[0].children;
			console.log(th);
			console.log(th.length);
			
			var filterList = [];
			
			for(var i=0; i<th.length; i++) {
				console.log(th[i].classList);
				if(th[i].classList.length !== 0) {
					filterList.push(th[i]);
				}
				continue;
			}
			
			console.log(filterList);
			console.log(filterList.length);
			
			const serialFilter = filterList[0];
			
			serialFilter.addEventListener('click', function() {
				if(serialFilter.classList.contains('table-colum-sort-desc')) {
					serialFilter.classList.remove('table-colum-sort-desc');
					serialFilter.classList.add('table-colum-sort-asc');
				} else {
					serialFilter.classList.remove('table-colum-sort-asc');
					serialFilter.classList.add('table-colum-sort-desc');
				}
			});
		}
		<!-- DEVICE TABLE FILTER EVENT END -->
		
		</script>
	</body>
</html>
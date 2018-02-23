<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<div class="center-sort">
			<section class="table-info-text align-left display-block">Push</section>
			<div class="btn-line align-right">
				<img class="table-btn-img" src="/obelab/resources/image/table/del-btn-img.png">
			</div>
			<section class="center-bottom-sort">
	<!-- 	<input type="search" class="light-table-filter" data-table="order-table" placeholder="Filter"> -->
	
				<table class="table table-hover">
					<thead style="background-color: ">
						<tr id="">
							<th>ㅁ</th>
							<th class="table-colum-sort-desc">No</th>
							<th class="table-colum-sort-both">Name</th>
							<th>Contents</th>
							<th class="table-colum-sort-both">Time</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
						<tr>
							<td>ㅁ</td>
							<td>1</td>
							<td>User1</td>
							<td>User1의  N-back 데이터가 분석 완료되었습니다.</td>
							<td>2018.01.15 10:00</td>
						</tr>
					</tbody>
				</table>
			
		
			<input id="userClick" type="button" name="patient-info" class="color-btn blue-btn" value="PATIENT INFO" data-toggle="modal" data-target="#access-terms">
			</section>
		</div>
		<!-- CHECK BOX EVENT JAVASCRIPT -->
		<script src="/obelab/resources/js/__checkBoxEvent.js"></script>
		
		<!-- TABLE FILTER EVENT JAVASCRIPT -->
		<script src="/obelab/resources/js/__tableFilter.js"></script>
		
		<script type="text/javascript">
		<!-- SECTION CHECK -->
		var sectionTags = document.getElementsByTagName('section');
		var infoText;
		for(var i=0; i<sectionTags.length; i++) {
// 			console.log(sectionTags[i]);
// 			console.log(sectionTags[i].classList);
			if(sectionTags[i].classList.contains('table-info-text')) {
				console.log(sectionTags[i].innerHTML);
				infoText = sectionTags[i].innerHTML.toLowerCase();
				break;
			}
		}
		console.log(infoText);
		<!-- SECTION CHECK END -->
		
		<!-- PUSH TABLE FILTER EVENT -->
		if(infoText === 'push') {
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
			
			const noFilter = filterList[0];
			const nameFilter = filterList[1];
			const timeFilter = filterList[2];
			
			noFilter.addEventListener('click', function() {
				if(noFilter.classList.contains('table-colum-sort-desc')) {
					noFilter.classList.remove('table-colum-sort-desc');
					noFilter.classList.add('table-colum-sort-asc');
				} else if(noFilter.classList.contains('table-colum-sort-both')) {
					noFilter.classList.remove('table-colum-sort-both');
					noFilter.classList.add('table-colum-sort-desc');
				} else {
					noFilter.classList.remove('table-colum-sort-asc');
					noFilter.classList.add('table-colum-sort-desc');
				}
				if(!nameFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(nameFilter.classList);
					var classList = nameFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!timeFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(timeFilter.classList);
					var classList = timeFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
			
			nameFilter.addEventListener('click', function() {
				if(nameFilter.classList.contains('table-colum-sort-desc')) {
					nameFilter.classList.remove('table-colum-sort-desc');
					nameFilter.classList.add('table-colum-sort-asc');
				} else if(nameFilter.classList.contains('table-colum-sort-both')) {
					nameFilter.classList.remove('table-colum-sort-both');
					nameFilter.classList.add('table-colum-sort-desc');
				} else {
					nameFilter.classList.remove('table-colum-sort-asc');
					nameFilter.classList.add('table-colum-sort-desc');
				}
				if(!noFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(noFilter.classList);
					var classList = noFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!timeFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(timeFilter.classList);
					var classList = timeFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
			
			timeFilter.addEventListener('click', function() {
				if(timeFilter.classList.contains('table-colum-sort-desc')) {
					timeFilter.classList.remove('table-colum-sort-desc');
					timeFilter.classList.add('table-colum-sort-asc');
				} else if(timeFilter.classList.contains('table-colum-sort-both')) {
					timeFilter.classList.remove('table-colum-sort-both');
					timeFilter.classList.add('table-colum-sort-desc');
				} else {
					timeFilter.classList.remove('table-colum-sort-asc');
					timeFilter.classList.add('table-colum-sort-desc');
				}
				if(!noFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(noFilter.classList);
					var classList = noFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!nameFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(timeFilter.classList);
					var classList = nameFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
		}
		<!-- PUSH TABLE FILTER EVENT END -->
		</script>
		
	</body>
</html>
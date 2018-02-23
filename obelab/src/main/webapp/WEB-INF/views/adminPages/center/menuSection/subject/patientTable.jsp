<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	</head>
	<body>
		<c:if test="${ patientInfo != null }">
			<jsp:include page="${ patientInfo }"></jsp:include>
		</c:if>
		<c:if test="${ accessModal != null }">
			<jsp:include page="${ accessModal }"></jsp:include>
		</c:if>
		
		<section class="table-info-text align-left display-none">Subject</section>
		<div class="btn-line align-right">
			<img class="table-btn-img" src="/obelab/resources/image/table/del-btn-img.png">
		</div>
		<section class="center-bottom-sort">
			<table class="table table-hover">
				<thead style="background-color: ">
					<tr id="">
						<th>ㅁ</th>
						<th>No</th>
						<th class="table-colum-sort-desc">Name</th>
						<th class="table-colum-sort-both">Gender</th>
						<th class="table-colum-sort-both">Age</th>
						<th>Birth</th>
						<th>Memo</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
					<tr>
						<td>ㅁ</td>
						<td>1</td>
						<td>User1</td>
						<td>여자</td>
						<td>7</td>
						<td>2012-01-01</td>
						<td>잘하는지 지켜보았지만..</td>
					</tr>
				</tbody>
			</table>
		<input id="userClick" type="button" name="patient-info" class="color-btn blue-btn" value="PATIENT INFO" data-toggle="modal" data-target="#access-terms">
		
		</section>
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
		
		<!-- SUBJECT TABLE FILTER EVENT -->
		if(infoText === 'subject') {
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
			
			const nameFilter = filterList[0];
			const genderFilter = filterList[1];
			const ageFilter = filterList[2];
			
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
				if(!genderFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(genderFilter.classList);
					var classList = genderFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!ageFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(ageFilter.classList);
					var classList = ageFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
			
			genderFilter.addEventListener('click', function() {
				if(genderFilter.classList.contains('table-colum-sort-desc')) {
					genderFilter.classList.remove('table-colum-sort-desc');
					genderFilter.classList.add('table-colum-sort-asc');
				} else if(genderFilter.classList.contains('table-colum-sort-both')) {
					genderFilter.classList.remove('table-colum-sort-both');
					genderFilter.classList.add('table-colum-sort-desc');
				} else {
					genderFilter.classList.remove('table-colum-sort-asc');
					genderFilter.classList.add('table-colum-sort-desc');
				}
				if(!nameFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(nameFilter.classList);
					var classList = nameFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!ageFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(ageFilter.classList);
					var classList = ageFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
			
			ageFilter.addEventListener('click', function() {
				if(ageFilter.classList.contains('table-colum-sort-desc')) {
					ageFilter.classList.remove('table-colum-sort-desc');
					ageFilter.classList.add('table-colum-sort-asc');
				} else if(ageFilter.classList.contains('table-colum-sort-both')) {
					ageFilter.classList.remove('table-colum-sort-both');
					ageFilter.classList.add('table-colum-sort-desc');
				} else {
					ageFilter.classList.remove('table-colum-sort-asc');
					ageFilter.classList.add('table-colum-sort-desc');
				}
				if(!nameFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(nameFilter.classList);
					var classList = nameFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
				if(!genderFilter.classList.contains('table-colum-sort-both')) {
//	 				console.log(ageFilter.classList);
					var classList = genderFilter.classList;
					while (classList.length > 0) {
					   classList.remove(classList.item(0));
					}
					classList.add('table-colum-sort-both');
				}
			});
		}
		<!-- SUBJECT TABLE FILTER EVENT END -->
		</script>
	</body>
</html>
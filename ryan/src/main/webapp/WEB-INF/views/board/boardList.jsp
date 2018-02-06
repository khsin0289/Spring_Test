<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	<% String cp = request.getContextPath(); %> <%--ContextPath 선언 --%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board List</title>
<script src=" http://code.jquery.com/jquery-latest.min.js"></script><!-- jQuery -->
<link href="<%=cp%>/resources/bootstrap-4.0.0/css/bootstrap.min.css" rel="stylesheet"><!-- 부트스트랩 -->
<link rel='stylesheet' href='<%=cp%>/resources/css/Nwagon.css' type='text/css'><!-- 차트 css -->
<script src='<%=cp%>/resources/js/Nwagon.js'></script><!-- 차트 js -->

<style type="text/css">
.Nwagon_column .background line.h {stroke: none;}.Nwagon_column .background line.v {stroke: none;} <!-- 차트 가로세로 라인제거 -->

</style>
</head>
<body>

<!-- header.jsp 호출 -->
<jsp:include page="../template/header.jsp"/>

	<h2>Pie Chart with colorblind safe colors</h2>
	<a href="http://nuli.navercorp.com/sharing/nwagon#nWagon-chart2">차트 api doc</a>
	<div id="chart"></div>
	<h2>Column Chart</h2>
	<div id="chart8"></div>
	

	<h1>BOARD</h1>
		<table class="table table-hover">
			<tr>
				<td><input type="checkbox" name="checkAll" onclick="allChk(this)"></td>
				<td>No</td>
				<td>제목</td>
				<td>작성일</td>
			</tr>
			<c:forEach items="${boardList}" var="boardList" varStatus="status">
				<c:url var="boardCall" value="boardDetailView.do">
					<c:param name="seq" value="${boardList.seq}"/>
				</c:url>
				<fmt:formatDate var="newFormattedDateString" value="${boardList.board_enrolldate}" pattern="yyyy-MM-dd HH:mm:ss"/>
			<tr>
				<td><input type="checkbox" id="inputCheck${status.index}" name="inputCheck" value="${boardList.seq}"></td>
				<td>${boardList.seq}</td>
				<td><a href="${boardCall}">${boardList.subject}</a></td>
				<td>${newFormattedDateString}</td>
			</tr>
			</c:forEach>
		</table>
		
	<!-- 페이징처리 -->
		<div style="text-align: center;">
			<span>
				<c:if test="${currentPage <= 1}"></c:if>
				<c:if test="${currentPage > 1 }">
					<a href="/ryan/board/boardList.do?page=1&keyword=${keyword }&searchType=${searchType }" >처음</a>
					<a href="/ryan/board/boardList.do?page=${currentPage-1}&keyword=${keyword }&searchType=${searchType }">이전</a>
				</c:if>
				<c:forEach var="p" step="1" begin="${startPage }" end="${endPage }">
					<c:if test="${p ==currentPage }">
						<label class="on">${p }</label>
					</c:if>
					<c:if test="${p != currentPage }">
						<c:url var="boardList" value="boardList.do">
							<c:param name="page" value="${p }"></c:param>
							<c:param name="keyword" value="${keyword }"></c:param>
							<c:param name="searchType" value="${searchType }"></c:param>
						</c:url>
						<a href="${boardList }">${p }</a>
					</c:if>
				</c:forEach>
				<c:if test="${currentPage >= maxPage}">
				</c:if>
				<c:if test="${currentPage < maxPage}">
					<c:url var="boardList" value="boardList.do">
						<c:param name="page" value="${p }"></c:param>
						<c:param name="keyword" value="${keyword }"></c:param>
						<c:param name="searchType" value="${searchType }"></c:param>
					</c:url>
					<a href="/ryan/board/boardList.do?page=${currentPage + 1 }&keyword=${keyword }&searchType=${searchType }">다음</a>
					<a href="/ryan/board/boardList.do?page=${maxPage }&keyword=${keyword }&searchType=${searchType }">끝</a>
				</c:if>
			</span>
		</div>
		
		<!-- 검색기능 -->
		<form action="<%=cp%>/board/boardList.do" method="post">
			<table >
				<tr>
					<td >
					<select id="searchType" name="searchType" >
				    	<option value="all" selected>전체</option>
				    	<option value="subject">제목</option> 
				    	<option value="contents">내용</option>
			    	</select> 
			    	</td>
			    	<td ><input type='text' id='keyword' class="form-control" name="keyword"></td>
                	<td ><input type="submit" id='btnsearch' value="검색"></td>
				</tr>				
			</table>
		</form>
	<!-- 글쓰기 / 삭제버튼 -->
		<div>
			<input type="button" value="메인으로" onclick="location.href='../view/mainView.do'">
			<button onclick="location.href='/ryan/board/boardWriteView.do'">글쓰기</button>
			<button type="button" id='delBtn' >일괄삭제</button>
		</div>
	

<script type="text/javascript">
	// 체크박스 전체 선택
	function allChk(obj){
		var chkObj = document.getElementsByName("inputCheck");
		var rowCnt = chkObj.length - 1;
		var check = obj.checked;
		if (check) {﻿
			for (var i=0; i<=rowCnt; i++){
				if(chkObj[i].type == "checkbox"){
					chkObj[i].checked = true; 
				}
			}
		} else {
			for (var i=0; i<=rowCnt; i++) {
				if(chkObj[i].type == "checkbox"){
					chkObj[i].checked = false; 
				}
			}
	    }
	}

	// 삭제버튼 클릭
	$(function() {
		$("#delBtn").click(function(){
			var chkObj = document.getElementsByName("inputCheck");
		    var rowCnt = chkObj.length - 1;
		    var checkBoard_no = new Array();
		    var checkCount = 0;
		    for (var i=0; i<=rowCnt; i++){
		    	if($("#inputCheck"+i).is(':checked')){
		    		alert($("#inputCheck"+i+":checked").val());
		    		checkBoard_no[checkCount] = $("#inputCheck"+i+":checked").val();
		    		checkCount++;
		    	}
		    }
		    if(checkCount!=0){
		    	location.href="boardDelete.do?seq="+checkBoard_no;
		    }else{
		    	alert("삭제할 항목을 체크해주세요.");
		    }
		});
	});

	// Pie 차트
	var options = {
		'dataset': {
			title: 'Web accessibility status',
			values:[18, 12, 3, 10, 7],
			colorset: ['#56b4e9', '#e69f00', '#cc79a7', '#009e73', '#0072b2'],
			fields: ['A', 'B',  'C', 'D', 'E'] 
		},
		'donut_width' : 100, 
		'core_circle_radius':0,
		'chartDiv': 'chart',
		'chartType': 'pie',
		'chartSize': {width:500, height:300}
	};
	Nwagon.chart(options);
	
	// Coulmn 차트
	var options = {
			'legend': {
	            names: ['A','B','C','D','E','F'],
	            hrefs: []
	        },
	        'dataset': {
	            title: 'Playing time per day',
	            values: [5,7,1,3,7,3],
	            colorset: ['#56b4e9'],
	            fields:['Error']
	        },
	        'chartDiv': 'chart8',
	        'chartType': 'column',
	        'chartSize': { width: 500, height: 300 },
	        'maxValue': 10,
	        'increment': 1
		};

		Nwagon.chart(options);
</script>

<!-- Footer.jsp -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>
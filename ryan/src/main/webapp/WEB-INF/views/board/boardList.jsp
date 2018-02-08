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
<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> <!-- 구글차트 -->

<style type="text/css">
.Nwagon_column .background line.h {stroke: none;}.Nwagon_column .background line.v {stroke: none;} <!-- 차트 가로세로 라인제거 -->

<!-- 제목 마우스 오버 Css -->
.arrow_box p{display: block; padding: 1%; border: 1px solid #ccc; border-radius: 5px; }
.arrow_box {display: none; position: absolute; padding: 16px; -webkit-border-radius: 8px; -moz-border-radius: 8px; border-radius: 8px; background: #009edb; color: #fff; }
.table table-hover tr td:after {position: absolute; bottom: 100%; left: 50%; width: 0; height: 0; margin-left: -10px; border: solid transparent; 
border-color: rgba(51, 51, 51, 0); border-bottom-color: #333; border-width: 10px; pointer-events: none; content: " ";}
span:hover + p.arrow_box { display: block;}
/* .background {display:none;} */


#body_div{width:70%; margin: 0 auto;}

</style>
</head>

<body>

<!-- header.jsp 호출 -->
<jsp:include page="../template/header.jsp"/>
<!-- 구글차트  -->
	<table class="columns" style="margin:0 auto;">
      <tr>
        <td><div id="top_x_div" style="border: 1px solid #ccc"></div></td>
        <td><div id="chart_div" style="border: 1px solid #ccc"></div></td>
      </tr>
    </table>
    
<div id="body_div">
	<h1>BOARD</h1>
	<a href="http://nuli.navercorp.com/sharing/nwagon#nWagon-chart2">차트 api doc</a>
	<div id="listDiv">
		<div id="chart" style="float:left"></div>
		<div id="chart8" style="float:right"></div>
	
		<form id="example_form">
			<table class="table table-hover">
			<thead>
				<tr>
					<th><input type="checkbox" name="checkAll" onclick="allChk(this)"></th>
					<th>No</th>
					<th>제목<input type='button' id='sortSubject' value="정렬하기"></th>
					<th>작성일</th>
				</tr>
			</thead>
				<c:forEach items="${boardList}" var="boardList" varStatus="status">
					<c:url var="boardCall" value="boardDetailView.do">
						<c:param name="seq" value="${boardList.seq}"/>
					</c:url>
					<fmt:formatDate var="newFormattedDateString" value="${boardList.board_enrolldate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				<tr>
					<td><input type="checkbox" id="inputCheck${status.index}" name="inputCheck" value="${boardList.seq}"></td>
					<td>${boardList.seq}</td>
					<td><span><a href="${boardCall}">${boardList.subject}</a></span><p class="arrow_box">제목 마우스 오버시 말풍선</p></td>
					<td>${newFormattedDateString}</td>
				</tr>
				</c:forEach>
			</table>
		</form>
	</div>

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
</div>


<script type="text/javascript">
      google.charts.load('current', {'packages':['bar']});
      google.charts.setOnLoadCallback(drawStuff);

      // 컬럼차트
      function drawStuff() {
        var data = new google.visualization.arrayToDataTable([
          ['Move', 'Percentage'],
          ["King's pawn (e4)", 44],
          ["Queen's pawn (d4)", 31],
          ["Knight to King 3 (Nf3)", 12],
          ["Queen's bishop pawn (c4)", 10],
          ['Other', 3]
        ]);

        var options = {
          width: 800,
          legend: { position: 'none' },
          chart: {
            title: 'Chess opening moves',
            subtitle: 'popularity by percentage' },
          axes: {
            x: {
              0: { side: 'top', label: 'White to move'} // Top x-axis.
            }
          },
          bar: { groupWidth: "90%" }
        };

        var chart = new google.charts.Bar(document.getElementById('top_x_div'));
        // Convert the Classic options to Material options.
        chart.draw(data, google.charts.Bar.convertOptions(options));
      };
      
      
      //파이차트
      google.charts.load('current', {'packages':['corechart']});
      google.charts.setOnLoadCallback(drawChart);

      function drawChart() {

        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Pizza');
        data.addColumn('number', 'Populartiy');
        data.addRows([
          ['Pepperoni', 20],
          ['Hawaiian', 10],

        ]);

        var options = {
          title: 'Popularity of Types of Pizza',
          sliceVisibilityThreshold: .2
        };

        var chart = new google.visualization.PieChart(document.getElementById('chart_div'));
        chart.draw(data, options);
      }
    </script>

<!-- Footer.jsp -->
<jsp:include page="../template/footer.jsp"/>	
<script type="text/javascript">
	var sort = "DESC";
	$("#sortSubject").click(function(){
		sort = sort=="ASC"?"DESC":"ASC";		
		$.ajax({
			url: "/ryan/board/boardList.do",
			method:"POST",
			async:true,
			data:{
				sortSubject: sort,
			},
			success: function(data) {
				alert("성공");
				console.log(data);
				//$("#listDiv").html(data);
			}
		});
	});

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
			values:[60, 40],
			colorset: ['#56b4e9', '#e69f00', '#cc79a7', '#009e73', '#0072b2'],
			fields: ['남자', '여자'] 
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
	            names: ['10대', '20대', '30대', '40대', '50대', '60대', '70대', '80대'],
	            hrefs: []
	        },
	        'dataset': {
	            title: 'Playing time per day',
	            values: [1,3,5,9,6,4,3,5],
	            colorset: ['#56b4e9'],
	            fields:[]
	        },
	        'chartDiv': 'chart8',
	        'chartType': 'column',
	        'chartSize': { width: 500, height: 300 },
	        'maxValue': 10,
	        'increment': 1
		};

		Nwagon.chart(options);
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Board List</title>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>

<style type="text/css">
	#BoardTable{border: 1px solid black;}
	table tr td {width:10%;}
</style>

</head>
<body>
<!-- header.jsp 호출 -->
<jsp:include page="../template/header.jsp"/>

	<h1>BOARD</h1>
		<table id="BoardTable">
			<tr>
				<td><input type="checkbox" id="checkAll" name="checkAll" onclick="allChk(this)"></td>
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
	
	<div>
		<input type="button" value="메인으로" onclick="location.href='/ryan/index.jsp'">
		<button onclick="location.href='/ryan/board/boardWriteView.do'">글쓰기</button>
		<button type="button" id='delBtn' class="delectAll">일괄삭제</button>
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

</script>
</body>
</html>
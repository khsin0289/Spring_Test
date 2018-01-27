<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 글쓰기</title>

<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="../resources/editor/js/HuskyEZCreator.js" charset="utf-8"></script>
<script type="text/javascript">
	function save_btn(){
	    alert('저장성공');
	    document.getElementById("boardForm").submit();
	}
	
	// smarteditor2-2.8.2.3
	$(function(){
		// 전역변수
		var obj = [];              
		// 스마트에디터 프레임생성
		nhn.husky.EZCreator.createInIFrame({
			oAppRef: obj,
			elPlaceHolder: "editor",
			sSkinURI: "../resources/editor/SmartEditor2Skin.html",
			htParams : {
				// 툴바 사용 여부
				bUseToolbar : true,            
				// 입력창 크기 조절바 사용 여부
				bUseVerticalResizer : true,    
				// 모드 탭(Editor | HTML | TEXT) 사용 여부
				bUseModeChanger : true,
			}
		});
		
		//전송버튼
		$("#insertBoard").click(function(){
			var subject = $("input[name=subject]").val();
			var contents = document.getElementById("editor");
			//id가 smarteditor인 textarea에 에디터에서 대입
			obj.getById["editor"].exec("UPDATE_CONTENTS_FIELD", []);
			if(subject == "" || contents == null){
				alert("제목을 입력하세요");
			}else{
				alert("등록성공");
				$("#boardForm").submit();
			}
		});
	});
    


</script>

</head>
<body style="width:50%;">
<!-- header.jsp -->
<jsp:include page="../template/header.jsp"/>

	<form id="boardForm" action="/ryan/board/boardWrite.do"  method="post" enctype="multipart/form-data">
		<table style="width:100%;">
			<tr>
				<td>제목</td>
				<td><input type="text" name="subject"></td>
			</tr>
			<tr>
				<td>내용</td>
				<td>
					<textarea name="contents" id="editor" style="width: 700px; height: 400px;"></textarea>
	    			<input type="button" id="insertBoard" value="등록" />
	    			<input type="button" onclick="location.href='boardList.do'"value="뒤로가기">
				</td>
			</tr>
		</table>
	</form>


	<!-- smarteditor2-2.8.2.3 -->
	<!-- <form action="./insertBoard.do" method="post" id="insertBoardFrm" enctype="multipart/form-data">
        <textarea name="editor" id="editor" style="width: 700px; height: 400px;"></textarea>
        <input type="button" id="insertBoard" value="등록" />
    </form> -->

<!-- Footer -->
<jsp:include page="../template/footer.jsp"/>	
</body>
</html>
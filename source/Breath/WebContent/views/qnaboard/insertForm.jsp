<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 등록</title>
<script src="./js/jquery-3.6.0.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
<script src="./js/summernote/summernote-lite.js"></script>
<script src="./js/summernote/lang/summernote-ko-KR.js"></script>
<script src="./js/qnaBoard/qnaBoard.js"></script>
<link rel="stylesheet" href="./css/summernote/summernote-lite.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">
</head>
<body>

<jsp:include page="/mainHeader.jsp" flush="true"/>

   <form action="insert.qnaBoard" method="post" enctype="multipart/form-data">
      <table>
         <tr>
           <td>글번호 : </td>
           <td><input type="text" name="mem_id" value=""></td>
         </tr>
         <tr>
           <td>작성자 : </td>
         <input id="tput" type="text" placeholder="제목" name="title">
         </tr>
         <tr>
           <td>날짜</td>
         <input id="tput" type="text" placeholder="제목" name="title">
         </tr>
         <tr>
           <td>비밀번호 : </td>
           <td><input type="text" name="v_pass" value=""></td>
         </tr>
         <tr>
           <td>내용 : </td>
           <td>
             <textarea id="summernote" name="content"></textarea>
		   </td>
         </tr>
       </table>
       
       
     <input type="submit" class="btn btn-success" id="wbtn" value="등록">
     <input type="button" class="btn btn-success" id="wbtn" onclick="location.href='/Breath/List.qnaBoard'" value="취소">
   </form>
	
	
<jsp:include page="/mainFooter.jsp" flush="true"/>
	
<script>
$(document).ready(function() {
	//여기 아래 부분
	$('#summernote').summernote({
		  height: 300,                 // 에디터 높이
		  minHeight: null,             // 최소 높이
		  maxHeight: null,             // 최대 높이
		  focus: true,                  // 에디터 로딩후 포커스를 맞출지 여부
		  lang: "ko-KR",					// 한글 설정
		  placeholder: '최대 2048자까지 쓸 수 있습니다'	//placeholder 설정
	});
});
</script>
</body>
</html>
<%@page import="qnaboard.vo.qnaBoardVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	qnaBoardVO bv = (qnaBoardVO) request.getAttribute("bv");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./js/jquery-3.6.0.min.js"></script>t>
<script src="./js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<link rel="stylesheet" href="./css/main.css" />    
<script src="./js/summernote/summernote-lite.js"></script>
<script src="./js/summernote/lang/summernote-ko-KR.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js" integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js" integrity="sha512-eP6ippJojIKXKO8EPLtsUMS+/sAGHGo1UN/38swqZa1ypfcD4I0V/ac5G3VzaHfDaklFmQLEs51lhkkVaqg60Q==" crossorigin="anonymous" referrerpolicy="no-referrer"></script> 
<script defer src="./js/main.js"></script>

<title>회원정보수정</title>
</head>
<style>
.Nwrap {
	margin-top: 100px;
}
.container {
	margin-top: 50px;
}
#wbtn {
	color: white;
	background-color: #24855b;
	border: 0px;
	display: inline;
}
#tput{
	width: 800px;
}
</style>
<body>

<jsp:include page="/mainHeader.jsp" flush="true"/>

<div class="Nwrap">
  <div class="greenContainer">
    <div>
<!--       <div class="grade">트레이너</div> -->
      <div class="name">Q & A</div>
    </div>    
  </div>
</div> 


<div class="container">
	<form action="update.qnaBoard" method="post" enctype="multipart/form-data">
		<input type="hidden" name="post_num" value="<%=bv.getPost_num()%>">
		<input type="hidden" name="mem_id" value="<%=bv.getMem_id()%>">
		<input type="hidden" name="ip_add" value="<%=bv.getIp_add()%>">
		<%--  <form action="<% %>/member/update.do" method="post"> --%>
		<table class="table">
			<tr>
				<td>글 번호 :</td>
				<td><%=bv.getPost_num()%><input type="hidden" name="post_num" value="<%=bv.getPost_num()%>"></td>
			</tr>
			<tr>
				<td>작성자 :</td>
				<td><%=bv.getMem_id()%><input type="hidden" name="mem_id" value="<%=bv.getMem_id()%>"></td>
			</tr>
			<tr>
				<td>제목 :</td>
				<td><input type="text" name="title" value="<%=bv.getTitle()%>"></td>
			</tr>
			<tr>
				<td>내용 :</td>
				<td><textarea id="summernote" name="content" rows="10" cols="100"><%=bv.getContent()%></textarea></td>
			</tr>
			<tr>
				<td>비밀번호 :</td>
				<td><input type="text" name="v_pass" value="<%=bv.getV_pass()%>"></td>
			</tr>
<!-- 			<tr> -->
<!-- 			  <td>비밀글 : </td> -->
<%-- 			   <td><input type="checkbox" name="status" value="<%=bv.getStatus() %>"></td> --%>
<!-- 			</tr> -->
		</table>
		<input type="submit" class="btn btn-success" id="wbtn" value="수정">
		<input type="button" class="btn btn-success" id="wbtn" onclick="/Brearh/detail.qnaBoard'" value="취소">
	</form>
</div>	
	
	<jsp:include page="/mainFooter.jsp" flush="true"/>
	
</body>
</html>
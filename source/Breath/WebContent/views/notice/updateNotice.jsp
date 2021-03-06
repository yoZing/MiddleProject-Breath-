<%@page import="notice.vo.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	NoticeVO nv = (NoticeVO) request.getAttribute("nv");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="./js/jquery-3.6.0.min.js"></script>

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
<link rel="stylesheet" href="./css/summernote/summernote-lite.css">
<link rel="stylesheet" href="./css/bootstrap.min.css">



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


<title>???????????? ??????</title>
</head>
<body>


<jsp:include page="/mainHeader.jsp" flush="true"/>


<div class="Nwrap">
  <div class="greenContainer">
    <div>
<!--       <div class="grade">????????????</div> -->
      <div class="name">????????????</div>
    </div>    
  </div>
</div> 

<div class="container">
	<form action="/Breath/updateNotice.do" method="post">
		<table>
			<input type="hidden" name="postNum" value="<%=nv.getPostNum()%>">

			<tr>
				<input id="tput" type="text" placeholder="??????" name="title" value="<%=nv.getTitle()%>">
			</tr>

			<tr>
				<td><textarea id="summernote" name="content" rows="10" cols="100"><%=nv.getContent()%></textarea></td>
			</tr>
		</table>
		
		<br>
		
		<input type="submit" class="btn btn-success" id="wbtn" value="??????">
		<input type="button" class="btn btn-success" id="wbtn" onclick="location.href='/Breath/insertNotice.do'" value="??????">
	</form>
	
</div>


<jsp:include page="/mainFooter.jsp" flush="true"/>


	<script>
		$(document).ready(function() {
			//?????? ?????? ??????
			$('#summernote').summernote({
				height : 300, // ????????? ??????
				minHeight : null, // ?????? ??????
				maxHeight : null, // ?????? ??????
				focus : true, // ????????? ????????? ???????????? ????????? ??????
				lang : "UTF-8", // ?????? ??????
				placeholder : '?????? 2048????????? ??? ??? ????????????' //placeholder ??????
			});
		});
	</script>
</body>
</html>
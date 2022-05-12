<%@page import="trainerVideo.vo.TrainerVideoVO"%>
<%@page import="java.util.List"%>
<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	List<TrainerVideoVO> videoList = (List<TrainerVideoVO>) request.getAttribute("videoList");

	String msg = request.getParameter("msg") == null ? "" : request.getParameter("msg");
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="../../js/jquery-3.6.0.min.js"></script>
<script src="../../js/bootstrap.min.js"></script>
<script src="./video.js"></script>
<link rel="stylesheet" href="../../css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/reset-css@5.0.1/reset.min.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Nanum+Gothic:wght@400;700&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="../../css/uploadVideo.css">

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/lodash.js/4.17.21/lodash.min.js"
	integrity="sha512-WFN04846sdKMIP5LKNphMaWzU7YpMyCU245etK3g/2ARYbPK9Ub18eG+ljU96qKRCWh+quCY7yefSmlkQw1ANQ=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/gsap/3.8.0/gsap.min.js"
	integrity="sha512-eP6ippJojIKXKO8EPLtsUMS+/sAGHGo1UN/38swqZa1ypfcD4I0V/ac5G3VzaHfDaklFmQLEs51lhkkVaqg60Q=="
	crossorigin="anonymous" referrerpolicy="no-referrer"></script>

</head>
<body>
	<!-- HEADER -->
	<header>
	<div class="inner">

		<a href="/Breath/trainerHome/detail.do" class="logo"> Chloeting </a>

		<ul class="main-menu">
			<li class="item">
				<div class="item__name" id="upload">업로드</div>
			</li>
			<li class="item">
				<div class="item__name" id="update">수정</div>
			</li>
			<li class="item">
				<div class="item__name" id="delete">삭제</div>
			</li>
		</ul>
	</div>
	</header>
	<section class="main-intro">
	<div class="inner">
		<%
			int videoSize = videoList.size();
			if (videoSize > 0) {
				for (int i = 0; i < videoSize; i++) {
		%>
		<div class="video">
			<video preload="metadata" controls width="500px" height="300px"> 
				<source src="../../upload_files/<%=videoList.get(i).getSaveNm()%>#t=1.5" type="video/mp4"></video>
		</div>
		<br>
		<div class="content">
			<span><%=videoList.get(i).getContent()%></span>
		</div>
		<%
			}
			} else {
		%>
		<div>비디오 정보가 없습니다.</div>
		<%
			}
		%>
	</div>
	</section>
	<script>
	  $('video').on('click', function() {
		  
		  if(this.requestFullScreen){ 
			  this.requestFullScreen(); 
		  } else if(this.webkitRequestFullScreen){ 
			  this.webkitRequestFullScreen(); 
		  } else if(this.mozRequestFullScreen) {
			  this.mozRequestFullScreen();
		  }
	  });
  </script>
</body>
</html>

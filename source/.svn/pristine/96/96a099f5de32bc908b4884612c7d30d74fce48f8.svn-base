<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberVO vo = (MemberVO) session.getAttribute("memVO");

	String msg = request.getParameter("msg") == null ? "" : request.getParameter("msg");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



	<form action="delete.Member" method="post">
	<input type="hidden" name="memId" value="<%=vo.getMemId() %>">
		<table>
			<tr>
				<td>비밀번호</td>
				<td><input type="password" value="" name="memPass"></td>
				
			</tr>
			<tr>
				<td>비밀번호확인</td>
				<td><input type="password" value="" name="passCorrect"></td>
			</tr>
		</table>
		<input type="submit" value="회원탈퇴">
	</form>
<%
	if(msg.equals("성공")){
%>
	<script>
		alert('정상적으로 처리되었습니다.');
	</script>
<%
	}
%>
</body>
</html>
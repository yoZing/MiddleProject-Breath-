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

	<form action="updatePass" method="post">
	<input type="hidden" value="<%=vo.getMemId() %>" name="memId">
	<input type="hidden" value="<%=vo.getMemPass() %>" name="memPass">
		<table>
			<tr>
				<td>현재 비밀번호</td>
				<td><input type="password" value="" name="presentMemPass"></td>
			</tr>
			<tr>
				<td>변경할 비밀번호</td>
				<td><input type="password" value="" name="changeMemPass"></td>
			</tr>
			<tr>
				<td>비밀번호 확인</td>
				<td><input type="password" value="" name="correctChangeMemPass"></td>
			</tr>
			
		</table>
		<input type="submit" value="전송">
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
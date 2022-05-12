<%@page import="member.vo.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%	
	String msg = request.getParameter("msg") == null ? "" : request.getParameter("msg");

	MemberVO vo = (MemberVO) session.getAttribute("memVO");
%>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="updateMypage" method="post">
	<input type="hidden" name="memPass" value="<%=vo.getMemPass() %>">
		<table border = "1">
			<tr>
				<td>I D : </td>
				<td><input type="text" name="memId" value="<%=vo.getMemId() %>" ></td>
			</tr>
			<tr>
				<td>이 름 : </td>
				<td><input type="text" name="memNm" value="<%=vo.getMemNm() %>" ></td>
			</tr>
			<tr>
				<td>비밀번호확인 : </td>
				<td><input type="text" name="memPassCorrect" value="" ></td>
			</tr>
			<tr>
				<td>별명 : </td>
				<td><input type="text" name="nickName" value="<%=vo.getNickName() %>"></td>
			</tr>
			<tr>
				<td>주소 : </td>
				<td><input type="text" name="memAdd" value="<%=vo.getMemAdd() %>"></td>
			</tr>
			<tr>
				<td>e-mail : </td>
				<td><input type="text" name="email" value="<%=vo.getEmail() %>"></td>
			</tr>
			<tr>
				<td>핸드폰번호 : </td>
				<td><input type="text" name="hp" value="<%=vo.getHp() %>"></td>
			</tr>
		</table>
		<input type="submit" value="수정" onclick="location.reload()">
	</form>
<%
	if(msg.equals("성공")){
%>
	<script>
		alert('정상적으로 처리되었습니다.');
	</script>
<%
	}else if(msg.equals("실패")){
%>
	<script>
		alert('변경에 실패하였습니다.');
	</script>
<% 
	}
%>
</body>
</html>

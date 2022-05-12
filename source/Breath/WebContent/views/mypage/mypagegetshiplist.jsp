<%@page import="member.vo.MemberVO"%>
<%@page import="membership.vo.MembershipVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%	
	List<MembershipVO> msv = (List<MembershipVO>) request.getAttribute("msv");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<table border="1">
	<caption>멤버쉽 조회</caption>
		<tr>
			<th>구매자</th>
			<th>트레이너명</th>
			<th>시작시간</th>
			<th>끝나는시간</th>
			<th>상태값?</th>
		</tr>
<%
	for(int i=0; i<msv.size(); i++){
		MembershipVO ms= msv.get(i);
%>
		<tr>
			<td><%=ms.getClientId() %></td>
			<td><%=ms.getTrainerId() %></td>
			<td><%=ms.getStartDt() %></td>
			<td><%=ms.getEndDt() %></td>
			<td><%=ms.getStatus() %></td>
		</tr>
<%
	}
%>
	</table>
</body>
</html>
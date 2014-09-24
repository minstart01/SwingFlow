<%@page import="java.text.DecimalFormat"%>
<%@page import="Movie.DTO.ReserveList"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style>
table{
	font-size: 12px;
}
td{
	padding-left: 7px;
}
</style>
</head>

<body>
<%
	MovieDAO dao = new MovieDAO();
	ReserveList dto = new ReserveList();
	DecimalFormat fm = new DecimalFormat("#,###");
	
	String id = request.getParameter("id");
	int rno = Integer.parseInt(request.getParameter("rno"));
	
	dto = dao.ListReserveDetail(id, rno);
	
	String str = dto.getPlayTime();
	String PlayTime = str.substring(0, 13) + " " + str.substring(17,22);
	String gwan = str.substring(13,16);
	
%>
<table border="1" cellspacing="0" cellpadding="6">

	<tr>
		<td width="100">영화제목</td>
		<td width="180"><%=dto.getmName() %></td>
	</tr>
	<tr>
		<td>관림일</td>
		<td><%= PlayTime %></td>
	</tr>
	<tr>
		<td>영화관</td>
		<td><%= dto.gettName() %></td>
	</tr>
	<tr>
		<td>예매번호</td>
		<td><%= dto.getrNo() %></td>
	</tr>
	<tr>
		<td>좌석번호</td>
		<td><%=gwan %> / <%= dto.getsNumber() %></td>
	</tr>
	<tr>
		<td>결제금액</td>
		<td><%= fm.format(dto.gettPrice()) %>원</td>
	</tr>
	<tr>
		<td>예매일</td>
		<td><%= dto.getMrDate() %></td>
	</tr>
</table>
</body>
</html>

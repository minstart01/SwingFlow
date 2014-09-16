<%@page import="Movie.DAO.MovieDAO"%>
<%@page import="Movie.DTO.ListMovies"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<table border="1">
<tr>
	<td>번호</td>
	<td>영화</td>
	<td>극장</td>
	<td>곤람일</td>
	<td>요금정보</td>
</tr>
<%
	ArrayList<ListMovies> list = new ArrayList<ListMovies>();
	MovieDAO dao = new MovieDAO();
	ListMovies dto = new ListMovies();
	
	list = dao.MovieList();
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
%>
<tr>
	<td><%= dto.getMiNo() %></td>
	<td><%= dto.getmName() %></td>
	<td><%= dto.gettName() %></td>
	<td><%= dto.getmStart() + "~" + dto.getmEnd() %></td>
	<td><%= dto.getcTeen() + "원 " + dto.getcAdult() + "원" %></td>
</tr>
<%} %>
</table>
<a href="InsertMovie.jsp">등록하기</a>
</body>
</html>
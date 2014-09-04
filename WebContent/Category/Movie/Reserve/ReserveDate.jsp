<%@page import="Movie.DTO.MovieInsert"%><%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	MovieInsert dto = new MovieInsert();
	
	String mName = request.getParameter("mName");
	String tName = request.getParameter("tName");
	
	dto = dao.SearchDay(mName, tName);
	String Start = dto.getmStart();
	if(("0").equals(Start.substring(0, 1))){
		Start = Start.substring(1, 2);
	}else{} 
%>
<ul>
	<li><%=Start %></li>
	<li><%=dto.getmEnd() %></li>
</ul>
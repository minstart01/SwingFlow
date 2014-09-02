<%@page import="Movie.DTO.MovieInsert"%><%@page import="java.util.ArrayList"%><%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mName = request.getParameter("mName");
	MovieDAO dao = new MovieDAO();
	ArrayList<MovieInsert> list = new ArrayList<MovieInsert>();
	list = dao.SelTheater("명량", "서울", "one", "one", "one"); 
 	%>
<ul>
<% for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>
<li>2</li>
<li>3</li>
<%} %>
</ul>

<%@page import="java.util.ArrayList"%><%@page import="Movie.DTO.PlayInfo"%><%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8"   pageEncoding="UTF-8"%>
<ul>
<%
	MovieDAO dao = new MovieDAO();
	ArrayList<PlayInfo> list = new ArrayList<PlayInfo>();
	
	String mName = request.getParameter("mName");
	String tName = request.getParameter("tName");
	
	list = dao.PlayTime(mName , tName);
	for(int i=0;i<list.size();i++){
		PlayInfo dto = new PlayInfo();
		dto = list.get(i);
%>
	<li><%=dto.getpArea() + "관 " + dto.getpPlayStart() %></li>
	<%} %>
</ul>
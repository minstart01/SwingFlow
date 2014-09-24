<%@page import="java.text.SimpleDateFormat"%><%@page import="java.util.Date"%><%@page import="Movie.DTO.MovieInsert"%><%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	MovieInsert dto = new MovieInsert();
	
	String mName = request.getParameter("mName");
	String tName = request.getParameter("tName");
	
	dto = dao.SearchDay(mName, tName);
	String Start = dto.getmStart();
	
	Date date = new Date();
	
	SimpleDateFormat sdf = new SimpleDateFormat("MM-dd");
	
	int today = Integer.parseInt((sdf.format(date)).substring(3,5));
	int iStart = Integer.parseInt(Start.substring(3,5));
	
	if(today>iStart && today==iStart){
		Start = Integer.toString(today);
		if(("0").equals(Start.substring(0, 1))){
			Start = Start.substring(1, 2);
		}else{} 
	}else{
		Start = Integer.toString(iStart);
		if(("0").equals(Start.substring(0, 1))){
		Start = Start.substring(1, 2);
	}else{} 
	}
%>
<ul>
	<li><%=Start %></li>
	<li><%=dto.getmEnd() %></li>
</ul>
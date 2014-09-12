<%@page import="Movie.DAO.MovieDAO"%><%@page import="Movie.DTO.Charge"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	Charge dto = new Charge();
	
	String mName = request.getParameter("mName");
	String tName = request.getParameter("tName");
	
	dto = dao.ChargeInfo(mName, tName);
	int teen = dto.getcTeen();
	int adult = dto.getcAdult();
	String grade = dto.getsGrade();
%>
<ul>
<li><%=teen %></li>
<li><%=adult %></li>
<li><%=grade %></li>
</ul>
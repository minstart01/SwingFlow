<%@page import="Movie.DTO.TheaterSit"%><%@page import="Movie.DAO.TheaterDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	TheaterDAO dao = new TheaterDAO();
	TheaterSit dto = new TheaterSit();
	int ScreenNo = Integer.parseInt(request.getParameter("timeon"));
	String tName = request.getParameter("tName");
	dto = dao.seatinfo(ScreenNo, tName);
%>
<ul>
	<li><%=dto.gettRow() %></li>
	<li><%=dto.gettColumn() %></li>
</ul>
<%@page import="Movie.DAO.MovieDAO"%>
<%@page import="Movie.DTO.SitInfo"%><%@page import="java.util.ArrayList"%><%@page import="Movie.DTO.TheaterSit"%><%@page import="Movie.DAO.TheaterDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	TheaterDAO dao = new TheaterDAO();
	TheaterSit dto = new TheaterSit();
	int ScreenNo = Integer.parseInt(request.getParameter("timeon"));
	String tName = request.getParameter("tName");
	String mName = request.getParameter("mName");
	String time = request.getParameter("time");
	
	dto = dao.seatinfo(ScreenNo, tName);
	
	ArrayList<SitInfo> list = new ArrayList<SitInfo>();
	MovieDAO dao1 = new MovieDAO();
	list =  dao1.OverSeat(mName, tName, time);
	SitInfo dto1 = new SitInfo();
%>
<ul>
	<li><%=dto.gettRow() %></li>
	<li><%=dto.gettColumn() %></li>
	<%
		for(int i=0;i<list.size();i++){
			dto1 = list.get(i);
	%>		
	<li><%=dto1.getsNumber()%></li>
	<%}
	%>
</ul>
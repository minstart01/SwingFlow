<%@page import="Movie.DTO.TheaterSit"%>
<%@page import="Movie.DAO.TheaterDAO"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.TheaterInfo"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%
	 TheaterDAO dao = new TheaterDAO();
	int su = dao.InsertTheater(dto);
	out.print(su); 
	
	int length = Integer.parseInt(request.getParameter("screenno"));
	int tRow = 0;
	int tColumn = 0;
	int tTotalSit = 0;
	
	for(int i=1;i<=length;i++){
		tRow = Integer.parseInt(request.getParameter("tRow" + i));
		tColumn = Integer.parseInt(request.getParameter("tColumn" + i));
		tTotalSit = Integer.parseInt(request.getParameter("tTotalSit" + i));
		TheaterSit dto1 = new TheaterSit(i, tRow, tColumn, tTotalSit);
		int sit = dao.TheaterSit(dto1);
	
	}
	response.sendRedirect("../MovieManage/ListMovie.jsp");
	
%>

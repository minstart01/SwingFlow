<%@page import="Movie.DTO.PlayInfo"%>
<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Movie.DTO.MovieInfo"%>
<%@page import="Movie.DTO.Charge"%>
<%@page import="Movie.DAO.MovieDAO"%>



<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.MovieInfo"></jsp:useBean>
<jsp:useBean id="dto1" class="Movie.DTO.MovieInsert"></jsp:useBean>
<jsp:useBean id="dto3" class="Movie.DTO.Charge"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<jsp:setProperty property="*" name="dto1"/>
<jsp:setProperty property="*" name="dto3"/>
<%
	MovieDAO dao = new MovieDAO();
	
	int info = dao.MovieInfo(dto); 
	int insert = dao.MovieInsert(dto1);
	int play=0;
	
	int length = Integer.parseInt(request.getParameter("playinfo"));

	for(int i=1;i<=length;i++){
		int pArea = Integer.parseInt(request.getParameter("pArea" + i));
		String pPlayStart = request.getParameter("pPlayStart" + i);
	
		PlayInfo dto2 = new PlayInfo(pArea, pPlayStart);
	
		play = dao.PlayInfo(dto2);

		}
	

	int charge = dao.Charge(dto3);

	


	response.sendRedirect("ListMovie.jsp");
	
%>
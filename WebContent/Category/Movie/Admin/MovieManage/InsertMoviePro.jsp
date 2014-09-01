<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Movie.DTO.MovieInfo"%>
<%@page import="Movie.DAO.MovieDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <jsp:useBean id="dto" class="Movie.DTO.MovieInfo"></jsp:useBean>
<jsp:useBean id="dto1" class="Movie.DTO.MovieInsert"></jsp:useBean>
<jsp:useBean id="dto2" class="Movie.DTO.PlayInfo"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<jsp:setProperty property="*" name="dto1"/>
<jsp:setProperty property="*" name="dto2"/> --%>

<%
	out.print(request.getParameter("nu"));
/* 	out.print(dto.getmName() + dto.getmPoster() + dto.getmDirector() + dto.getmActor() + dto.getmTime() + dto.getmPlayDate() + dto.getmGenre()); */
/* 	 MovieDAO dao = new MovieDAO();

	
 	int info = dao.MovieInfo(dto); 
	int insert = dao.MovieInsert(dto1);
	int play = dao.PlayInfo(dto2);

	
  out.print(info);  
	out.print(insert); 
	out.print(play);  */
	
%>
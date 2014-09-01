<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Movie.DTO.MovieInfo"%>
<%@page import="Movie.DAO.MovieDAO"%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.MovieInfo"></jsp:useBean>
<jsp:useBean id="dto1" class="Movie.DTO.MovieInsert"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<jsp:setProperty property="*" name="dto1"/>

<%
	MovieDAO dao = new MovieDAO();
	int info = dao.MovieInfo(dto);

	
	out.print(info);
	
%>
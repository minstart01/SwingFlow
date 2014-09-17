<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	int miNo = Integer.parseInt(request.getParameter("miNo"));
	int mCode = Integer.parseInt(request.getParameter("mCode"));
	dao.DeleteMovie(miNo);
	dao.DeleteMovieInfo(mCode);
	response.sendRedirect("ListMovie.jsp");
%>
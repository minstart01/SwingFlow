<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	int miNo = Integer.parseInt(request.getParameter("miNo"));
	dao.DeleteMovie(miNo);
	response.sendRedirect("ListMovie.jsp");
%>
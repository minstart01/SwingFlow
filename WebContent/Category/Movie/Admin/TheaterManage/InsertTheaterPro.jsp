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

%>
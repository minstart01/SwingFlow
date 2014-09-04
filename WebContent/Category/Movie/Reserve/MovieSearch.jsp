<%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	MovieDAO dao = new MovieDAO();
	String MovieSearch = request.getParameter("MovieSearch");
	String mName = dao.SearchMovie(MovieSearch);
	String PosterImg = dao.PosterIMG(mName);
	/* out.print("<li class='sel_movie movie_off'>" + mName + "<input type='hidden' class='posterimg' value='" + mName +"'></li>"); */
%>
<ul>
<li><%=mName%></li>
<li><%=PosterImg%></li>
</ul>
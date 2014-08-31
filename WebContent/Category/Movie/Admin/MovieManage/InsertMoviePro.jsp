<%@page import="java.sql.Date"%>
<%@page import="java.util.List"%>
<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Common.DAO.MyBatis"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- <%

	String mName = request.getParameter("mName");
	String mPoster = request.getParameter("mPoster");
	String mGenre = request.getParameter("mGenre");
	String mDirector = request.getParameter("mDirector");
	String mTime = request.getParameter("mTime");
	String mActor = request.getParameter("mActor");
	int sCode = Integer.parseInt(request.getParameter("sCode"));
	String mPlayDate = request.getParameter("mPlayDate");
%>
<%= mName + mPoster + mGenre + mDirector + mTime + mActor + sCode + mPlayDate %> --%>
<%= request.getParameter("mEnd") %>
</body>
</html>
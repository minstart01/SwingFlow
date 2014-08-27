<%@page import="Movie.Api.Proxy"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><%
	Proxy proxy = new Proxy();
	String mName = request.getParameter("mName");
	
	out.print(proxy.GetApiText("http://apis.daum.net/contents/movie?apikey=6080f3487be7091f1082f66fc2e62020ba90c578&q=" + mName));
%>					

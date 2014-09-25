<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();

	String gubun = request.getParameter("gubun");
	
	if(("reserve").equals(gubun)){
		response.sendRedirect("/SwingFlow/Category/Movie/Reserve/Reserve.jsp");
	}else if(("indexa").equals(gubun)){
		response.sendRedirect("/SwingFlow/Category/Airline/Index.jsp");
	}else{
 	response.sendRedirect("/SwingFlow/Category/Main/index.jsp"); 
	}
%>
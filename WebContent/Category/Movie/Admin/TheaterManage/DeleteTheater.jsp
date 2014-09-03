<%@page import="Movie.DAO.TheaterDAO"%>
<%@page import="Movie.DTO.TheaterInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
 	TheaterDAO dao = new TheaterDAO();
	try{
	int tCode = Integer.parseInt(request.getParameter("tCode"));
	int su = dao.DeleteTheater(tCode);
	}catch(Exception e){}

	
	for(int i=0;i<10;i++){
	if(request.getParameter("tchk" + i) == null){
		
	}else{
		int tCode = Integer.parseInt(request.getParameter("tchk" + i));
		int su = dao.DeleteTheater(tCode);
	}
	}
	response.sendRedirect("ListTheater.jsp");
/* 	
	try{
	out.print(Integer.parseInt(request.getParameter("tchk0")));
	out.print(Integer.parseInt(request.getParameter("tchk1")));
	}catch(Exception e){} */
%>
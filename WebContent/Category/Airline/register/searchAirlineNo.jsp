<%@page import="Airline.Airline"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
AdminDAO dao = AdminDAO.getInstance();
String aName= request.getParameter("aName");
int aCode= Integer.parseInt(request.getParameter("aCode"));
int su=0;

if(aName != null && aCode == 0){
	 su = dao.airlineIns(request.getParameter("air"));
}else{
	 su = dao.airlineNoIns(aName, aCode);
}

out.print(su);


%>
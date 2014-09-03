<%@page import="Airline.Nation"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

AdminDAO dao = AdminDAO.getInstance();
String city= request.getParameter("city");
int nCode= Integer.parseInt(request.getParameter("nCode"));
int su=0;


if(city != null && nCode == 0){
	 su = dao.nationIns(request.getParameter("nation"));
}else{
	 su = dao.cityIns(city, nCode);
}




out.print(su);


%>
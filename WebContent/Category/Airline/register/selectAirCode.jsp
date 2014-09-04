<%@page import="Airline.AirlineNo"%>
<%@page import="Airline.Airline"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.City"%><%@page import="Airline.DAO.AdminDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
int aCode =Integer.parseInt(request.getParameter("aCode")) ;
AdminDAO dao = new AdminDAO();
ArrayList<AirlineNo> aDtoL = new ArrayList<AirlineNo>();
AirlineNo airlineNo = new AirlineNo();
aDtoL = dao.airlineNoaCodeSel(aCode);

//out.print(city.getC_Code());

for(int i=0;i<aDtoL.size(); i++){
	airlineNo = aDtoL.get(i);
	out.print("<option value='"+airlineNo.getAn_Code()+"'>"+airlineNo.getAn_Name()+"</option>");

}



%>
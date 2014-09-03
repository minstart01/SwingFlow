<%@page import="Airline.AirlineNo"%>
<%@page import="Airline.Airline"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.City"%><%@page import="Airline.DAO.AdminDAO"%><%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%
 int nCode =Integer.parseInt(request.getParameter("nCode")) ;

 AdminDAO dao = AdminDAO.getInstance();
 ArrayList<City> cDtoL = new ArrayList<City>();
City city = new City();
cDtoL = dao.citynCodeSel(nCode);
city.getC_Code();
city.getC_Name();
//out.print(city.getC_Code());

for(int i=0;i<cDtoL.size(); i++){
	city= cDtoL.get(i);
	out.print("<option value='"+city.getC_Code()+"'>"+city.getC_Name()+"</option>");

}



%>
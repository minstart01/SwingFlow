<%@ page import="Airline.*"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><% 

Proxy proxy = new Proxy();
String a= request.getParameter("schDeptCityCode");
String b = request.getParameter("schArrvCityCode");
out.print(proxy.getApiText("http://openapi.airport.co.kr/service/rest/FlightScheduleList/getIflightScheduleList?ServiceKey=dWa9gQzILxEzhmx6c7R9vViA6LLIgajU4435guJrCt6%2BuwL3YdzrjHHG81YN4hOz9UVg%2FE04W%2BBg4zK%2FjNDryg%3D%3D&schDeptCityCode="+a+"&schArrvCityCode="+b));

%>

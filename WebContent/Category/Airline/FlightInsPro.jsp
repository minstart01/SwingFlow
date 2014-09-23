<%@page import="Airline.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <jsp:useBean id="dto" class="Airline.DTO.Flight"/>
    <jsp:setProperty property="*" name="dto"/>
    
    <%
    String c_name = request.getParameter("c_name");
    String c_name1 = request.getParameter("c_name1");
    
    ClientDAO dao = ClientDAO.getInstance();
    int su = dao.flightIns(dto);
    out.print(su);
    response.sendRedirect("R6_Complete.jsp");
    
    %>

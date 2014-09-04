<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:useBean id="schedule" class="Airline.Schedule"/>
<jsp:setProperty property="*" name="schedule"/>
<jsp:useBean id="adultF" class="Airline.AdultF"/>
<jsp:setProperty property="*" name="adultF"/>
<jsp:useBean id="childF" class="Airline.ChildF"/>
<jsp:setProperty property="*" name="childF"/>

<%
    AdminDAO dao = AdminDAO.getInstance();
    int su = dao.ScheduleIns(schedule)+dao.adultIns(adultF)+dao.childIns(childF);
    out.print(su);
    response.sendRedirect("Admin_insertScheduleList.jsp");
   
%>
    
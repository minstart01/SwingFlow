<%@page import="Airline.Schedule"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <jsp:useBean id="schedule" class="Airline.Schedule"/><jsp:useBean id="register" class="Airline.Register"/>
    <jsp:setProperty property="*" name="schedule"/><jsp:setProperty property="*" name="register"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminDAO dao = AdminDAO.getInstance();
int su = dao.ScheduleIns(schedule);
int su01 = dao.RegisterIns(register);
out.print(su+su01);


%>
</body>
</html>
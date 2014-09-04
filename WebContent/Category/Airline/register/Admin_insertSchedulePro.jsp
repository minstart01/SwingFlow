<%@page import="Airline.Schedule"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="adultF" class="Airline.AdultF"/>
<jsp:setProperty property="*" name="adultF" />
<jsp:useBean id="childF" class="Airline.ChildF"/>
<jsp:setProperty property="*" name="childF" />
<jsp:setProperty property="*" name="dto" />



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
AdminDAO dao = AdminDAO.getInstance();
Schedule dto = new Schedule();

int su =dao.ScheduleIns(dto)+ dao.adultIns(adultF)+dao.childIns(childF);
out.print(su);


%>
<!-- <script type="text/javascript"> -->
<%-- alert("<%=msg%>"); --%>
<%-- location.href="<%=url%>"; --%>
<!--  </script>  -->

</body>
</html>
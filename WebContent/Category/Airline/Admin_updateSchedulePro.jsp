<%@page import="Airline.Schedule"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="schedule" class="Airline.Schedule" />
<jsp:useBean id="register" class="Airline.Register" />
<jsp:useBean id="adultF" class="Airline.AdultF" />
<jsp:useBean id="childF" class="Airline.ChildF" />
<jsp:useBean id="city" class="Airline.City" />
<jsp:useBean id="flightNo" class="Airline.FlightNo" />

<jsp:setProperty property="*" name="schedule" />
<jsp:setProperty property="*" name="register" />
<jsp:setProperty property="*" name="adultF" />
<jsp:setProperty property="*" name="childF" />
<jsp:setProperty property="*" name="city" />
<jsp:setProperty property="*" name="flightNo" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Updert title here</title>
</head>
<body>
	<%	
// 	int b = Integer.parseInt(request.getParameter("a_Business"));
// out.print(b);
// int rno = Integer.parseInt(request.getParameter("rno")) ;
	/* out.print(rno); */
 AdminDAO dao = AdminDAO.getInstance();
int su = dao.ScheduleUpd(schedule)+ dao.ChildUpd(childF)+dao.adultUpd(adultF)+dao.cityUpd(city)+dao.flightNoUpd(flightNo);


out.print(su);
String msg = "";
String url="";
if(su!=0){
	msg="스케줄이 수정되었습니다!";
	url="Admin_insertScheduleList.jsp";
}else{
	msg="스케줄을 입력하세요!";
	url="Admin_updateSchedule.jsp?rno=";
} 
%>
 <script type="text/javascript">
alert("<%=msg%>");
location.href="<%=url%>";
</script>
 
</body>
</html>
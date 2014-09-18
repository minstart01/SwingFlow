<%@page import="Airline.Schedule"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	
 int s_code = Integer.parseInt(request.getParameter("s_Code"));
out.print(s_code);

 AdminDAO dao = AdminDAO.getInstance();
int su = dao.sDelete(s_code);


out.print(su);
String msg = "";
String url="";
if(su!=0){
	msg="스케줄이 삭제되었습니다!";
	url="Admin_insertScheduleList.jsp";
}
%>
  <script type="text/javascript">
alert("<%=msg%>");
location.href="<%=url%>";
</script> 

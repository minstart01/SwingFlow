<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<% 
	String Id = request.getParameter("id");
	String Pwd = request.getParameter("pwd");
	String Member="";
	if(Id.equals(Pwd)){
		session.setAttribute("MemberId", Id);
		session.setMaxInactiveInterval(5*30);
		Member = (String)session.getAttribute("MemberId");
%>		
<%=Member %>로그인<br>

<%
}else{
%>
<script>
	alert("로그인 실패");
	history.go(-1);s
</script>
	
<%
}
	
%>




</body>
</html>
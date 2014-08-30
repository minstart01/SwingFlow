<%@page import="Common.DAO.MemberDAO"%>
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
	String mId = request.getParameter("id");
	String mPwd = request.getParameter("pwd");
	
	MemberDAO dao = new MemberDAO();
	String Login = dao.LoginChk(mId, mPwd);
	String url = "";
	String Member="";
	if(Login.equals(mId)){
		session.setAttribute("MemberId", mId);
		session.setMaxInactiveInterval(60*60);
// 		Member = (String)session.getAttribute("MemberId");
		url = "/SwingFlow/Category/Main/index.jsp";
%>
<script>
	
	location.href="<%=url%>";
</script>		
<%


}else{
%>
<script>
	alert("로그인 실패");
	history.go(-1);
</script>
	
<%
}
	
%>




</body>
</html>
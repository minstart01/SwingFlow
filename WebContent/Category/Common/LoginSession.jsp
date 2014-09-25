<%@page import="Common.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true" %>
<% 
	String mId = request.getParameter("id");
	String mPwd = request.getParameter("pwd");
	
	MemberDAO dao = new MemberDAO();
	
	String Login = dao.LoginChk(mId, mPwd);
	
	String gubun = request.getParameter("gubun");
	

	String url = "";
	String Member=""; 
	if(Login.equals(mId)){
		session.setAttribute("MemberId", mId);
		session.setMaxInactiveInterval(60*60);
 		Member = (String)session.getAttribute("MemberId");
 		
 		if(("index").equals(gubun)){
 			url = "/SwingFlow/Category/Movie/Index.jsp";
 		}else if(("reserve").equals(gubun)){
 			url = "/SwingFlow/Category/Movie/Reserve/Reserve.jsp";
 		}else if(("indexa").equals(gubun)){
 			url = "/SwingFlow/Category/Airline/Index.jsp";
 		}else{
			url = "/SwingFlow/Category/Main/index.jsp";
 		}
		
%>
<script>
	
	location.href="<%=url%>";
</script>		
<%


}else{
%>
<script>
	alert("<%=Login%>");
	history.go(-1);
</script>
	
<%
}
	
%>




</body>
</html>
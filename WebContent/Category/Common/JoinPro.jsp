<%@page import="Common.DAO.MemberDAO"%>
<%@page import="org.springframework.dao.support.DaoSupport"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Common.DTO.Join"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>

<%-- <%=

"mId : " + request.getParameter("mId") + " mPwd : " + request.getParameter("mPwd") + " mName : " + request.getParameter("mName") + 
" sCode : " + request.getParameter("sCode") + " mBirth : " + request.getParameter("mBirth") + " bCode : " + request.getParameter("bCode") + 
" aCode : " + request.getParameter("aCode") + " mDetailAddr : " + request.getParameter("mDetailAddr") + " mEmail : " + request.getParameter("mEmail") + 
" eCode : " + request.getParameter("eCode") + " mPhone : " + request.getParameter("mPhone") + " pCode : " + request.getParameter("pCode")

%> --%>
<%

MemberDAO dao = new MemberDAO();
	
	int su = dao.Join(dto);
	String msg="";
	String url="";
	if(su==1){
		msg = dto.getmId() + "님 회원가입되었습니다.";
		url = "/SwingFlow/Category/Main/index.jsp";
	}
	
%>
<script type="text/javascript">
alert("<%=msg%>");
location.href="<%=url%>";
</script>

<%-- <%=
dto.getmId() + " " + dto.getmPwd() + " "  + dto.getmName() + " " + dto.getsCode() + " " + dto.getmBirth() + " " + dto.getmBirth() + " " + dto.getbCode() + " " + dto.getaCode() + " " + 
dto.getmDetailAddr() + " " + dto.getmEmail() + " " + dto.geteCode() + " " + dto.getmPhone() + " " + dto.getpCode()

 %>  --%>
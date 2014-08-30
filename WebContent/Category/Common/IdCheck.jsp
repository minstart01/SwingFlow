<%@page import="Common.DAO.MemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	MemberDAO dao = new MemberDAO();
	String mId=request.getParameter("mId");
	String IdCheck= dao.IdCheck(mId);
	
	if(mId=="" || mId.length()<6){
		out.print("<span style='color:red;'>영문소문자,숫자 조합 6~40자(-,_사용가능)</span>");
	}else if(mId.equals(IdCheck)){
		out.print("<span class='overid' style='color:red;'>아이디가 중복됩니다.</span>");
	}else if(IdCheck==""){
		out.print("<span style='color:blue;'>사용할수 있는</br>아이디입니다.</span>");
	}
%>

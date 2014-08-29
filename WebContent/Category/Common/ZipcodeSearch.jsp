<%@page import="Common.DTO.Address"%>
<%@page import="Common.DAO.MemberDAO"%>

<%@page import="java.util.ArrayList"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.zipcodesearch{

	width:450px;
	height:280px;

	font-size:14px;
}
.search_box{
	
	width:440px;
	height:30px;
	padding-top:5px;
	padding-bottom:5px;
	margin-left:5px;
	
}
.search_result{
	margin:10px 0 0 5px;

	width:440px;
	height:180px;
	overflow: auto;	
}
.search
{	
	margin-left:5px;
	border:none;
	height:23px;
	border-radius:3px;
	width:80px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	cursor: pointer;
}
.subj{
	background: #0043A8;
	background: -moz-linear-gradient(#43A9FF, #0043A8);
	background: -o-linear-gradient(#43A9FF, #0043A8);
	background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color: white;
	font-weight:bold;
}
.select_addr
{
	cursor: pointer;	
}
.select_addr:hover{
background:#B4FFFF;
}
</style>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>
$(function(){
	$(".txt_zipcode").focus();
	
});

function seladdr(no){
	opener.setChildValue($(".seq" + no).val(), $(".zipcode" + no).val(), $(".sido" + no).val(), $(".gugun" + no).val(), $(".dong" + no).val(), $(".ri" + no).val(), $(".bunji" + no).val() );
	
	window.close();
}
</script>
</head>

<body>
<form action="ZipcodeSearch.jsp">
<%

	MemberDAO dao = new MemberDAO();
	Address addr = new Address();
	ArrayList<Address> addrL = new ArrayList<Address>();

	try{
	addrL = (ArrayList<Address>)dao.SelectAddr(request.getParameter("dong"));
	}catch(Exception e)
	{}
%>

<div style="margin-left:5px;">
<h2>우편번호검색</h2></div>
<div class="zipcodesearch">
<div class="search_box">
<div style="width:120px; float:left; margin-top:5px; margin-right:3px; font-weight:bold">검색어(읍/면/동)</div>
<div style="width:310px; float:left;"><input type="text" size="31" name="dong" class="txt_zipcode"/><input type="submit" value="검색" class="search" /></div>

</div>
<div style="margin:20px 0 0 7px; font-weight:bold;">검색결과</div>
<div class="search_result">
	<table cellpadding="4" cellspacing="0">
		<tr class="subj">
			<td width="110" align="center" style="border-right:1px solid white;">우편번호</td>
			<td width="400" align="center" >주소</td>
		</tr>
	</table>	
	<table cellpadding="4" cellspacing="0" class="resultaddr">
		<% for(int i=0;i<addrL.size();i++){

			addr = (Address)addrL.get(i);
			%>
		<tr class="select_addr" onclick="seladdr(<%=i+1%>)">
			<td width="110" align="center"  ><%= addr.getZipcode() %></td>
			<td width="400" align="center" ><%= addr.getSido() + " " +  addr.getGugun() + " " + addr.getDong() + " " + addr.getRi() + " " + addr.getBunji() %>
			<input type="hidden" class="seq<%=i+1 %>" value="<%=addr.getaCode() %>">
			<input type="hidden" class="zipcode<%=i+1 %>" value="<%=addr.getZipcode() %>">
			<input type="hidden" class="sido<%=i+1 %>" value="<%=addr.getSido() %>">
			<input type="hidden" class="gugun<%=i+1 %>" value="<%=addr.getGugun() %>">
			<input type="hidden" class="dong<%=i+1 %>" value="<%=addr.getDong() %>">
			<input type="hidden" class="ri<%=i+1 %>" value="<%=addr.getRi() %>">
			<input type="hidden" class="bunji<%=i+1 %>" value="<%=addr.getBunji() %>">
			</td>
		</tr>
		<%} %>
	</table>		
</div>

</div>
</form>
</body>
</html>

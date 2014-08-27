<%@page import="Airline.DTO.Admin_list"%>
<%@page import="Airline.AdminDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	width:1200px;
	}
#main_content{
	border:1px solid black;
	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:13px;
	
}
.div_button{
	margin-top: 7px;
	border: 1px solid black;
	text-align: center;
	
}

</style>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
	<% 
	
	Admin_list dto = new Admin_list();
	AdminDAO dao = new AdminDAO();
	ArrayList<Admin_list> dtoL = dao.admin_list();
	
	%>
	<h2>예약리스트</h2>
	<table border="1" cellpadding="6" cellspacing="0" width="900" >
	  <tr align="center">
	    <td width="500"><input type="date"> ~ <input type="date"></td>
	    <td><input type="submit" name="button2" id="button2" value="오늘날짜">
        <input type="submit" name="button6" id="button6" value="최근1주일">
        <input type="submit" name="button7" id="button7" value="최근1개월">
        <input type="submit" name="button8" id="button8" value="최근3개월"></td>
      </tr>
	  <tr align="center">
	    <td><form name="form1" method="post" action="">
	 
        
		  <select name="select4" id="select4">
          <option>-예약자명-</option>
			    <option>연락처</option>
			    <option>이메일</option>
			    <option>아이디</option>
	      </select>
	    </form></td>
	    <td><input type="text"><input name="" type="button" value="검색"></td>
      </tr>
</table>
	<p>&nbsp;</p>
	<p >총 <%=dtoL.size() %>건의 예약 내역이 검색되었습니다.</p>
	  <%	for(int i=0;i<dtoL.size();i++){
dto = (Admin_list)dtoL.get(i);%>
	<table border="1" cellpadding="6" cellspacing="0" >
		 <tr align="center">
			<td width="150">예약정보</td>
			<td width="410">예약정보</td>
			<td width="160">예약일시</td>
			<td width="125">관리</td>
	  </tr>

	<tbody>

		<tr align="center">
				  



			<td><div><%=dto.getFname() %>, <%=dto.getLname() %></div></td>
			<td><div>
					<div>
						<a href=""><%=dto.getC_arrcity() %> / 왕복</a>
					</div>
				</div>
				<div>
					<div>운임: <%=dto.getFl_fare() %></div>
				</div>
				<div>출발지역 : 07:00 <%=dto.getC_depcity() %></div>
				<div>예약일자 : <%=dto.getFl_sys() %></div>
				<div>예약인원 : <%=dto.getP_nadult()+dto.getP_nchild()+dto.getP_ninfant() %>명(성인: <%=dto.getP_nadult() %>명 / 소아 : <%=dto.getP_nchild() %>명 / 유아 : <%=dto.getP_ninfant() %>명)</div></td>
			<td><%=dto.getFl_sys() %></td>
		
			<td><input type="submit" name="button" id="button" value="수정" />
				<input type="submit" name="button3" id="button3" value="삭제" /></td>
		</tr>
</tbody></table>
<% } %>
    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
	</div>
	
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

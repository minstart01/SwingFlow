<%@page import="Airline.DTO.FlightConfirm"%>
<%@page import="Airline.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
#wrapper{
	width:1200px;
	}
#main_content{
	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:13px;
	
}
.colum {

background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}

#containerBox #container #containerBody h3.h3_type01
{
	color: #010101;
	line-height: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: normal;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 44px;
	margin-left: 0px;
}

</style>
<%
int s_code = Integer.parseInt(request.getParameter("s_code"));
out.print(s_code);

String id = (String)session.getAttribute("MemberId");

ClientDAO dao = ClientDAO.getInstance();
FlightConfirm dto = new FlightConfirm();
dto = dao.flightConfirm(s_code, id);
out.print(dto.getC_name());

%>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">


 <h3 class="h3_type01">
  항공권 예약</h3>
<ul class="rv_stepBox">
   <li class="step03_on">5.항공권 예약완료</li>
</ul>
<p><br />
</p>
<table border="1" cellpadding="6" cellspacing="0" style="text-align:center;">
  <tr class="colum">
    <td width="150">예약번호</td>
    <td width="200">여정</td>
    <td width="150">예약일자</td>
  </tr>
  <tr>
    <td><%=dto.getFl_no() %></td>
    <td><%=dto.getC_name() %>&lt;=&gt;<%=dto.getC_name1() %> </td>
    <td><%=dto.getFl_sys() %></td>
  </tr>
<!--   <tr> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--   </tr> -->
</table>
<p>&nbsp; </p>
<ul>
  <li>구매한 항공권에 대한  예약 변경 및 환불 시 운임규정에 따른 예약 변경 수수료 (재 발행 수수료) 및 환불 위약금 또는 환불 수수료가 징수될 수 있습니다 </li>
  <li>구매 이후 항공권의 지불 수단 변경은 불가합니다.</li>
  <li>예약 상세 조회 후 여정변경 및 환불을 신청하실 수 있습니다. </li>
  <li>취소된 예약 확인 후에는 예약번호가 온라인 예약 목록에서 삭제되오니 이용에 참고하시기 바랍니다 </li>
</ul>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

<%@page import="Airline.DTO.FlightSearch"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>무제 문서</title>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
  <script>
  $(function(){
	  $('#FareComfirm').click(function(e){
		  $('#dvResult').empty();
		  $('#dvResult').load("R3_FareComfirm.jsp");
	  });
  });
  
  function sel(gubun){
	  $('.sel' + gubun).css('background','#ffe546');
	  var a = $('#sel_scode' + gubun).text();
	  alert(a);
	  
  }
  


  
  </script>

<!-- </script> -->
  
<style>
/* 가는날/오는날 */
.step02_on {
color: #5d6067;
font-weight: bold;
background: url("/SwingFlow/images/Airline/bg_startAr.gif"); no-repeat 0 0;
width: 154px;
padding: 0 0 0 43px;
}

/*  번호 */
.cnt {
background: url("/SwingFlow/images/Airline/bl_hType01.gif") ;no-repeat 0 0;
width: 17px;
height: 17px;
text-align: center;
display: inline-block;
font-size: 11px;
color: #fff;
margin: 0 8px 0 0;
font-family: '돋움';
line-height: 20px;

-webkit-margin-before: 1.33em;
font-weight: bold;
}

#wrapper{
	width:1200px;
	}
#main_content{
	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:12px;
	font-family:Arial;
	
}
.colum {

background-color: #dfdfdf;
color: #5c5f66;
}

.div_button
{
	margin-top:7px;
	width:700px;;
	text-align:center;
}

.bt_login
{
	width:80px;
	height:30px;
	font-size:12px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
		border:none;
	
}

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>
<%

String dcity = request.getParameter("dep_city");
String acity = request.getParameter("arr_city");
String dday= request.getParameter("dep_day");
String aday = request.getParameter("arr_day");
int adult = Integer.parseInt(request.getParameter("p_nAdult"));

int child = Integer.parseInt(request.getParameter("p_nChild"));
int infant = Integer.parseInt(request.getParameter("p_nInfant"));
int ps_Total = adult+child+infant;
String seat = request.getParameter("seat_Class");

%>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
<p><input type="image" name="imageField" id="imageField" src="/SwingFlow/images/Airline/bl_hType01.gif"><strong style="color:#5e14cc; margin-left: 7px";>운임/항공편 선택</strong></p><div style="border-radius:15px; width:523px; height:83px; border:solid 1px black;">
<form action="R3_FareComfirm.jsp" name="next_a">
<table cellspacing="0" cellpadding="6">
  <tr>
    <td width="111"><%=dday %> <br />
      <strong><%=dcity %></strong></td>
    <td width="190" align="center"><input type="image" name="imageField" id="imageField" src="/SwingFlow/images/Airline/bg_join.jpg"></td>
    <td width="178" id="arrday"><%=aday %><br />
      <strong><%=acity %></strong></td>
  </tr>
  <tr>
    <td colspan="3" style="color:#5e14cc;" ><input type="hidden" name="passenger_su">( 탑승객 <%=ps_Total %>명 : 성인&nbsp;<%=adult %>명, 소아: <%=child %>명, 유아: <%= infant %>명)</td>
  </tr>
</table></form>
</div>
<p><span class="cnt"></span><strong style="color:#5e14cc"> 항공편을 선택하세요.</strong></p>
<p>
  <ul class="step02_on"> 가는 항공편</ul></p>

<table cellspacing="0" cellpadding="6" border="1" style="text-align:center;">
  <tr class="colum">
    <td width="75">항공사</td>
    <td width="45">편명</td>
    <td width="125">출발도시</td>
    <td width="50">출발시각</td>
    <td width="125">도착도시</td>
    <td width="50">도착시각</td>
    <td width="71">비행시간</td>
    <td width="50">좌석</td>
    <td width="60">선택</td>
  </tr>
    <%
  ClientDAO dao = ClientDAO.getInstance();
  FlightSearch dto = new FlightSearch();
  ArrayList<FlightSearch> dtoL = dao.flightSel(dcity, acity, dday);
  
  for(int i=0; i<dtoL.size(); i++){
	  dto = dtoL.get(i); %>
  <tr class="sel<%=dto.getS_Code()%>">
    <td><%=dto.getA_Name() %></td>
    <td><%=dto.getAn_Name()%></td>
    <td><%=dto.getC_Name() %></td>
    <td><%=dto.getS_DeptTime() %></td>
    <td><%=dto.getC_Name1() %></td>
    <td><%=dto.getS_ArrtTime() %></td>
    <td><%=dto.getS_FlightTime() %></td>
    <td><%=dto.getS_SeatTotal() %>석</td>
    <td ><input type="button" name="sel_scode"  value="선택" onclick="sel(<%=dto.getS_Code()%>)"/></td>
  </tr>
  <%} %> 
</table>
<p>&nbsp;</p>
<p>
  <ul class="step02_on">오는 항공편</ul></p>
<table cellspacing="0" cellpadding="6" border="1" style="text-align:center;">
  <tr class="colum">
    <td width="75">항공사</td>
    <td width="45">편명</td>
    <td width="125">출발도시</td>
    <td width="50">출발시각</td>
    <td width="125">도착도시</td>
    <td width="50">도착시각</td>
    <td width="71">비행시간</td>
    <td width="50">좌석</td>
    <td width="60">선택</td>
  </tr>
  <% 
  ArrayList<FlightSearch> dtoL1 = dao.flightSel(dcity, acity, aday);
  
  for(int i=0; i<dtoL1.size(); i++){
	  dto = dtoL1.get(i);
  %>
  <tr class="sel3">
    <td><%=dto.getA_Name() %></td>
    <td><%=dto.getAn_Name()%></td>
    <td><%=dto.getC_Name1() %></td>
    <td><%=dto.getS_DeptTime() %></td>
    <td><%=dto.getC_Name() %></td>
    <td><%=dto.getS_ArrtTime() %></td>
    <td><%=dto.getS_FlightTime() %></td>
    <td><%=dto.getS_SeatTotal() %>석</td>
    <td>
    <input type="hidden" value="<%=dto.getS_Code()%>" name="s_code1">
    <input type="submit" name="button" id="button" value="선택" onclick="sel(3)"/></td>
  </tr>
  <%}%>
  <tr>
    <td>OZ103 </td>
    <td>나리타    (NRT)</td>
    <td>15:20</td>
    <td>인천 (ICN)</td>
    <td>17:30</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>9석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ108</td>
    <td>나리타    (NRT)</td>
    <td>19:00</td>
    <td>인천 (ICN)</td>
    <td>21:30</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
</table>
    <div class="div_button">
	<input type="submit" value="이전단계" class="bt_login"/>
  	<input type="button" value="운임확인" id="FareComfirm" class="bt_login"/>
</div>

<div id="dvResult"></div>


</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>

</body>
</html>



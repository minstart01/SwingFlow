<%@page import="java.text.DecimalFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
.colum {
background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}
.pay {

background-color: #FFFF99;
font-weight: bold;
color: #33F;
font-family:Arial, Helvetica, sans-serif
}
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


.trip td{
	padding-left: 6px;
}
.fare tr td:first-child
{
	padding-left: 6px;
	text-align: left;
}
.fare td{
	text-align:right;
	padding-right: 10px;
	height: 30px;
}

.totalP{
	font-size: 24px;
	font-weight: bold;
	color: #5e14cc;
	margin-right: 10px;
	margin-left: 20px;
}
.prev_bt, .next_bt{
	width:80px;
	height:30px;
	font-size:12px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	border: none;
}

</style>
</head>
<%
// int adult = Integer.parseInt(request.getParameter("adult"));
// int child = Integer.parseInt(request.getParameter("child"));
// int infant = Integer.parseInt(request.getParameter("infant"));
int s_code = Integer.parseInt(request.getParameter("s_code"));
int s_code1 = Integer.parseInt(request.getParameter("s_code1"));
int agradeSum = Integer.parseInt(request.getParameter("agradeSum"));
int cgradeSum = Integer.parseInt(request.getParameter("cgradeSum"));

	String[] lName = request.getParameterValues("lName");
    String[] fName = request.getParameterValues("fName");
    String[] passport = request.getParameterValues("passport");
    
	String[] child_lName = request.getParameterValues("child_lName");
    String[] child_fName = request.getParameterValues("child_fName");
    String[] child_passport = request.getParameterValues("child_passport");
  
	String[] infant_lName = request.getParameterValues("infant_lName");
    String[] infant_fName = request.getParameterValues("infant_fName");
    String[] infant_passport = request.getParameterValues("infant_passport");
    
%>
<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">


 <h3 class="h3_type01">
  국제선 예매
 </h3>

     3. 여정/탑승자 확인

<hr>
<h3>선택하신 여정</h3>
<table border="1" cellspacing="0" cellpadding="2" class="trip" width="700">
	<tr>
		<td width="110" height="30">구분</td>
		<td width="140">출발</td>
		<td width="140">도착</td>
		<td width="100">항공사/기종</td>
		<td width="100">비행시간</td>
		<td width="70">클래스</td>
	
	</tr>
	<tr>
		<td height="60">
			가는 편<br>
			OZ108
			</td>
		<td>
			인천(ICN)	 2014/09/24, 18:50
		</td>
		<td>
			도쿄/나리타(NTR) 2014/09/24, 21:00
		</td>
		<td>
			아시아나항공/ A321
		</td>
		<td>02시간 10분</td>
		<td>트래블</td>
		
	</tr>
	<tr>
		<td height="60">
			오는편<br>
			OZ108
			</td>
		<td>
			인천(ICN)	2014/09/24, 18:50
		</td>
		<td>
			도쿄/나리타(NTR) 2014/09/24, 21:00
		</td>
		<td>
			아시아나항공/ A321
		</td>
		<td>02시간 10분</td>
		<td>트래블</td>
	
	</tr>
</table>

<h3>운임</h3>

<table border="1" cellspacing="0" cellpadding="2" class="fare" width="700">
	<tr>
		<td width="110">승객</td>
		<td width="150">항공운임</td>
		<td width="50">인원</td>
		<td width="150">항공운임 총액</td>
	</tr>
	<tr>
		<td>성인</td>
		<td>410,000원</td>
		<td>3명</td>
		<td>123,000원</td>
	</tr>
	<tr>
		<td>소아</td>
		<td>129,199원</td>
		<td>3명</td>
		<td>203,000원</td>
	</tr>
	<tr>
		<td>유아</td>
		<td>100,000원</td>
		<td>2명</td>
		<td>100,000원</td>
	</tr>
</table>

<div style="width: 700px; text-align: right; margin-top: 20px; margin-bottom: 20px;">
	<strong>총 지불금액</strong><strong class="totalP">2,035,000원</strong>
</div>

 	<div style="width: 700px; text-align: center" >
	
	<input class="prev_bt" type="button" value="이전단계" onclick="location.href='R5_FareComfirm.jsp'">
	<input class="next_bt" type="button" value="계속하기" onclick="location.href='R6_Complete.jsp'">
	
	</div>
	
	
<%-- <%
	int i=1000000000;
	DecimalFormat fm = new DecimalFormat("#,###");
	out.print(fm.format(i));
%> --%>
             
              
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

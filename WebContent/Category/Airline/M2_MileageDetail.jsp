<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css">
</head>
<style>
#wrapper{
	 
		height: 700px;
		width:1250px;
		clear:both;
		
	}
#main_content{
	position:absolute;
	top:30px;
	left: 275px;
	width: 950px;
	
		
}
body, input, textarea, select, table, button
{
	line-height: normal;
	font-family: gulim, helvetica, sans-serif;
	font-size: 13px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	font-size-adjust: none;
	font-stretch: normal;
}
.colum {
height: 50;
background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}
</style>
<body>
<%@include file="../Common/top.jsp" %>
 <div id="wrapper">
 <jsp:include page="sidemenu.jsp"></jsp:include>
 <div id="main_content">
<table cellspacing="0" cellpadding="0" border="1" width="750" style="text-align: center;">
  <tr height="50" class="colum">
    <td width="38">번호</td>
    <td width="100">이용일자/적립일자</td>
    <td width="38">구분</td>
    <td width="145">편명 및 구간</td>
    <td width="80">적립당시 등급</td>
    <td width="50">적립</td>
    <td width="38">사용</td>
    <td width="38">소멸</td>
    <td width="78">유효기간</td>
  </tr>
  <tr>
    <td rowspan="2">1</td>
    <td rowspan="2" align="right" >2012-12-06</td>
    <td rowspan="2" >적립</td>
    <td >OZ0203/</td>
    <td rowspan="2">골드(G)</td>
    <td rowspan="2" >5,973</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >2022-12-31</td>
  </tr>
  <tr>
    <td >LAXICN (Y/M)</td>
  </tr>
  <tr>
    <td rowspan="2">1</td>
    <td rowspan="2" align="right" >2012-12-06</td>
    <td rowspan="2" >적립</td>
    <td >OZ0203/</td>
    <td rowspan="2">골드(G)</td>
    <td rowspan="2" >5,973</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >2022-12-31</td>
  </tr>
  <tr>
    <td >LAXICN (Y/M)</td>
  </tr>
    <tr>
    <td rowspan="2">1</td>
    <td rowspan="2" align="right" >2012-12-06</td>
    <td rowspan="2" >적립</td>
    <td >OZ0203/</td>
    <td rowspan="2">골드(G)</td>
    <td rowspan="2" >5,973</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >2022-12-31</td>
  </tr>
  <tr>
    <td >LAXICN (Y/M)</td>
  </tr>
    <tr>
    <td rowspan="2">1</td>
    <td rowspan="2" align="right" >2012-12-06</td>
    <td rowspan="2" >적립</td>
    <td >OZ0203/</td>
    <td rowspan="2">골드(G)</td>
    <td rowspan="2" >5,973</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >-</td>
    <td rowspan="2" >2022-12-31</td>
  </tr>
  <tr>
    <td >LAXICN (Y/M)</td>
  </tr>
</table></div>
</div>
 <%@include file="../Common/footer.jsp" %>
</body>
</html>

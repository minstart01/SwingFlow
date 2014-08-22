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


</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
<table border="1">
  <tr>
    <td></td>
    <td></td>
    <td width="180">노선별 일반운임 조회</td>
    <td></td>
    <td></td>
  </tr>
  <tr>
    <td width="142">구분</td>
    <td width="107">운임</td>
    <td width="180">유류할증료(2014년 08월    기준)</td>
    <td width="142">공항세</td>
    <td width="142">총계</td>
  </tr>
  <tr>
    <td >할인운임(월-목)</td>
    <td >82,000원</td>
    <td >11,000원</td>
    <td >4,000원</td>
    <td >97,000원</td>
  </tr>
  <tr>
    <td >기본운임(금-일)</td>
    <td>95,000원</td>
    <td >11,000원</td>
    <td >4,000원</td>
    <td >110,000원</td>
  </tr>
  </table>
  
  </div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

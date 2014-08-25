<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script type="text/javascript">
function nextEdit(){
	document.next.submit();
};
</script>
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
.div_button
{
	border:1px solid black;
	margin-top:7px;
	width:840px;
	text-align:center;

}
.colum {

background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>
<form action="Admin_detailEdit.jsp" name="next">
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
<h2>예약관리-예약내용수정</h2>
<table border="1" cellpadding="6" cellspacing="0">
  <tr >
    <td width="100" class="colum">이름</td>
    <td width="257">홍길동</td>
    <td width="100" class="colum">왕복/편도</td>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td class="colum">연락처</td>
    <td>010-4644-6165</td>
    <td class="colum">&nbsp;</td>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td class="colum">출발지</td>
    <td>김포</td>
    <td class="colum">도착지</td>
    <td colspan="3">제주</td>
  </tr>
  <tr>
    <td class="colum">가는날</td>
    <td>2013년 5월 29일</td>
    <td class="colum">오는날</td>
    <td colspan="3">2013년 5월 29일</td>
  </tr>
  <tr>
    <td class="colum">예약금액</td>
    <td>18,689,000 원</td>
    <td class="colum">예약인원</td>
    <td width="100">성인 : 11명</td>
    <td width="100">소아: 11명</td>
    <td width="100">유아: 11명</td>
  </tr>
  <tr>
    <td class="colum">출발지역</td>
    <td>07:00 인천공항</td>
    <td class="colum"> 예약상태</td>
    <td colspan="3">예약접수</td>
  </tr>
</table>
<div class="div_button">
<input type="button" value="수정" onclick="nextEdit();"/>
  	<input type="reset" value="닫기" />
</div>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</form></body>
</html>

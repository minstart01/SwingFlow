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
.colum {

background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
<table cellspacing="0" cellpadding="6" border="1" >
  <col width="136" />
  <col width="72" />
  <col width="271" />
  <tr>
    <td width="136">2014/08/20 <br />
      인천(ICN)</td>
    <td width="72">&lt;=&gt;</td>
    <td width="271">2014/08/30 <br />
      도쿄/나리타(NRT)</td>
  </tr>
  <tr>
    <td colspan="3">( 탑승객 1명 : 성인&nbsp;1명 )</td>
  </tr>
</table>
<p>1. 항공편을 선택하세요.</p>
<p>가는 항공편</p>
<table cellspacing="0" cellpadding="6" border="1" style="text-align:center;">
  <tr class="colum">
    <td width="90">편명</td>
    <td width="140">출발도시</td>
    <td width="100">출발시각</td>
    <td width="140">도착도시</td>
    <td width="100">도착시각</td>
    <td width="90">편명</td>
    <td width="120">비행시간</td>
    <td width="72">좌석</td>
    <td width="72">선택</td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>오는 항공편</p>
<table cellspacing="0" cellpadding="6" border="1" style="text-align:center;">
  <tr class="colum">
    <td width="90">편명</td>
    <td width="140">출발도시</td>
    <td width="100">출발시각</td>
    <td width="140">도착도시</td>
    <td width="100">도착시각</td>
    <td width="90">편명</td>
    <td width="120">비행시간</td>
    <td width="72">좌석</td>
    <td width="72">선택</td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
  <tr>
    <td>OZ102 </td>
    <td>인천 (ICN)</td>
    <td>9:00</td>
    <td>도쿄/나리타    (NRT)</td>
    <td>11:10</td>
    <td>KA325</td>
    <td>02시간10분</td>
    <td>3석</td>
    <td>
    <input type="submit" name="button" id="button" value="선택" /></td>
  </tr>
</table>
    <div class="div_button">
	<input type="submit" value="이전단계" />
  	<input type="button" value="운임확인" id="FareComfirm"/>
</div>

<div id="dvResult"></div>


</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>

</body>
</html>


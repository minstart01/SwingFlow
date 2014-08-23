<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
/* 버튼 */
.div_button
{
	border:1px solid black;
	margin-top:7px;
	
	text-align:center;

	width:855px;	
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

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>

<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">


<h2>운항스케줄 등록</h2>
<table border="1" cellpadding="6" cellspacing="0">
<tr>
	<td width="100">항공사</td>
    <td width="300">
    	<select>
        	<option>아시아나</option>
            <option>진에어</option>
        </select>
    </td>
    <td width="100">편명</td>
    <td width="300">
    <select>
        	<option>asb123</option>
            <option>adfb5678</option>
        </select>
    </td>	

</tr>
<tr>
	<td>출발도시</td>
    <td>
    <select name="select7" id="select7">
    <option>한국</option>
      <option>일본</option>
      <option>중국</option>
      <option>동남아</option>
      <option>미국</option>
      </select><select name="select8" id="select8">
        <option>인천</option>
        <option>김포</option>
        <option>대구</option>
        <option>제주</option>
       
    </select>
    </td>
    <td>도착도시</td>
    <td>
    	<select name="select9" id="select9">
      <option>일본</option>
      <option>중국</option>
      <option>동남아</option>
      <option>미국</option>
      </select><select name="select10" id="select10">
        <option>도쿄/나리타</option>
        <option>베이징</option>
        <option>홍콩</option>
        <option>세부</option>
        <option>뉴욕</option>
        <option>로스엔젤레스</option>
    </select>
    </td>
	</tr>
	<tr>
			<td>출발일</td>
    	<td colspan="3">
    		<input type="date" />
   		</td>
	</tr>
	<tr>
		<td>출발시간</td>
   		 <td><input type="time" /></td>
   	 	<td>도착시간</td>
    	<td><input type="time" /></td>
	</tr>
	<tr>
		<td>운항시작일</td>
        <td><input type="date" /></td>
        <td>운항종료일</td>
        <td><input type="date" /></td>
	</tr>
    <tr>
    	<td colspan="4" align="center">트래블 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" />원</td>
        <td>소아</td>
        <td><input type="text" />원</td>
    </tr>
    <tr>
    	<td colspan="4" align="center">비지니스 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" />원</td>
        <td>소아</td>
        <td><input type="text" />원</td>
    </tr>
    <tr>
    	<td colspan="4" align="center">퍼스트 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" />원</td>
        <td>소아</td>
        <td><input type="text" />원</td>
    </tr>
</table>


    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
</div>


<table cellspacing="0" cellpadding="0" border="1">
  <col width="70" span="3" />
  <col width="35" span="7" />
  <col width="70" />
  <col width="42" />
  <col width="122" />
  <col width="70" />
  <col width="183" />
  <tr>
    <td width="70">출발지</td>
    <td>도착지</td>
    <td width="192">출발시간</td>
    <td width="192">도착시간</td>
    <td width="192">운항기간</td>
    <td width="122">운임(성인)</td>
    <td width="131">운임(소아)</td>
  </tr>
  <tr>
    <td><select name="select8" id="select8">
      <option>인천</option>
      <option>N</option>
    </select></td>
    <td width="164"><select name="select9" id="select9">
      <option>일본</option>
      <option>중국</option>
      <option>동남아</option>
      <option>미국</option>
      </select><select name="select10" id="select10">
        <option>도쿄/나리타</option>
        <option>베이징</option>
        <option>홍콩</option>
        <option>세부</option>
        <option>뉴욕</option>
        <option>로스엔젤레스</option>
    </select></td>
    <td><input type="time" /></td>
    <td><input type="time" /></td>

    <td><input type="date" /> ~ <input type="date" /></td>
        <td><input type="text" />  원</td>
    <td><input type="text" />  원</td>
  </tr>
</table>
</div>
</div>

<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
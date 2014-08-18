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
	margin-top:7px;
	margin-left:50px;
	text-align:center;

	width:760px;	
}
</style>
</head>
<body>
<h2>운항스케줄 등록</h2>
<table cellspacing="0" cellpadding="0" border="1">
  <col width="70" span="3" />
  <col width="35" span="7" />
  <col width="70" />
  <col width="42" />
  <col width="122" />
  <col width="70" />
  <col width="183" />
  <tr>
    <td width="70">이미지</td>
    <td width="70">항공사</td>
    <td width="70">편명</td>
    <td width="48">월</td>
    <td width="48">화 </td>
    <td width="48">수 </td>
    <td width="48">목</td>
    <td width="48">금 </td>
    <td width="48">토</td>
    <td width="48">일</td>
    <td width="70">출발지</td>
    <td>도착지</td>
    <td width="192">출발시간</td>
    <td width="192">도착시간</td>
    <td width="192">운항기간</td>
    <td width="122">운임(성인)</td>
    <td width="131">운임(소아)</td>
  </tr>
  <tr>
    <td><input type="file" /></td>
    <td><select name="select11" id="select11">
      <option>드래곤에어</option>
      <option>아시아나항공</option>
    </select></td>
    <td>KA325</td>
    <td>
      <select name="select" id="select">
        <option>Y</option>
        <option>N</option>
    </select></td>
    <td><select name="select2" id="select2">
      <option>Y</option>
      <option>N</option>
    </select></td>
    <td><select name="select3" id="select3">
      <option>Y</option>
      <option>N</option>
    </select></td>
    <td><select name="select4" id="select4">
      <option>Y</option>
      <option>N</option>
    </select></td>
    <td><select name="select5" id="select5">
      <option>Y</option>
      <option>N</option>
    </select></td>
    <td><select name="select6" id="select6">
      <option>Y</option>
      <option>N</option>
    </select></td>
    <td><select name="select7" id="select7">
      <option>Y</option>
      <option>N</option>
    </select></td>
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
    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
</div>

</body>
</html>

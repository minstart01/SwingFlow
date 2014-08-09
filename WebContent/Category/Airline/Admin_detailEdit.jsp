<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style>
.div_button
{
	margin-top:7px;
	margin-left:5px;
	text-align:center;

	width:469px;	
}
</style>
</head>
<body>
<h2>예약관리-예약내용수정</h2>
<table width="469" border="1" cellspacing="0" cellpadding="0">
  <tr>
    <td width="168">이름</td>
    <td colspan="3">홍길동</td>
  </tr>
  <tr>
    <td>연락처</td>
    <td colspan="3">010-4644-6165</td>
  </tr>
  <tr>
    <td>출발지</td>
    <td colspan="3"><label for="select"></label>
      <select name="select" id="select">
        <option>김포</option>
        <option>일본</option>
    </select></td>
  </tr>
  <tr>
    <td>도착지</td>
    <td colspan="3"><select name="select2" id="select2">
      <option>김포</option>
      <option>일본</option>
    </select></td>
  </tr>
  <tr>
    <td>가는날</td>
    <td colspan="3"><input type="date"></td>
  </tr>
  <tr>
    <td>오는날</td>
    <td colspan="3"><input type="date"></td>
  </tr>
  <tr>
    <td>예약금액</td>
    <td colspan="3">18,689,000 원</td>
  </tr>
  <tr>
    <td>예약인원</td>
    <td colspan="3">*인원수를 입력하시면 자동 계산 됩니다. </td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td width="119">성인 : 11명</td>
    <td width="74">소아:</td>
    <td width="98">유아:</td>
  </tr>
  <tr>
    <td>출발지역</td>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td>예약상태</td>
    <td colspan="3"><select name="select3" id="select3">
      <option>예약접수</option>
      <option>예약완료</option>
      <option>예약취소</option>
    </select></td>
  </tr>
</table>

    <div class="div_button">
	<input type="submit" value="저장" />&nbsp;
  	<input type="reset" value="뒤로" />
	</div>


</body>
</html>

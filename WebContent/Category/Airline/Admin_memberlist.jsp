<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>회원목록</h2>
<table width="1000" height="100" border="1" cellpadding="0" cellspacing="0" >
	  <tr align="center">
	    <td width="500"><input type="date"> ~ <input type="date"></td>
	    <td><input type="submit" name="button2" id="button2" value="오늘날짜">
        <input type="submit" name="button6" id="button6" value="최근1주일">
        <input type="submit" name="button7" id="button7" value="최근1개월">
        <input type="submit" name="button8" id="button8" value="최근3개월"></td>
  </tr>
	  <tr align="center">
	    <td><form name="form1" method="post" action="">
	      <select name="select3" id="select3">
          <option>-회원등급-</option>
        <option>실버</option>
        <option>골드</option>
        <option>다이아몬드</option>
        <option>플래티늄</option>
          </select>
        
		  <select name="select4" id="select4">
          <option>아이디</option>
			    <option>연락처</option>
			    <option>이름</option>
			</select>
	    </form></td>
	    <td><input type="text"><input name="" type="button" value="검색"></td>
      </tr>
</table>
	<p>&nbsp;</p>
<p >총 618건의 예약 내역이 검색되었습니다.</p>
<table width="1002" height="240" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td>이름</td>
    <td>아이디</td>
    <td>등급</td>
    <td>휴대전화</td>
    <td>방문</td>
    <td>수정</td>
    <td>삭제</td>
  </tr>
  <tr>
    <td>홍길동</td>
    <td>hong</td>
    <td><label for="select"></label>
      <select name="select">
        <option>실버</option>
        <option>골드</option>
        <option>다이아몬드</option>
        <option>플래티늄</option>
    </select></td>
    <td>010-4644-6165</td>
    <td>3</td>
    <td><input type="submit" name="button" id="button" value="수정"></td>
    <td><input type="submit" name="button3" id="button3" value="삭제"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
</html>

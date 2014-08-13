<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
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
<h2>회원정보수정</h2>

<table width="650" height="400" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td>한글이름</td>
    <td colspan="2">임유경</td>
  </tr>
  <tr>
    <td>영어이름</td>
    <td colspan="2">IM/YOOKYUNG</td>
  </tr>
  <tr>
    <td>생년월일</td>
    <td colspan="2">1983년 10월 11일</td>
  </tr>
  <tr>
    <td>성별</td>
    <td colspan="2">여자</td>
  </tr>
  <tr>
    <td>회원아이디</td>
    <td colspan="2">youk377</td>
  </tr>
  <tr>
    <td>회원등급</td>
    <td colspan="2"><select name="select3" id="select3">
          <option>-회원등급-</option>
        <option>실버</option>
        <option>골드</option>
        <option>다이아몬드</option>
        <option>플래티늄</option>
          </select></td>
  </tr>
  <tr>
    <td>회원번호</td>
    <td colspan="2">381762448</td>
  </tr>
  <tr>
    <td rowspan="2">주소</td>
    <td><input type="text"> - <input type="text"> </td>
    <td><input name="input" type="button" value="우편번호 검색"></td>
  </tr>
  <tr>
    <td colspan="2"><input type="text"><input type="text"></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td colspan="2"><select name="mobile1" id="mobile1" >
															<option value="">선택</option>
															<option value="010" selected="">010</option>
															<option value="011">011</option>
															<option value="016">016</option>
															<option value="017">017</option>
															<option value="018">018</option>
															<option value="019">019</option>
														</select>
-
  <input type="text"> 
  - 
  <input type="text"></td>
  </tr>
  <tr>
    <td>이메일</td>
    <td colspan="2"><input type="text">
      @
      <input type="text"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td colspan="2">&nbsp;</td>
  </tr>
</table>
   <div class="div_button">
	<input type="submit" value="저장" />&nbsp;
  	<input type="reset" value="뒤로" />
	</div>
</body>
</html>

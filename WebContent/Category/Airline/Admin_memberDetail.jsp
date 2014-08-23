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
	border:1px solid black;
	text-align:center;

	width:729px;	
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
<h2>회원정보수정</h2>

<table border="1" cellpadding="6" cellspacing="0">
  <tr>
    <td width="100">한글이름</td>
    <td width="600">임유경</td>
  </tr>
  <tr>
    <td>영어이름</td>
    <td>IM/YOOKYUNG</td>
  </tr>
  <tr>
    <td>생년월일</td>
    <td>1983년 10월 11일</td>
  </tr>
  <tr>
    <td>성별</td>
    <td>여자</td>
  </tr>
  <tr>
    <td>회원아이디</td>
    <td  >youk377</td>
  </tr>
  <tr>
    <td>회원등급</td>
    <td  ><select name="select3" id="select3">
          <option>-회원등급-</option>
        <option>실버</option>
        <option>골드</option>
        <option>다이아몬드</option>
        <option>플래티늄</option>
          </select></td>
  </tr>
  <tr>
    <td>회원번호</td>
    <td  >381762448</td>
  </tr>
  <tr>
    <td rowspan="2">주소</td>
    <td><input type="text"> - <input type="text">
    <input name="input" type="button" value="우편번호 검색"></td>
  </tr>
  <tr>
    <td  ><input type="text"><input type="text"></td>
  </tr>
  <tr>
    <td>전화번호</td>
    <td  >
    <select name="mobile1" id="mobile1" >
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
    <td  ><input type="text">
      @
      <input type="text"></td>
  </tr>

</table>
   <div class="div_button">
	<input type="submit" value="저장" />&nbsp;
  	<input type="reset" value="뒤로" />
	</div>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

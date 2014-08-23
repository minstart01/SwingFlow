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
<h2>회원목록</h2>
<table border="1" cellpadding="6" cellspacing="0" width="900" >
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
<table width="900" border="1" cellpadding="6" cellspacing="0" style="text-align:center;">
  <tr>
    <td width="100">이름</td>
    <td width="100">아이디</td>
    <td width="80">등급</td>
    <td width="140">휴대전화</td>
    <td width="140">이메일</td>
    <td width="50">방문</td>
    <td width="80">예약횟수</td>
    <td>수정</td>
    <td>삭제</td>
  </tr>
  <tr>
    <td>홍길동</td>
    <td>hong</td>
    <td>실버</td>
    <td>010-4644-6165</td>
  	<td>adfsd@naver.com</td>
    <td>3</td>
    <td>2</td>
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
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>

</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
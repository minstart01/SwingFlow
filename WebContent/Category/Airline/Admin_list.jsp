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

	<h2>예약리스트</h2>
	<table width="1008" height="93" border="1" cellpadding="0" cellspacing="0" >
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
          <option>-예약상태-</option>
	        <option>예약접수</option>
	        <option>예약완료</option>
	        <option>예약취소</option>
          </select>
        
		  <select name="select4" id="select4">
          <option>-예약자명-</option>
			    <option>연락처</option>
			    <option>이메일</option>
			    <option>아이디</option>
	      </select>
	    </form></td>
	    <td><input type="text"><input name="" type="button" value="검색"></td>
      </tr>
</table>
	<p>&nbsp;</p>
	<p >총 618건의 예약 내역이 검색되었습니다.</p>
	<table width="1013" height="288" border="1" >
		 <tr align="center">
			<td width="156">예약정보</td>
			<td width="407">예약정보</td>
			<td width="155">예약일시</td>
			<td width="135">예약상태</td>
			<td width="126">관리</td>
	  </tr>
		<tr align="center">
			<td><div>박명희</div>
				<div>010-2961-8363</div></td>
			<td><div>
					<div>
						<a href="">미국LAX / 왕복</a>
					</div>
				</div>
				<div>
					<div>운임: 2,440,000</div>
				</div>
				<div>출발지역 : 07:00 김포</div>
				<div>예약일자 : 2015-01-05</div>
				<div>예약인원 : 2명(소인 : 1명 / 대인 : 1명)</div></td>
			<td>2014-07-07 10:25:32</td>
			<td><form name="form1" method="post" action="">
			  <select name="select" id="select">
			    <option>예약접수</option>
			    <option>예약완료</option>
			    <option>예약취소</option>
		      </select>
		    </form></td>
			<td><input type="submit" name="button" id="button" value="수정" />
				<input type="submit" name="button3" id="button3" value="삭제" /></td>
		</tr>
		 <tr align="center">
			<td><div>박명희</div>
				<div>010-2961-8363</div></td>
			<td><div>
					<div>미국LAX / 왕복</div>
				</div>
				<div>
					<div>운임: 2,440,000</div>
				</div>
				<div>출발지역 : 07:00 김포</div>
				<div>예약일자 : 2015-01-05</div>
				<div>예약인원 : 2명(소인 : 1명 / 대인 : 1명)</div></td>
			<td>2014-07-07 10:25:32</td>
			<td><form name="form1" method="post" action="">
			  <select name="select2" id="select2">
			    <option>예약접수</option>
			    <option>예약완료</option>
			    <option>예약취소</option>
		      </select>
		    </form></td>

		</tr>
</table>

    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
	</div>
	
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

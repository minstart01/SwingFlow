<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
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


#containerBox #container #containerBody h3.h3_type01
{
	color: #010101;
	line-height: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: normal;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 44px;
	margin-left: 0px;
}


</style>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">


 <h3 class="h3_type01">
  국제선 예매
 </h3>
  <ul class="rv_stepBox">
   <li class="step03_on">
     3. 여정/탑승자 확인
   </li>
 </ul>
<table width="556" height="154" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="66" height="53">인천 </td>
    <td width="35">&lt;=&gt;</td>
    <td width="207"> 도쿄/나리타</td>
    <td width="95">가는 날</td>
    <td width="95">오는 날</td>
    <td width="44">좌석</td>
  </tr>
  <tr>
    <td height="62">(인천,ICN)</td>
    <td>&nbsp;</td>
    <td>(도쿄/나리타,NRT) </td>
    <td>2014/08/10/일 <br />
09:00 출발</td>
    <td>2014/08/10/일 <br />
      09:00 출발</td>
    <td>트래블</td>
  </tr>
  <tr>
    <td height="37">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>OZ102 </td>
    <td>OZ102 </td>
    <td>&nbsp;</td>
  </tr>
</table>
<p><br />
  탑승자별 운임확인</p>
<p>&nbsp;</p>
<table width="562" height="194" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td>1</td>
    <td><strong>Im/yookyung</strong></td>
    <td>항공운임</td>
    <td align="right">280,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>(성인,MS)</td>
    <td>유류할증료</td>
    <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>세금 및 제반요금</td>
 <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>총액</td>
 <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td><strong>총 지불금액</strong></td>
    <td align="right"><strong>384,800 원</strong></td>
  </tr>
</table>
<p>결방식을 선택하세요.</p>
<table width="560" height="257" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td>결제금액</td>
    <td colspan="5" rowspan="3"><p>☞ 해당 카드사에서 요청하는 인증을 충족하지 않을경우 홈페이지에서 항공권 구매가 불가합니다.</p>
    <p>☞ 신용카드 인증 시 발생한 오류는 반드시 해당 카드사로 문의하여 주시기 바랍니다.</p>
    <p>☞ 인터넷 익스플로러에서만 계좌이체가 가능합니다.</p></td>
  </tr>
  <tr>
    <td>384,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>결제방식</td>
    <td>
    <input type="radio" name="radio" id="radio" />
    신용카드 
    <input type="radio" name="radio" id="radio2" />
계좌이체</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>카드종류</td>
    <td>
      <select name="select" id="select">
        <option>선택하세요</option>
        <option>우리카드</option>
        <option>국민카드</option>
        <option>신한카드</option>
    </select></td>
    <td>할부선택</td>
    <td>
      <select name="select" id="select">
        <option>일시불</option>
        <option>3개월</option>
    </select></td>
    <td>&nbsp;</td>
  </tr>
  <tr>
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
    <td colspan="2" align="right"><img src="/SwingFlow/images/Airline/reserv/vimg.png" /></td>
    <td>&nbsp;</td>
  </tr>
</table>
<p>&nbsp;</p>
              <div ><span style="margin-left:50px;">
                <a id="" href="R5_FareComfirm.jsp">이전단계</a></span>
                <span style="margin-left:700px;"><a id="" href="R6_Complete.jsp">계속하기</a></span>
              </div>
              
              
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>

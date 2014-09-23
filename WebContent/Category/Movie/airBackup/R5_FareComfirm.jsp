<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
.colum {

background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}
.pay {

background-color: #FFFF99;
font-weight: bold;
color: #33F;
font-family:Arial, Helvetica, sans-serif
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
<%
// int adult = Integer.parseInt(request.getParameter("adult"));
// int child = Integer.parseInt(request.getParameter("child"));
// int infant = Integer.parseInt(request.getParameter("infant"));
/* int s_code = Integer.parseInt(request.getParameter("s_code"));
int s_code1 = Integer.parseInt(request.getParameter("s_code1"));
int agradeSum = Integer.parseInt(request.getParameter("agradeSum"));
int cgradeSum = Integer.parseInt(request.getParameter("cgradeSum"));

	String[] lName = request.getParameterValues("lName");
    String[] fName = request.getParameterValues("fName");
    String[] passport = request.getParameterValues("passport");
    
	String[] child_lName = request.getParameterValues("child_lName");
    String[] child_fName = request.getParameterValues("child_fName");
    String[] child_passport = request.getParameterValues("child_passport");
  
	String[] infant_lName = request.getParameterValues("infant_lName");
    String[] infant_fName = request.getParameterValues("infant_fName");
    String[] infant_passport = request.getParameterValues("infant_passport"); */
    
%>
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
<table border="1" cellpadding="6" cellspacing="0" width="705" style="text-align:center;">
  <tr>
    <td width="130">인천 </td>
    <td width="35">&lt;=&gt;</td>
    <td width="130"> 도쿄/나리타</td>
    <td width="120">가는 날</td>
    <td width="120">오는 날</td>
    <td width="70">좌석</td>
  </tr>
  <tr>
    <td>(인천,ICN)</td>
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
<%-- <table border="1" cellpadding="6" cellspacing="0" width="705" >
<% for(int i=0; i<lName.length;i++){ %>
  <tr>
    <td width="40" rowspan="5" align="center" style="vertical-align:top;" class="colum"><%=i+1 %></td>
    <td width="150"><strong><%=lName[i] %>/<%=fName[i] %></strong></td>
    <td width="210">항공운임</td>
    <td align="right"><%=agradeSum %> 원</td>
  </tr>
  <tr>
    <td>(성인,MS)</td>
    <td>유류할증료</td>
    <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>세금 및 제반요금</td>
 <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>총액</td>
 <td align="right"><%=agradeSum %> 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>총 지불금액</strong></td>
    <td align="right"><strong>384,800 원</strong></td>
  </tr>
  <%} %>
</table>

<!-- 소아 테이블 ============================================================-->
<p>&nbsp;</p>
<% if(child_lName == null){%>
<table border="0" cellpadding="6" cellspacing="0" width="705" >
<%}else{
%>
	<table border="1" cellpadding="6" cellspacing="0" width="705" >
<%	
} %>
<% 
try{ 
for(int i=0; i<child_lName.length;i++){ %>
  <tr>
    <td width="40" rowspan="5" align="center" style="vertical-align:top;" class="colum"><%=i+1 %></td>
    <td width="150"><strong><%=child_lName[i] %>/<%=child_fName[i] %></strong></td>
    <td width="210">항공운임</td>
    <td align="right"><%=cgradeSum %> 원</td>
  </tr>
  <tr>
    <td>(소아,MS)</td>
    <td>유류할증료</td>
    <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>세금 및 제반요금</td>
 <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>총액</td>
 <td align="right"><%=agradeSum %> 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>총 지불금액</strong></td>
    <td align="right"><strong>384,800 원</strong></td>
  </tr>
  <%}  %>
</table>
<%}catch(Exception e){
	
} %>

<!-- 유아 테이블 ============================================================-->
 <p>&nbsp;</p>
<%try{ %>
<table border="1" cellpadding="6" cellspacing="0" width="705" >
<% 
for(int i=0; i<infant_lName.length;i++){ %>
  <tr>
    <td width="40" rowspan="5" align="center" style="vertical-align:top;" class="colum"><%=i+1 %></td>
    <td width="150"><strong><%=infant_lName[i] %>/<%=infant_fName[i] %></strong></td>
    <td width="210">항공운임</td>
    <td align="right"><%=cgradeSum %> 원</td>
  </tr>
  <tr>
    <td>(유아,MS)</td>
    <td>유류할증료</td>
    <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>세금 및 제반요금</td>
 <td align="right">50,000 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>총액</td>
 <td align="right">0 원</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><strong>총 지불금액</strong></td>
    <td align="right"><strong>384,800 원</strong></td>
  </tr>
  <%}  %>
</table>
<%}catch(Exception e){} %>

 --%>
<!-- <table  width="705" border="1" cellpadding="6" cellspacing="0"> -->
<!--   <tr> -->
<!--     <td width="90" rowspan="4" class="pay" style="vertical-align:top"><p>결제금액</p> -->
<!--       <p>384,000 원</p></td> -->
<!--     <td colspan="4"><p>☞ 해당 카드사에서 요청하는 인증을 충족하지 않을경우 홈페이지에서 항공권 구매가 불가합니다.</p> -->
<!--       <p>☞ 신용카드 인증 시 발생한 오류는 반드시 해당 카드사로 문의하여 주시기 바랍니다.</p> -->
<!--       <p>☞ 인터넷 익스플로러에서만 계좌이체가 가능합니다.</p></td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>결제방식</td> -->
<!--     <td> -->
<!--       <input type="radio" name="radio" id="radio" /> -->
<!--       신용카드  -->
<!--       <input type="radio" name="radio" id="radio2" /> -->
<!--       계좌이체</td> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--   </tr> -->
<!--   <tr> -->
<!--     <td>카드종류</td> -->
<!--     <td> -->
<!--       <select name="select" id="select"> -->
<!--         <option>선택하세요</option> -->
<!--         <option>우리카드</option> -->
<!--         <option>국민카드</option> -->
<!--         <option>신한카드</option> -->
<!--     </select></td> -->
<!--     <td>할부선택</td> -->
<!--     <td> -->
<!--       <select name="select" id="select"> -->
<!--         <option>일시불</option> -->
<!--         <option>3개월</option> -->
<!--       </select></td> -->
<!--     </tr> -->

<!--   <tr> -->
<!--     <td>&nbsp;</td> -->
<!--     <td>&nbsp;</td> -->
<!--     <td colspan="2" align="right"><img src="/SwingFlow/images/Airline/reserv/vimg.png" /></td> -->
<!--     </tr> -->
<!-- </table>  -->
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

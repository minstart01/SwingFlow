<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function nextEdit() {
	document.next.submit();
};
</script>
<style>
.remove {
list-style: none;
padding-left: 0px;
margin-top: 0px;

}
.remove li a {
text-decoration: none;
color:black;
}
.remove01 ul li a{
text-decoration: none;
color:black;
}	
.wrapper{
	width:1200px;
	}
.main_content{
	border:1px solid #9900FF;	
	width:600px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:12px;

	
}
.remove li{
	padding:5px 0px 5px 10px;
	border-bottom: 1px solid #d2d2f0;
	margin-left: 0px;
}
 #KR li, #CH li, #JP li, #EA li, #US li, #KR01 li, #CH01 li, #JP01 li, #EA01 li, #US01 li {
 	padding: 5px 0px 5px 0px;
 
 	
 }

 #kr01, #ch01, #jp01, #ea01, #us01, #kr02, #ch02, #jp02, #ea02, #us02{
 	background: #f2f2f2;
 }


 #kr01:hover, #ch01:hover, #jp01:hover, #ea01:hover, #us01:hover, #kr02:hover, #ch02:hover, #jp02:hover, #ea02:hover, #us02:hover{
 	font-weight: bold;
 	background:white;
 	color:#201cb4;
 	cursor: pointer;
 }

.bt_login
{
	width:120px;
	height:30px;
	font-size:12px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	
	
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
 <link rel="stylesheet" href="/resources/demos/style.css">	
 
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
 <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <script>
$(function() {
    $("#radio" ).buttonset();
  });  

$(function(){
	$('#radio2').click(function(){
		$(".getIn").hide();
	});
});
$(function(){
	$('#radio1').click(function(){
		$(".getIn").show();
	});
});
/* 달력 ============================================================================================  */
 
  $(function() {

    $("#datepicker").datepicker({
    	dateFormat: "yy-mm-dd",
 showOn: "button",
  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
  buttonImageOnly: true,
  changeMonth: true,
  changeYear: true
    });
  });
  $(function() {

	    $("#datepicker01" ).datepicker({
	    	dateFormat: "yy-mm-dd",
	  showOn: "button",
	  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
	  buttonImageOnly:true,
	  changeMonth: true,
	  changeYear: true
	    });
	  });
  /* 도시리스트 =====================================================================================================*/
  $(function(){

    $('#kr01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
    	$('#JP').hide();
    	$('#CH').hide();
    	$('#KR').show();
	});	
});
$(function(){
	$('#CH').hide();	
	$('#ch01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#JP').hide();
		$('#CH').show();
	});	
});	
$(function(){
	$('#JP').hide();	
	$('#jp01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#JP').show();
	});	
});	
$(function(){
	$('#EA').hide();	
	$('#ea01').click(function(e){
    	$('#JP').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#EA').show();
	});	
});	
$(function(){
	$('#US').hide();	
	$('#us01').click(function(e){
    	$('#JP').hide();
    	$('#EA').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#US').show();
	});	
});	
$(function(){
	$('#btn_search4').click(function(){
		$('#city').show();
	});
});
$(function(){
	$('.citylist').click(function(){
		$('#txt01').val($(this).text());
		$('#city').hide();
	});
});

function close(){

	$('#city').hide();
}
//=====================================================도착도시========================================================================
  $(function(){

    $('#kr02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
    	$('#JP01').hide();
    	$('#CH01').hide();
    	$('#KR01').show();
	});	
});
$(function(){
	$('#CH01').hide();	
	$('#ch02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#JP01').hide();
		$('#CH01').show();
	});	
});	
$(function(){
	$('#JP01').hide();	
	$('#jp02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#JP01').show();
	});	
});	
$(function(){
	$('#EA01').hide();	
	$('#ea02').click(function(e){
    	$('#JP01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#EA01').show();
	});	
});	
$(function(){
	$('#US01').hide();	
	$('#us02').click(function(e){
    	$('#JP01').hide();
    	$('#EA01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#US01').show();
	});	
});	
$(function(){
	$('#btn_search5').click(function(){
		$('#city01').show();
	});
});
$(function(){
	$('.citylist01').click(function(){
		$('#txt02').val($(this).text());
		$('#city01').hide();
	});
});

function close01(){

	$('#city01').hide();
}
 </script>


</head>
<body>
<header id="header">
	<nav class="top_nav">
		<table width="auto" class="top_table">
      	<tr>
        	<th><a href="/SwingFlow/Category/Main/index.jsp">홈</a></th>
            <th><a href="/SwingFlow/Category/Shopping/Index.jsp">쇼핑</a></th>
            <th><a href="/SwingFlow/Category/Movie/Index.jsp">영화</a></th>
            <th><a href="/SwingFlow/Category/Airline/Index.jsp">항공</a></th>
            <th><a href="/SwingFlow/Category/Inn/Index.jsp">여행</a></th>
            <th><a href="/SwingFlow/Category/Common/Login.jsp">로그인</a></th>
            <th><a href="/SwingFlow/Category/Common/Join.jsp">회원가입</a></th>
            <th><a href="javascript:fnLocaleHangul();">한글</a></th>
            <th><a href="javascript:fnLocaleEnglish();">English</a></th>
        </tr>
        </table>
	</nav>
    <div>
    </div>
</header>
<form action="R2_.jsp" name="next">
<div class="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div class="main_content" >

<div id="radio" style="height:30px;"><input type="radio" id="radio1" ><label for="radio1">왕 복</label>
<input type="radio" id="radio2"  checked="checked"><label for="radio2">편 도</label></div>						
<div>
<table width="589" height="112" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="35"><div align="right">출발</div></td>
    <td width="218">
    <div style="float: left;"><img id="btn_search4" src="/SwingFlow/images/Airline/reserv/btn_search4.gif" style="padding-top: 10px;" >
    <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city">
<div style="padding: 8px 0px 23px 8px; border-bottom: 1px solid #d2d2f0">출발 예정도시를 선택하세요.<a href="javascript:close();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="width:130px; height:240px; float:left;">
<ul class="remove">
<li id="kr01">한 국</li>
<li id="jp01">일 본</li>
<li id="ch01">중 국</li>
<li id="ea01">동남아시아</li>
<li id="us01">미 국</li>
</ul>

</div>
<div style="width:180px; height:480px; float:left;" class="remove01">
<ul id="KR">
	<li><a href="#none" class="citylist">인천 (ICN)</a></li>
	<li><a href="#none" class="citylist">김포 (GMP)</a></li>
	<li><a href="#none" class="citylist">부산 (PUS)</a></li>
	</ul>
	<ul id="CH">
	<li><a href="#none" class="citylist">베이징(BJS)</a></li>
	<li><a href="#none" class="citylist">홍콩(HKG)</a></li>
	</ul>
	<ul id="JP">
	<li><a href="#none" class="citylist">도쿄/나리타 (NRT)</a></li>
	<li><a href="#none" class="citylist">하네다(HND)</a></li>
	<li><a href="#none" class="citylist">오사카(간사이)(OSA)</a></li>
	</ul>
	<ul id="EA">
	<li><a href="#none" class="citylist">방콕</a></li>
	<li><a href="#none" class="citylist">세부(HND)</a></li>
	<li><a href="#none" class="citylist">싱가폴(OSA)</a></li>
	<li><a href="#none" class="citylist">푸켓</a></li>
	</ul>
	<ul id="US">
	<li><a href="#none" class="citylist">로스앤젤레스 (LAX)</a></li>
	<li><a href="#none" class="citylist">샌프란시스코 (SFO)</a></li>
	<li><a href="#none" class="citylist">뉴욕(JFK)</a></li>
	<li><a href="#none" class="citylist">시애틀 (SEA)</a></li>
    <li><a href="#none" class="citylist">시카고(ORD)</a></li>
	</ul>
</div>

</div>
</div>
   	 <div style="float:left; "><input type="text" id="txt01" name="c_DepCity" style="height: 24px; margin-top: 10px; margin-left: 0px; padding-left: 10px;"></div>
    <br>
    
    </td>
    <td width="35"><div align="right">도착</div></td>
     <td width="218">
    <div style="float: left;"><img id="btn_search5" src="/SwingFlow/images/Airline/reserv/btn_search4.gif" style="padding-top: 10px;" >
    <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city01">
<div>출발 예정도시를 선택하세요.<a href="javascript:close01();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="border:1px solid black; width:130px; height:200px; float:left;">
<ul class="remove">
<li id="kr02">한 국</li>
<li id="jp02">일 본</li>
<li id="ch02">중 국</li>
<li id="ea02">동남아시아</li>
<li id="us02">미 국</li>
</ul>

</div>
<div style="border:1px solid red; width:180px; height:200px; float:left;" class="remove01">
<ul id="KR01">
	<li><a href="#none" class="citylist01">인천 (ICN)</a></li>
	<li><a href="#none" class="citylist01">김포 (GMP)</a></li>
	<li><a href="#none" class="citylist01">부산 (PUS)</a></li>
	</ul>
	<ul id="CH01">
	<li><a href="#none" class="citylist01">베이징(BJS)</a></li>
	<li><a href="#none" class="citylist01">홍콩(HKG)</a></li>
	</ul>
	<ul id="JP01">
	<li><a href="#none" class="citylist01">도쿄/나리타 (NRT)</a></li>
	<li><a href="#none" class="citylist01">하네다(HND)</a></li>
	<li><a href="#none" class="citylist01">오사카(간사이)(OSA)</a></li>
	</ul>
	<ul id="EA01">
	<li><a href="#none" class="citylist01">방콕</a></li>
	<li><a href="#none" class="citylist01">세부(HND)</a></li>
	<li><a href="#none" class="citylist01">싱가폴(OSA)</a></li>
	<li><a href="#none" class="citylist01">푸켓</a></li>
	</ul>
	<ul id="US01">
	<li><a href="#none" class="citylist01">로스앤젤레스 (LAX)</a></li>
	<li><a href="#none" class="citylist01">샌프란시스코 (SFO)</a></li>
	<li><a href="#none" class="citylist01">뉴욕(JFK)</a></li>
	<li><a href="#none" class="citylist01">시애틀 (SEA)</a></li>
    <li><a href="#none" class="citylist01">시카고(ORD)</a></li>
	</ul>
</div>

</div>
</div>
   	 <div style="float:left; "><input type="text" id="txt02" name="c_ArrCity" style="height: 24px; margin-top: 10px; margin-left: 0px; padding-left: 10px;"></div>
  </tr>
  <tr>
    <td height="30" id="getOut"><div align="right">가는날</div></td>
    <td><input type="text" id="datepicker" name="s_DepDay"></td>
    <td class="getIn"><div align="right">오는날</div></td>
    <td class="getIn"><input type="text" id="datepicker01" name="s_DepDay"></td>
  </tr>
</table>
<table width="308" height="74" cellpadding="0" cellspacing="0" border="1" >
  <col width="70" span="3" />
  <tr >
    <td width="100" height="39" align="center"><p style="margin-bottom:5px;">
      <select name="p_nAdult" >
        <option>성인1</option>
        <option>성인2</option>
        <option>성인3</option>
        <option>성인4</option>
        <option>성인5</option>
        <option>성인6</option>
        <option>성인7</option>
        <option>성인8</option>
        <option>성인9</option>
      </select>
    </p>
      <p style="margin-top:1px;">(13세~) </p></td>
    <td width="100" align="center"><p style="margin-bottom:5px;"><select id="select" name="p_nChild">
       <option>소아1</option><option>소아2</option><option>소아3</option><option>소아4</option><option>소아5</option><option>소아6</option><option>소아7</option><option>소아8</option><option>소아9</option>
    </select> </p> <p style="margin-top:1px;">(2~12세) </p></td>
    <td width="100" align="center"><p style="margin-bottom:5px;">
      <select id="select2" name="p_nInfant">
        <option>유아1</option>
        <option>유아2</option>
        <option>유아3</option>
        <option>유아4</option>
        <option>유아5</option>
        <option>유아6</option>
        <option>유아7</option>
        <option>유아8</option>
        <option>유아9</option>
      </select>
    </p>
      <p style="margin-top:1px;">(2세 미만) </p></td>
  </tr>
  <tr >
    <td height="33" colspan="3" ><div style="margin-left:100px;"><select name="seat_Class" id="select3">
      <option>트래블</option>
      <option>비즈니스</option>
      <option>퍼스트</option>
      </select></div></td>
  </tr>
</table>
</div>

<p ><div style="margin-left:450px">
  <input type="submit"  value="항공편 조회하기" class="bt_login" /></div>
</p>

</div>

</div>
</form>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
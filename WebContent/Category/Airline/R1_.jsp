<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">

  <script>
  $(function() {
    $( "#radio" ).buttonset();
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

    $( "#datepicker" ).datepicker({
    	dateFormat: "yy-mm-dd",
 showOn: "button",
  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
  buttonImageOnly: true,
  changeMonth: true,
  changeYear: true
    });
  });
  $(function() {

	    $( "#datepicker01" ).datepicker({
	    	dateFormat: "yymmdd",
	  showOn: "button",
	  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
	  buttonImageOnly:true,
	  changeMonth: true,
	  changeYear: true
	    });
	  });
  /* 도시리스트 ========= ============================================================================================*/
  $(function(){
	$('#KR').hide();
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
 </script>
</head>

<style>
.remove {
list-style: none;
}
.remove li a {
text-decoration: none;
color:black;
}
.remove01 ul li a{
text-decoration: none;
color:black;
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

<div id="radio"><input type="radio" id="radio1" name="radio"><label for="radio1">왕 복</label>
<input type="radio" id="radio2" name="radio" checked="checked"><label for="radio2">편 도</label></div>						
<div>
<table width="589" height="79" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="70">출발</td>
    <td width="218">
    <div style="float: left;"><img id="btn_search4" src="/SwingFlow/images/Airline/reserv/btn_search4.gif" style="padding-top: 10px;" >
    <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city">
<div>출발 예정도시를 선택하세요.<a href="javascript:close();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="border:1px solid black; width:130px; height:240px; float:left;">
<ul class="remove">
<li id="kr01"><a href="#none">한 국</a></li>
<li id="jp01"><a href="#none">일 본</a></li>
<li id="ch01"><a href="#none">중 국</a></li>
<li id="ea01"><a href="#none">동남아시아</a></li>
<li id="us01"><a href="#none">미 국</a></li>
</ul>

</div>
<div style="border:1px solid red; width:180px; height:480px; float:left;" class="remove01">
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
   	 <div style="float:left; "><input type="text" id="txt01" style="height: 24px; margin-top: 10px; margin-left: 0px; padding-left: 10px;"></div>
    <br>
    
    </td>
    <td width="70">도착</td>
     <td width="218">
    <div style="float: left;"><img id="btn_search4" src="/SwingFlow/images/Airline/reserv/btn_search4.gif" style="padding-top: 10px;" >
    <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city">
<div>출발 예정도시를 선택하세요.<a href="javascript:close();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="border:1px solid black; width:130px; height:200px; float:left;">
<ul class="remove">
<li id="kr01"><a href="#none">한 국</a></li>
<li id="jp01"><a href="#none">일 본</a></li>
<li id="ch01"><a href="#none">중 국</a></li>
<li id="ea01"><a href="#none">동남아시아</a></li>
<li id="us01"><a href="#none">미 국</a></li>
</ul>

</div>
<div style="border:1px solid red; width:180px; height:200px; float:left;" class="remove01">
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
   	 <div style="float:left; "><input type="text" id="txt01" style="height: 24px; margin-top: 10px; margin-left: 0px; padding-left: 10px;"></div>
  </tr>
  <tr>
    <td id="getOut">가는날</td>
    <td><input type="text" id="datepicker"></td>
    <td class="getIn">오는날</td>
    <td class="getIn"><input type="text" id="datepicker01"></td>
  </tr>
</table>
<table width="600" height="74" cellpadding="0" cellspacing="0" border="1">
  <col width="70" span="3" />
  <tr>
    <td width="70" height="39"><select name="">
      <option>성인1</option><option>성인2</option><option>성인3</option><option>성인4</option><option>성인5</option><option>성인6</option><option>성인7</option><option>성인8</option><option>성인9</option>
  </select></td>
    <td width="70"><select name="select" id="select">
      <option>소아1</option>
    </select></td>
    <td width="70"><select name="select2" id="select2">
      <option>유아1</option>
    </select></td>
  </tr>
    <tr>
    <td width="70" height="39">(13세~)</td>
    <td width="70">(2~12세)</td>
    <td width="70">(2세 미만)</td>
  </tr>
  <tr>
    <td height="33" colspan="3"><select name="select3" id="select3">
      <option>트래블</option>
    </select></td>
  </tr>
</table>
</div>
<p>
  <input type="submit" name="button" id="button" value="항공편 조회하기" />
</p>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
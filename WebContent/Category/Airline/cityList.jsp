<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script type="text/javascript" src="/SwingFlow/Script/Airline/ajaxJson.js"></script>
<script type="text/javascript">
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
	$('#btn').click(function(){
		$('#city').show();
	});
});
$(function(){
	$('.citylist').click(function(){
		$('#txt').val($(this).text());
	});
});

</script>

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
</style>
</head>
<body>
<input type="button" value="검색" id="btn"><input type="text" id="txt">
<div style="border:1px solid black; width:600px; height:500px;" id="city">
<div>출발 예정도시를 선택하세요.</div>
<div style="border:1px solid black; width:180px; height:480px; float:left;">
<ul class="remove">
<li id="kr01"><a href="#none">한 국</a></li>
<li id="jp01"><a href="#none">일 본</a></li>
<li id="ch01"><a href="#none">중 국</a></li>
<li id="ea01"><a href="#none">동남아시아</a></li>
<li id="us01"><a href="#none">미 국</a></li>
</ul>

</div>
<div style="border:1px solid red; width:280px; height:480px; float:left;" class="remove01">
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
	<li><a href="#none" class="citylist">오사카(OSA)</a></li>
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

</body>

</html>
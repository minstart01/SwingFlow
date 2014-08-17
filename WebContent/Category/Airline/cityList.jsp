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
    $('#CH').hide();
    $('#KR').show();
	});	
});
$(function(){
	$('#CH').hide();	
	$('#ch01').click(function(e){
		$('#KR').hide();
		$('#CH').show();
	});	
});

</script>

<style>

</style>
</head>
<body>
<div>
<ul>
<li id="kr01"><a href="#none">한국</a></li>
<li id="ch01"><a href="#none">중국</a></li>
<li><a href="#none">일본</a></li>
<li><a href="#none">미국</a></li>
</ul>
</div>
<div id="KR">
<li val="ICN" direct="Y"><a href="#none" id="ICN">인천 (ICN)</a></li>
<li val="GMP" direct="Y"><a href="#none" id="GMP">김포 (GMP)</a></li>
<li val="PUS" direct="Y"><a href="#none" id="PUS">부산 (PUS)</a></li>
</div>
</div>
<div id="CH">
<li val="ICN" direct="Y"><a href="#none" id="ICN">베이징 ()</a></li>
<li val="GMP" direct="Y"><a href="#none" id="GMP">김포 (GMP)</a></li>
<li val="PUS" direct="Y"><a href="#none" id="PUS">부산 (PUS)</a></li>
</div>
</body>

</html>
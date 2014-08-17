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
		$('#getIn01').hide();
	});
});
$(function(){
	$('#radio1').click(function(){
		$('#getIn01').show();
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
 </script>
</head>

<style>



</style>

</head>
<body>
<div id="radio"><input type="radio" id="radio1" name="radio"><label for="radio1">왕 복</label>
<input type="radio" id="radio2" name="radio" checked="checked"><label for="radio2">편 도</label></div>
<table width="600" height="120" cellpadding="0" cellspacing="0" border="1">
<tr>
<td ><p>가는날<input type="text" id="datepicker"></p></td>
<td ><p>오는날<input type="text" id="datepicker01" /></p></td>
</tr>
<tr>
<td ><p>출발<input type="text" id="datepicker"></p></td>
<td ><p>도착<input type="text" id="datepicker01" /></p></td>
</tr>
</table>
<table width="600" height="74" cellpadding="0" cellspacing="0" border="1">
  <col width="70" span="3" />
  <tr>
    <td width="70" height="39"><select name="">
      <option>성인1</option>
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
<p>
  <input type="submit" name="button" id="button" value="항공편 조회하기" />
</p>

</body>
</html>
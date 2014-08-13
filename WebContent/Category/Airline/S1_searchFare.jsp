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
  $(function(){
	  $('#SearchFare').click(function(e){
		  $('#dvResult').empty();
		  $('#dvResult').load("S2_FareDetail.jsp");
	  });
  });
  
  </script>
</head>

<body>
<table  cellpadding="0" cellspacing="0" border="1">
  <tr>
    <td width="142" height="23">출발</td>
    <td width="107">　</td>
    <td width="180">도착</td>
    <td width="142">　</td>
    <td width="142">　</td>
  </tr>
  <tr>
    <td colspan="2" align="center">　
      <select name="select" id="select">
        <option>서울</option>
        <option>대구</option>
        <option>부산</option>
        <option>제주</option>
    </select></td>
        <td colspan="2" align="center">　
      <select name="select" id="select">
        <option>서울</option>
        <option>대구</option>
        <option>부산</option>
        <option>제주</option>
    </select></td>
    <td><input type="submit" name="button" id="SearchFare" value="조회하기" /></td>
  </tr>
</table>
<br>
<table id="dvResult">

</table>
</body>
</html>

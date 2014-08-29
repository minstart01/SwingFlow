<%@page import="java.util.ArrayList"%>
<%@page import="Common.DTO.Address"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.zipcodesearch{
	width:400px;
	height:280px;

	font-size:14px;
}
.search_box{
	
	width:390px;
	height:30px;
	padding-top:5px;
	padding-bottom:5px;
	margin-left:5px;
	
}
.search_result{
	margin:10px 0 0 5px;
	border:1px solid gray;
	width:390px;
	height:180px;	
}
.search
{	
	margin-left:5px;
	border:none;
	height:23px;
	border-radius:3px;
	width:60px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
}
</style>
</head>

<body>
<form action="NewFile.jsp">
<div style="margin-left:5px;">
<h2>우편번호검색</h2></div>
<div class="zipcodesearch">
<div class="search_box">
<div style="width:120px; float:left; margin-top:5px; margin-right:3px; font-weight:bold">검색어(읍/면/동)</div>
<div style="width:260px; float:left;"><input type="text" size="25" name="dong"/><input type="submit" value="검색" class="search" /></div>

</div>
<div style="margin:20px 0 0 7px; font-weight:bold;">검색결과</div>
<div class="search_result">
	<table border="1">
		<tr>
			<td>우편번호</td>
			<td>주소</td>
		</tr>
	
	</table>			
</div>

</div>
</form>
</body>
</html>

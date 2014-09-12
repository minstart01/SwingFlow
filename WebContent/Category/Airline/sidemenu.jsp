<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#sidebar{
	
	padding-top:20px;
	padding-bottom:20px;
	width:215px;
	float:left;
	
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
}
#sidebar ul{
	list-style:none;
	padding-left:30px;
	padding-right: 30px;
}
#sidebar ul li{
	border-bottom:solid 1px #FFF;	
	margin-bottom:5px;
}
#sidebar ul li a{
	padding-top:5px;
	padding-bottom:5px;
	display:block;
	text-decoration:none;	
	font-size:12px;
	font-family:Arial, Helvetica, sans-serif;
	font-weight:bold;	
	 text-shadow: 1px 1px #000;
 	 background: transparent; 
  	 color: #FFF;
	 padding-left:13px;
}
.li{
	border-top:solid 1px #FFF;
}

#sidebar ul li a:hover{
	color: white;
  	text-shadow: 1px 1px #43A9FF;
}
#sidebar ul h2{
	color: #FFF;
	font-weight:bold;	
}

</style>


</head>
<body>
<nav id="sidebar" class="column-left">
		<ul>
        <h4 style="color: white;">항공권 예매</h4>
			<li class="li"><a href="/SwingFlow/Category/Airline/R1_.jsp">국제선</a></li>
			<li><a href="#">예약조회</a></li>
		</ul>
		<ul>
		<h4 style="color: white;">마이페이지</h4>
		  	<li><a href="#">마일리지 조회</a></li>
			 <li><a href="#">회원정보</a></li>
</ul>
		<ul>
		<h4 style="color: white;">운임조회</h4>
			<li class="li"><a href="#">국제선 운임조회</a></li>
		</ul>
				<ul>
		<h4 style="color: white;">스케줄 조회</h4>
			<li class="li"><a href="info.jsp">스케줄 조회</a></li>
		</ul>
				<ul>
		<h4 style="color: white;">관리자페이지</h4>
		  	<li><a href="/SwingFlow/Category/Airline/register/Admin_insertSchedule.jsp">스케줄관리</a></li>
			 <li><a href="Admin_list.jsp">예약관리</a></li>
			 <li><a href="Admin_memberlist.jsp">회원관리</a></li>
</ul>
		
		</nav>
</body>
</html>
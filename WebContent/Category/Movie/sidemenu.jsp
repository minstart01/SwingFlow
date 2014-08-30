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
	width:250px;
/* 	position:relative; */
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
        <h2>영화</h2>
			<li class="li"><a href="/SwingFlow/Category/Movie/Movies/BoxOffice.jsp">박스오피스</a></li>
			<li><a href="/SwingFlow/Category/Movie/Movies/NowMovie.jsp">현재상영작</a></li>
			<li><a href="#">영화정보</a></li>
			<li><a href="#">뉴스</a></li>
		</ul>
		<ul>
		<h2>예매</h2>
			<li class="li"><a href="/SwingFlow/Category/Movie/Reserve/Reserve.jsp">예매하기</a></li>
		  	<li><a href="/SwingFlow/Category/Movie/Reserve/ReserveCheck.jsp">예매확인/취소</a></li>
			 <li><a href="#">상영시간표</a></li>
			 
		</ul>
		<ul>
		<h2>영화관</h2>
			<li class="li"><a href="#">영화관 정보</a></li>
		  	<li><a href="#">서브메뉴2</a></li>
			
		</ul>
		<ul>
		<h2>고객센터</h2>
			<li class="li"><a href="/SwingFlow/Category/Movie/Support/Notice.jsp">공지사항</a></li>
		  	<li><a href="#">이용안내</a></li>
		  	<li><a href="#">Q&A</a></li>
		  	<li><a href="#">단체관람문의</a></li>
			
		</ul>
		<ul>
		<h2>관리자 메뉴</h2>
			<li class="li"><a href="/SwingFlow/Category/Movie/Admin/MovieManage/ListMovie.jsp">영화관리</a></li>
		  	<li><a href="/SwingFlow/Category/Movie/Admin/TheaterManage/InsertTheater.jsp">영화관관리</a></li>
		  	<li><a href="#">게시판관리</a></li>
		  	<li><a href="/SwingFlow/Category/Movie/Admin/UserManage/ListUser.jsp">회원관리</a></li>
			
		</ul>
		</nav>
</body>
</html>
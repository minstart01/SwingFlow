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
        <h2>메뉴1</h2>
			<li class="li"><a href="#">서브메뉴1</a></li>
			<li><a href="#">서브메뉴2</a></li>
			<li><a href="#">서브메뉴3</a></li>
			<li><a href="#">서브메뉴4</a></li>
			<li><a href="#">서브메뉴5</a></li>
		</ul>
		<ul>
		<h2>메뉴2</h2>
			<li class="li"><a href="#">서브메뉴1</a></li>
		  	<li><a href="#">서브메뉴2</a></li>
			 <li><a href="#">서브메뉴3</a></li>
			 <li><a href="#">서브메뉴4</a></li>
			 <li><a href="#">서브메뉴15</a></li>
		</ul>
		<ul>
		<h2>메뉴3</h2>
			<li class="li"><a href="#">서브메뉴1</a></li>
		  	<li><a href="#">서브메뉴2</a></li>
			 <li><a href="#">서브메뉴3</a></li>
			 <li><a href="#">서브메뉴4</a></li>
			 <li><a href="#">서브메뉴15</a></li>
		</ul>
		
		</nav>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="jquery-2.1.1.js"></script>

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
	/* border-bottom:solid 1px #FFF;	
	margin-bottom:5px; */
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
.first{
border-bottom:solid 1px #FFF;	
}
</style>

<script>
	$(function(){
		$(".submenu").hide();
		$(".menu").mouseenter(function(e) {
            $(".submenu1").show();
        });	
		$(".menu").mouseleave(function(e) {
            $(".submenu1").hide();
        });
		$(".menu1").mouseenter(function(e) {
            $(".submenu2").show();
        });	
		$(".menu1").mouseleave(function(e) {
            $(".submenu2").hide();
        });
		$(".menu2").mouseenter(function(e) {
            $(".submenu3").show();
        });	
		$(".menu2").mouseleave(function(e) {
            $(".submenu3").hide();
        });
		
	});
</script>
</head>
<body>
<nav id="sidebar" class="column-left">
		<ul class="menu">
        	<li class="first"><h2>메뉴</h2></li>
			<li>
            	<ul class="submenu submenu1">
                	<li><a href="#">서브메뉴1</a></li>
                    <li><a href="#">서브메뉴2</a></li>
                    <li><a href="#">서브메뉴3</a></li>
                    <li><a href="#">서브메뉴4</a></li>
                </ul>
            </li>
        </ul>
        <ul class="menu1">
		   	<li class="first"><h2>메뉴1</h2></li>
			<li>
            	<ul class="submenu submenu2">
                	<li><a href="#">서브메뉴1</a></li>
                    <li><a href="#">서브메뉴2</a></li>
                    <li><a href="#">서브메뉴3</a></li>
                    <li><a href="#">서브메뉴4</a></li>
                </ul>
            </li>
        </ul>
        <ul class="menu2">
		   	<li class="first"><h2>메뉴2</h2></li>
			<li>
            	<ul class="submenu submenu3">
                	<li><a href="#">서브메뉴1</a></li>
                    <li><a href="#">서브메뉴2</a></li>
                    <li><a href="#">서브메뉴3</a></li>
                    <li><a href="#">서브메뉴4</a></li>
                </ul>
            </li>
		</ul>
</nav>
</body>
</html>
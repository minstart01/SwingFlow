<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css" />
<style type="text/css">
	#wrapper{
	 	
		height:2000px;
		width:1250px;
		clear:both;
		
	}
	#main_content{
	/* border:1px solid black; */
		position:absolute;
		top:30px;
		left: 275px;
		width: 960px;
		height: 2000px;
		
	}
	
	#mainPic{
		margin-left: 0px;
		display: inline;
	
	}
	
	img{
		margin-left: 10px;
	}
	
/* 	#mainPost{
		border-top: 2px solid #ddd;
		border-bottom: 2px solid #ddd;
	} */
	
	.main-script-size{
		width:300px;
		height:200px;
		text-indent:10px;
		overflow:hidden;
	
	}
	
	.post-line-both{
		border-left: 1px solid #ddd;
		border-right: 1px solid #ddd;
	}
	
	.post-line-top{
		border-top: 1px solid #ddd;
	
	}
	
	.sub{
		width: 315px;
		height: 470px;
		float: left;
	}

	.read{
		background: url(../../images/Inn/arrow-right.png) no-repeat 85% 50%;
		visibility:visible;
	}
	
	.read:hover{
		background: url(../../images/Inn/arrow-right_active.png) no-repeat 95% 50%;
	}	
</style>
</head>
<body>
<jsp:include page="../Common/top.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="sidemenu.jsp"></jsp:include>

<div id="main_content">

<div>
<p class=""><a href="#"><img  width="600" height="390" src="../../images/Inn/go.jpg"/>   </a></p>
<div>
<h2>내린천으로 놀러가요~!</h2>
<p class="main-script-size">풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<a class="read" href="#">read</a>
</div>
</div> <!-- main 게시물 -->

<div id="mainPost">
<div class="sub post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/a300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 1번째 게시물 -->

<div class="sub post-line-both post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/b300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 2번째 게시물 -->

<div class="sub post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/c300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 3번째 게시물 -->

<div class="sub post-line-top" >
<p>
<a href="#"><img src="/SwingFlow/images/Inn/d300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 4번째 게시물 -->

<div class="sub post-line-top post-line-both">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/e300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 5번째 게시물 -->

<div class="sub post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/f300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 6번째 게시물 -->

<div class="sub post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/g300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 7번째 게시물 -->

<div class="sub post-line-top post-line-both">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/h300.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 8번째 게시물 -->

<div class="sub post-line-top">
<p>
<a href="#"><img src="/SwingFlow/images/Inn/10-300x168.jpg"/></a>
</p>
<div>
<h3>내린천으로 놀러가요~!</h3>
<p>풍경은 좋으나 물놀이가 하기 힘들어요 저는 운전을 하지 못하기에~ 저희 아버지께서 지리를 말씀하시기를 여기서 풍경만 좋지 물놀이는 힘들다! 내려가면 캠핑하는곳이랑 계곡 바로 앞에 물놀이 할 수 있는 곳 이 있어
편하긴 해요 하지만 성수기라서 저희는 그런 좋은자리는 다 못잡았어요... </p>
<p>
<a href="#">read</a>
</p>
</div>
</div> <!-- 9번째 게시물 -->
</div><!-- mainPost 끝 -->





</div>
</div>

<%--  <jsp:include page="../Common/footer.jsp"></jsp:include> --%>
</body>
</html>
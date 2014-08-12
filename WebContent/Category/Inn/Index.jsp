<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	
</script>
<style type="text/css">

	#wrapper{
	 	
		height:2000px;
		width:1250px;
		clear:both;
		
	}
	
	#main_content{
		/* 
		vertical-align: middle;
		text-align: center;
		cursor: pointer;
		 */
		position:absolute;
		top:30px;
		left: 275px;
		width: 960px;
		height: auto;
		z-index: 0;
	}
	
	#top_all{
		border-top: 3px solid #ddd;
		/* text-shadow: 5px 2px 2px black, -2px -2px 2px black; */
		/* border-bottom: 1px solid #ddd; */
		width: 960px;
		height: 427px;
		display: block;
		padding-top: 15px;
		z-index: 0;
	}
	
	#top_pic{
		width: 950px;
		height: 412px;
		float:left;
		z-index: 0;
	}
	
	#top_search{
		position:absolute;
		top:360px;
		opacity:0.8;
		width:960px;
		height:70px;
		background-color: #B2CCFF;
		z-index: 100;
	}
	
	#top_search_type {
		padding: 20px 100px;
	}
	
	#top_search_type_1 {
		width: 250px;
	}
	
	#top_search_type_2 {
		width: 150px;
	}
	
	#top_search_type_3 {
		width: 150px;
	}
	
	#top_search_type_4 {
		width: 150px;
		background-color: #FF8383;
	}

	#txt_a{
		font-family: 맑은 고딕;
		font-size: 23px;
		text-align: center;
		
	}
	
	#txt_b{
		font-family: 맑은 고딕;
		font-size: 18px;
		text-align: center;
	}
	
	
	
	/* ------------------------------------------------top--------------------------------------------------------- */
	
	#mid_all{
		/* border-top: 1px solid #ddd; */
		/* border-bottom: 1px solid #ddd; */
		width: 960px;
		height: 900px;
		display: block;
		margin-top: 30px;
		padding-bottom: 30px;
	}
	
	.mid_pic{
		float:left;
		margin-right: 35px;

	}

	.mid_title_top{
	position: absolute;
		color: white;
		font-family: 맑은 고딕;
		font-size: 28px;
		padding-left: 110px;
		bottom:1090px;
		text-shadow: 2px 2px 2px black, -2px -2px 2px black;
	}
	
	.mid_title_mid{
	position: absolute;
		color: white;
		font-family: 맑은 고딕;
		font-size: 28px;
		padding-left: 110px;
		bottom:830px;
		text-shadow: 2px 2px 2px black, -2px -2px 2px black;
	}
	
	.mid_title_bot{
		position: absolute;
		color: white;
		font-family: 맑은 고딕;
		font-size: 28px;
		padding-left: 110px;
		bottom:570px;
		text-shadow: 2px 2px 2px black, -2px -2px 2px black;
	} 
	
	.mid_each{

	}
	
	.mid_img{
		width: 280px;
		height: 205px;
	}
	
	/* ------------------------------------------------mid--------------------------------------------------------- */
	#bot_title h2{
		font-family: 맑은 고딕;
		font-size: 34px;
		text-align: center;
		padding-bottom: 0px;
		padding-top: 0px;
	}
	#bot_all{
		border-top: 3px solid #ddd;
		border-bottom: 3px solid #ddd;
		width: 960px;
		height: 480px;
		display: block;
		clear: both;
		/* margin-left:20px; */
	}

	.bot_sub{
		width: 280px;
		height: 350px;
		float: left;
		padding-left:20px;
		margin-right: 15px;
	}
	
	.bot_sub_title{
		position: absolute;
		font-family: 맑은 고딕;
		font-size: 32px;
		color:white;
		text-shadow: 2px 2px 2px black, -2px -2px 2px black;
/* 		text-shadow: x y blur color;
					x offset , y offset, blur, color */
		bottom: 150px;
		padding-left: 70px;
	}
	/* ------------------------------------------------bot--------------------------------------------------------- */
	
	#mid_top, #mid_mid, #mid_bot{
		border-top: 1px solid #ddd;
		padding-left: 20px;
		padding-top: 20px;
		height:	240px;
		width: 960px;
	}
	a:hover{
		 color:black;
	}
	
	img{
		border:0
	}
</style>
</head>
<body>
<jsp:include page="../Common/top.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="sidemenu.jsp"></jsp:include>

<div id="main_content">
<div id="top_all">
<div id="top_pic"><img src="../../images/Inn/top.jpg">
	<div id="top_search">
		<div id="top_search_type">
			<input id="top_search_type_1" type="search" value="어디 가고 싶으신가요?"/>
			<input id="top_search_type_2" type="text" value="체크인"/>
			<input id="top_search_type_3" type="text" value="체크아웃"/>
			<input id="top_search_type_4" type="submit" value="검색"/>
		</div>
	</div>
</div>

</div>
<!-- 메인 게시물 -->


<div id="mid_all">
	<div>
		<div id="txt_a"><h1>나만의 모험 시작하기</h1></div>
		<div id="txt_b"></h3>사랑스러운 여행지들을 찾아보세요.</h3><div>
	</div>
<div id="mid_top">
<div id="mid_1" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/1_.jpg"><div class="mid_title_top">호주</div></a></div>
</div>
<!-- 1번째 게시물 -->

<div id="mid_2" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/2.jpg"><div class="mid_title_top">미국</div></a></div>
</div>
<!-- 2번째 게시물 -->

<div id="mid_3" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/3.jpg"><div class="mid_title_top">캐나다</div></a></div>
</div>
</div>
<!-- 3번째 게시물 -->

<div id="mid_mid">
<div id="mid_4" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/4.jpg"><div class="mid_title_mid">페루</div></a></div>
</div>
<!-- 4번째 게시물 -->

<div id="mid_5" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/5.jpg"><div class="mid_title_mid">이탈리아</div></a></div>
</div>
<!-- 5번째 게시물 -->

<div id="mid_6" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/6.jpg"><div class="mid_title_mid">몰디브</div></a></div>
</div>
</div>
<!-- 6번째 게시물 -->

<div id="mid_bot">
<div id="mid_7" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/7.jpg"><div class="mid_title_bot">뉴질랜드</div></a></div>
</div>
<!-- 7번째 게시물 -->

<div id="mid_8" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/8.jpg"><div class="mid_title_bot">프랑스</div></a></div>
</div>
<!-- 8번째 게시물 -->

<div id="mid_9" class="mid_each">
<div class="mid_pic"><a href="/"><img class="mid_img" src="../../images/Inn/9.jpg"><div class="mid_title_bot">스페인</div></a></div>
</div>
</div>
<!-- 9번째 게시물 -->

</div>

<div id="bot_all">
	<div id="bot_title"><h2> Our Community </h2></div>
	<div class="bot_sub"><a href="/"><img src="../../images/Inn/sub_1_280x350.jpg"/><div class="bot_sub_title">영화보기</div></a></div>
	<div class="bot_sub"><a href="/"><img src="../../images/Inn/sub_2_280x350.png"/><div class="bot_sub_title">쇼핑하기</div></a></div>
	<div class="bot_sub"><a href="/"><img src="../../images/Inn/sub_3_280x350.jpg"/><div class="bot_sub_title">항공예약</div></a></div>
</div>
</div>
<br/><br/><br/><br/>
</div>
</body>
</html>
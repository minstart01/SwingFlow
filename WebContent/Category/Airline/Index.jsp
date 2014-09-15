<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ARaynorDesign Template</title>
<meta name="description" content="free website template">
<meta name="keywords" content="enter your keywords here">

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Airline/style.css">
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css">
<script type="text/javascript" src="/SwingFlow/Script/Airline/jquery.min.js"></script>
<script type="text/javascript" src="/SwingFlow/Script/Airline/jquery.easing.min.js"></script>
<script type="text/javascript" src="/SwingFlow/Script/Airline/jquery.lavalamp.min.js"></script>
<script type="text/javascript" src="/SwingFlow/Script/Airline/jquery.nivo.slider.pack.js"></script>
<script type="text/javascript">
/* 달력 ============================================================================================  */
 
  $(function() {

    $("#datepicker").datepicker({
    	dateFormat: "yy-mm-dd",
 showOn: "button",
  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
  buttonImageOnly: true,
  changeMonth: true,
  changeYear: true
    });
  });
  $(function() {

	    $("#datepicker01" ).datepicker({
	    	dateFormat: "yy-mm-dd",
	  showOn: "button",
	  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
	  buttonImageOnly:true,
	  changeMonth: true,
	  changeYear: true
	    });
	  });
  /* 도시리스트 =====================================================================================================*/
  $(function(){

    $('#kr01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
    	$('#JP').hide();
    	$('#CH').hide();
    	$('#KR').show();
	});	
});
$(function(){
	$('#CH').hide();	
	$('#ch01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#JP').hide();
		$('#CH').show();
	});	
});	
$(function(){
	$('#JP').hide();	
	$('#jp01').click(function(e){
    	$('#EA').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#JP').show();
	});	
});	
$(function(){
	$('#EA').hide();	
	$('#ea01').click(function(e){
    	$('#JP').hide();
    	$('#US').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#EA').show();
	});	
});	
$(function(){
	$('#US').hide();	
	$('#us01').click(function(e){
    	$('#JP').hide();
    	$('#EA').hide();
		$('#KR').hide();
		$('#CH').hide();
		$('#US').show();
	});	
});	
/* 도시검색버튼====================  */
$(function(){
	$('#btn_search4').click(function(){
		$('#city').show();
	});
});
$(function(){
	$('.citylist').click(function(){
		$('#txt01').val($(this).text());
		$('#city').hide();
	});
});

function close(){

	$('#city').hide();
}
//=====================================================도착도시========================================================================
  $(function(){

    $('#kr02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
    	$('#JP01').hide();
    	$('#CH01').hide();
    	$('#KR01').show();
	});	
});
$(function(){
	$('#CH01').hide();	
	$('#ch02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#JP01').hide();
		$('#CH01').show();
	});	
});	
$(function(){
	$('#JP01').hide();	
	$('#jp02').click(function(e){
    	$('#EA01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#JP01').show();
	});	
});	
$(function(){
	$('#EA01').hide();	
	$('#ea02').click(function(e){
    	$('#JP01').hide();
    	$('#US01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#EA01').show();
	});	
});	
$(function(){
	$('#US01').hide();	
	$('#us02').click(function(e){
    	$('#JP01').hide();
    	$('#EA01').hide();
		$('#KR01').hide();
		$('#CH01').hide();
		$('#US01').show();
	});	
});	
$(function(){
	$('#btn_search5').click(function(){
		$('#city01').show();
	});
});
$(function(){
	$('.citylist01').click(function(){
		$('#txt02').val($(this).text());
		$('#city01').hide();
	});
});

function close01(){

	$('#city01').hide();
}
function nextEdit() {
	document.next.submit();
};

	$(function() {
		$("#lava_menu").lavaLamp({
			fx : "backout",
			speed : 800
		});
	});

	$(window).load(function() {
		$('#slider').nivoSlider();
	});
	
	function select(on,off){
		$(".btn0" + on).css("border-bottom-color","#FFF");
		$(".btn0" + on).css("background-color","#FFF");
		$(".btn0" + off).css("border-bottom-color","#CCC");
		$(".btn0" + off).css("background-color","#CCC");
		
		if(on==2){
			$(".cal_btn02").hide();	
		}else if(on==1){
			$(".cal_btn02").show();	
		}
	}
</script>
<style>

.main_content{
	border-radius:5px;
	border:1px solid #80F5FF;	
	width:321px;
	height:291px;
	font-size:12px;
	padding: 20px 0 0 20px;
	position: absolute;
	background-color: white;
	left: 320px;
	top: 46px;
}
.top_btn{
	border-bottom:1px solid #CCC;
	height:25px;	
	width:288px;
}	
.btn01, .btn02{
	border:1px solid #CCC;
	float:left;
	width:35px;
	padding:5px 6px 5px 6px;
	font-weight: bold;
	font-family: "돋움";	
	margin-right:5px;
	border-top-left-radius:5px;
	border-top-right-radius:5px;
	cursor:pointer;
}

.btn01{
	border-bottom-color:white;	
}
.btn02{
	background-color:#CCC;
}



/* 도시 선택 */
.search_btn01{
	margin-top:13px;
	height: 37px;
}
.search_text01{
	border: 1px solid #999999;
	margin-top:0px;
	padding:0px;
	height:28px;	
	vertical-align: top;
	width:260px;
	color:#201CB4;
	font-weight:bold;
}
.search_btn02{
	height: 37px;
}
.search_text02{
	border: 1px solid #999999;
	margin-top:0px;
	padding:0px;
	height:28px;	
	vertical-align: top;
	width:260px;
	color:#201CB4;
	font-weight:bold;
}


/* 달력 */
.cal_btn01{
	margin: 0 5px 5px 0;
	width: 142px;
	float: left;

	
}
.cal_text01{
	width: 102px;
	margin-left: -4px;
	height: 28px;
	padding: 0 0 0 9px;
	line-height: 28px;
	border: 1px solid #999;
	color: #333;
	vertical-align: top;
}
.cal_btn02{
	margin: 0 5px 5px 0;
	width: 142px;
	float: left;

	
}
.cal_text02{
	width: 102px;
	margin-left: -4px;
	height: 28px;
	padding: 0 0 0 9px;
	line-height: 28px;
	border: 1px solid #999;
	color: #333;
	vertical-align: top;
}



/* 셀렉트 박스 */
.selectbox{
	float:left;	
	margin-right:10px;
}
.select01{
	border: 1px solid #999;
	width: 71px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select02{
	border: 1px solid #999;
	width: 71px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select03{
	border: 1px solid #999;
	width: 71px;
	display: block;
	padding: 6px 6px 6px 3px;
	line-height: 30px;
	height: 30px;
}
.select_text{
	width:71px;
	float:left;	
	margin-right:10px;
}
.select_text1{
	width:71px;
	float:left;	
	margin-right:10px;
}
.sit_class{
	padding: 6px;
	line-height: 30px;
	height: 30px;
	width: 233px;
	margin-top: 3px;	
}

/* 버튼 */
.btn_box{
	float: right;
	margin-right: 32px;
	margin-top: 10px;	
}
#sel_btn{
	height: 25px;
	line-height: 25px;
	font-weight: bold;	
	width: 125px;
	background-color: red;
	border: none;
	color: #fff;
}

#wrapper {
	width: 1200px;
}

#main_content {
	width: 900px;
	float: left;
	margin-top: 25px;
	margin-left: 25px;
	font-size: 13px;
}
</style>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
 <link rel="stylesheet" href="/resources/demos/style.css">	
 <script src="//code.jquery.com/jquery-1.10.2.js"></script>
 <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
</head>

<body>
<header id="header">
	<nav class="top_nav">
		<table width="auto" class="top_table">
      	<tr>
        	<th><a href="/SwingFlow/Category/Main/index.jsp">홈</a></th>
            <th><a href="/SwingFlow/Category/Shopping/Index.jsp">쇼핑</a></th>
            <th><a href="/SwingFlow/Category/Movie/Index.jsp">영화</a></th>
            <th><a href="/SwingFlow/Category/Airline/Index.jsp">항공</a></th>
            <th><a href="/SwingFlow/Category/Inn/Index.jsp">여행</a></th>
            <th><a href="/SwingFlow/Category/Common/Login.jsp">로그인</a></th>
            <th><a href="/SwingFlow/Category/Common/Join.jsp">회원가입</a></th>
            <th><a href="javascript:fnLocaleHangul();">한글</a></th>
            <th><a href="javascript:fnLocaleEnglish();">English</a></th>
        </tr>
        </table>
	</nav>
    <div>
    </div>
</header>
	<div id="wrapper">
		<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

		<div id="main_content">
		<div class="main_content">
	<div class="top_btn">
	<div class="btn01 btn" onclick="select(1,2);">
    왕복
    </div>
    <div class="btn02 btn" onclick="select(2,1);">
    편도
    </div>
    </div>
    
    <div class="search_btn01">
    <img src="/SwingFlow/images/Airline/btn.gif" id="btn_search4" />
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text01" />
    </span>
    
    </div>
     <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city01">
<div>출발 예정도시를 선택하세요.<a href="javascript:close01();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="border:1px solid black; width:130px; height:200px; float:left;">
<ul class="remove">
<li id="kr02">한 국</li>
<li id="jp02">일 본</li>
<li id="ch02">중 국</li>
<li id="ea02">동남아시아</li>
<li id="us02">미 국</li>
</ul>

</div>
// 도시 리스트 ===============
<div style="border:1px solid red; width:180px; height:200px; float:left;" class="remove01">
<ul id="KR01">
	<li><a href="#none" class="citylist01">인천 (ICN)</a></li>
	<li><a href="#none" class="citylist01">김포 (GMP)</a></li>
	<li><a href="#none" class="citylist01">부산 (PUS)</a></li>
	</ul>
	<ul id="CH01">
	<li><a href="#none" class="citylist01">베이징(BJS)</a></li>
	<li><a href="#none" class="citylist01">홍콩(HKG)</a></li>
	</ul>
	<ul id="JP01">
	<li><a href="#none" class="citylist01">도쿄/나리타 (NRT)</a></li>
	<li><a href="#none" class="citylist01">하네다(HND)</a></li>
	<li><a href="#none" class="citylist01">오사카(간사이)(OSA)</a></li>
	</ul>
	<ul id="EA01">
	<li><a href="#none" class="citylist01">방콕</a></li>
	<li><a href="#none" class="citylist01">세부(HND)</a></li>
	<li><a href="#none" class="citylist01">싱가폴(OSA)</a></li>
	<li><a href="#none" class="citylist01">푸켓</a></li>
	</ul>
	<ul id="US01">
	<li><a href="#none" class="citylist01">로스앤젤레스 (LAX)</a></li>
	<li><a href="#none" class="citylist01">샌프란시스코 (SFO)</a></li>
	<li><a href="#none" class="citylist01">뉴욕(JFK)</a></li>
	<li><a href="#none" class="citylist01">시애틀 (SEA)</a></li>
    <li><a href="#none" class="citylist01">시카고(ORD)</a></li>
	</ul>
</div>

</div>
// 도시 리스트 끝 ===============
    <div class="search_btn02">
    <img src="/SwingFlow/images/Airline/btn.gif" />
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text02" />
    </span>
    
    </div>
    
    
    
    <div style="width:295px; height:38px;">
    <div class="cal_btn01">
    <img src="/SwingFlow/images/Airline/btn_calendar3.gif" class="ui-datepicker-trigger" />
    <span>
    	<input type="text" class="cal_text01" />
    </span>
    
    </div>
    
    <div class="cal_btn02">
    <img src="/SwingFlow/images/Airline/btn_calendar3.gif" />
    <span>
    	<input type="text" class="cal_text02" />
    </span>
    
    </div>
    </div>
    
    <div>
    	<div class="selectbox">
        	<select class="select01">
            	<option>성인1</option>
                <option>성인2</option>
                <option>성인3</option>
                <option>성인4</option>
                <option>성인5</option>
                <option>성인6</option>
                <option>성인7</option>
                <option>성인8</option>
                <option>성인9</option>
            </select>
        </div>
        <div class="selectbox">
        	<select class="select02">
            	<option>소아0</option>
            	<option>소아1</option>
                <option>소아2</option>
                <option>소아3</option>
                <option>소아4</option>
                <option>소아5</option>
                <option>소아6</option>
                <option>소아7</option>
                <option>소아8</option>
                <option>소아9</option>
            </select>
        </div>
        <div class="selectbox">
        	<select class="select03">
	            <option>유아0</option>
            	<option>유아1</option>
                <option>유아2</option>
                <option>유아3</option>
                <option>유아4</option>
                <option>유아5</option>
                <option>유아6</option>
                <option>유아7</option>
                <option>유아8</option>
                <option>유아9</option>
            </select>
        </div>

        <div style="float:left; margin-top:3px; margin-bottom:5px;">
    	<div class="select_text">
        (12세~)
        </div>
        <div class="select_text1">
        (2세~11세)
        </div>
        <div class="select_text1">
        (0~2세)
        </div>
        </div>
        
    	<div>
			<select class="sit_class">
            	<option>트래블(일반석) 클래스</option>
                <option>비지니스 클래스</option>
                <option>퍼스트 클래스</option>
            </select>
        </div>
    	
        <div class="btn_box">
        	<input type="button" value="항공편 조회하기" id="sel_btn"/>
        </div>
    </div>
    
</div>	
		
			<div id="main">
				<div id="site_content">

					<!--close header-->
					<div id="banner_image">
					<input type="image" src="/SwingFlow/images/Airline/1334.jpg"/>
						<!-- <div id="slider-wrapper">
							<div id="slider" class="nivoSlider"
								style="position: relative; background: url(file:../../images/Airline/reser.png) no-repeat;">
								<img src="/SwingFlow/images/Airline/reser.png" style="display: none;">
								<img src="../../images/Airline/reser1.png"
									style="display: none;"> <img
									src="../../images/Airline/reser2.png" style="display: none;">
								<div class="nivo-caption" style="display: none; opacity: 0;">
									<p></p>
								</div>
								<div class="nivo-directionNav" style="display: none;">
									<a class="nivo-prevNav">Prev</a><a class="nivo-nextNav">Next</a>
								</div>
								<div class="nivo-controlNav">
									<a class="nivo-control" rel="0">1</a><a
										class="nivo-control active" rel="1">2</a><a
										class="nivo-control" rel="2">3</a>
								</div>
								<div class="nivo-slice"
									style="left: 0px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) 0px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 61px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -61px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 122px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -122px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 183px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -183px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 244px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -244px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 305px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -305px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 366px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -366px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 427px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -427px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 488px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -488px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 549px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -549px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 610px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -610px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 671px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -671px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 732px; width: 61px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -732px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 793px; width: 61px; height: 100%; opacity: 1; bottom: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -793px 0% no-repeat;"></div>
								<div class="nivo-slice"
									style="left: 854px; width: 66px; height: 100%; opacity: 1; top: 0px; display: block; background: url(file:///D:/project/Blue%20Ripples%202/blue_ripples_2/images/reser1.png) -854px 0% no-repeat;"></div>
							</div>
							close slider
						</div> -->
						<!--close slider-wrapper-->
					</div>
					<!--close banner_image-->
					<div id="content">
						<div class="content_photo">
							<div class="content_image">
								<a href="R1_Regist.jsp"><img
									style="border: 10px solid #FFF;" alt="image"
									src="../../images/Airline/m1.png"></a>
								<div class="content_text">
									<h2>항공권 예매</h2>
									<p>
										국내선, 국제선 항공권 예매가 가능합니다. <br> 국내선 항공권 구매 및 예약 변경은 <br>
										해당 항공편 출발 30분전까지 가능합니다. <br> 구매 후 탑승시점에 유류할증료가 인상되어도 <br>
										차액을 징수하지 않으며 인하되어도 환급되지 않습니다.
									</p>




								</div>
							</div>
							<div class="content_image">
								<a href="M1_MileageSearch.jsp"><img
									style="border: 10px solid #FFF;" alt="image"
									src="/SwingFlow/images/Airline/m3.png"></a>
								<div class="content_text">
									<h2>마일리지 조회</h2>
									<p>
										선택일 기준 스케줄 조회가 가능합니다. <br> 예약 시 주간스케줄은 <br> 항공편 결항 및
										지연이 반영되지 않을 수 있으므로, <br> 정확한 스케줄은 항공편 예약 시 <br>
										재확인하시기 바랍니다.
									</p>
								</div>
							</div>
							<div class="content_image">
								<a href="S1_searchFare.jsp"><img
									style="border: 10px solid #FFF;" alt="image"
									src="/SwingFlow/images/Airline/m2.png"></a>
								<div class="content_text">
									<h2>운임 조회</h2>
									<p>
										국내선, 국제선 운임조회가 가능합니다. <br> 운임기준은 1인 통상 편도 운임이며, <br>
										유류할증료는 항공권 구매 시점에 따라 <br> 변경될 수 있습니다. <br> 탄력할인 운임은
										성수기 기간에는 적용되지 않습니다.
									</p>
								</div>
							</div>
						</div>
						<!--close content_photo-->
						<br style="clear: both;">
					</div>
				</div>



			</div>
		</div>
	</div>
	<%@include file="/Category/Common/footer.jsp"%>


</body>
</html>
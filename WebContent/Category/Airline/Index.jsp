<%@page import="Airline.Seat"%>
<%@page import="Airline.City"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.Nation"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%
	AdminDAO dao = AdminDAO.getInstance();
	Nation nation = new Nation();
	ArrayList<Nation> nationL = dao.nationSel();
	City city = new City();
	
	%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ARaynorDesign Template</title>
<meta name="description" content="free website template">
<meta name="keywords" content="enter your keywords here">

<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Airline/style.css">
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css">
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Airline/index.css">	
	
<script type="text/javascript"
	src="/SwingFlow/Script/Airline/jquery.min.js"></script>

<script type="text/javascript">
	
	
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

	
	var today = new Date();
	var curMonth = today.getMonth() + 1;
	var curYear = today.getFullYear();
	var isdate = new Date();
	$(function() {
		$(".curYearMonth").append(curYear + "년 " + curMonth + "월 ");
		var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		var startDay = new Date(curYear, curMonth - 1, 1);

		var firstW = startDay.getDay();

		endDate = endDay[curMonth - 1];

		var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;
		
		var isdate;
		
		var line = Math.ceil((firstW+ endDate )/ 7);

		

		
		var date = 1;
		var start = 0;
		var nextday = 1;
		var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

		for (var i = 0; i < line ; i++) {
			cal += "<tr>";
			for (var j = 0; j < 7; j++) {

				if (start < firstW) {
					cal += "<td class='firstw'>";
					/* cal += minus + start; */
					cal += "</td>";
					start++;

				} else if (date > endDate) {
					cal += "<td class='firstw'>";
					/* cal += nextday; */
					cal += "</td>";
					date++;
					nextday++;

				} else {
					isdate = new Date(curYear, curMonth - 1, date);
					cal += "<td class='day" + date + " cal_day'>";
					cal += date;
					cal += "<input type='hidden' class='week" + date + "' value='" + isdate.getDay() + "'></td>";
					date++;
				}

			}

			cal += "</tr>";

		}
		cal += "</table>";

		$(".datepi").append(cal);
	});

	function ViewPrevMonth() {
		$(".datepi").empty();
		$(".curYearMonth").empty();

		curMonth--;
		if (curMonth == 0) {
			curYear--;
			curMonth = 12;
		}

		var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		var startDay = new Date(curYear, curMonth - 1, 1);
		var firstW = startDay.getDay();

		// alert(startDay.getDay());

		endDate = endDay[curMonth - 1];
		var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;
		var nextday = 1;

		var line = Math.ceil((firstW+ endDate )/ 7);

		var date = 1;
		var start = 0;

		var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

		for (var i = 0; i < line; i++) {
			cal += "<tr>";
			for (var j = 0; j < 7; j++) {

				if (start < firstW) {
					cal += "<td class='firstw'>";
					/* cal += minus + start; */
					cal += "</td>";
					start++;

				} else if (date > endDate) {
					cal += "<td class='firstw'>";
					/* cal += nextday; */
					cal += "</td>";
					date++;
					nextday++;

				} else {
					cal += "<td class='day" + date + " cal_day'>";
					cal += date;
					cal += "</td>";
					date++;
				}

			}

			cal += "</tr>";

		}
		cal += "</table>";

		$(".curYearMonth").append(curYear + "년 " + curMonth + "월 ");
		$(".datepi").append(cal);

		$(".cal_day").click(function (e){
			$('.cal_day').css("background","white");
			$(this).css("background","yellow");

			var month = $('.currunt_month').text();
			var year = month.substring(0,4);
			var month01= month.substring(6,7);
			
			if(month01<10){
				month01 = "0"+month01;
			}
			
			$('.cal_text01').val(year+"-"+month01+"-"+$(this).text());
			$("#divPlayDate").hide();
			$('#divPlayDate01').show();
			
			
		});
	}

	function ViewNextMonth() {
		$(".datepi").empty();
		$(".curYearMonth").empty();
		curMonth++;

		if (curMonth == 13) {
			curYear++;
			curMonth = 1;
		}

		var endDay = new Array(31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
		var startDay = new Date(curYear, curMonth - 1, 1);
		var firstW = startDay.getDay();

		// alert(startDay.getDay());

		endDate = endDay[curMonth - 1];
		var minus = (endDay[curMonth - 2]) - startDay.getDay() + 1;
		var nextday = 1;

		var line = Math.ceil((firstW+ endDate )/ 7);
		
		var date = 1;
		var start = 0;

		var cal = "<table><tr><td colspan='7' class='week'><img src='http://movie-img.yes24.com/reserve/cal_week.gif'></td></tr>";

		for (var i = 0; i < line; i++) {
			cal += "<tr>";
			for (var j = 0; j < 7; j++) {

				if (start < firstW) {
					cal += "<td class='firstw'>";
				/* 	cal += minus + start; */
					cal += "</td>";
					start++;

				} else if (date > endDate) {
					cal += "<td class='firstw'>";
		/* 			cal += nextday; */
					cal += "</td>";
					date++;
					nextday++;

				} else {
					cal += "<td class='day" + date + " cal_day'>";
					cal += date;
					cal += "</td>";
					date++;
				}

			}

			cal += "</tr>";

		}
		cal += "</table>";

		$(".curYearMonth").append(curYear + "년 " + curMonth + "월 ");
		$(".datepi").append(cal);

		$(".cal_day").click(function (e){
			$('.cal_day').css("background","white");
			$(this).css("background","yellow");

			var month = $('.currunt_month').text();
			var year = month.substring(0,4);
			var month01= month.substring(6,7);
			
			if(month01<10){
				month01 = "0"+month01;
			}
			
			$('.cal_text01').val(year+"-"+month01+"-"+$(this).text());
			$("#divPlayDate").hide();
			$('#divPlayDate01').show();
			
			
		});
	}
		

	function calon() {
	 	$("#divPlayDate").show();
		$("#cal_btn1").attr("onclick","caloff()");
	}
	function caloff() {
		$("#divPlayDate").hide();
		$("#cal_btn1").attr("onclick","calon()");
	}
	
	function calon1() {
	 	$("#divPlayDate01").show();
		$("#cal_btn2").attr("onclick","caloff1()");
	}
	function caloff1() {
		$("#divPlayDate01").hide();
		$("#cal_btn2").attr("onclick","calon1()");
	}
	
	$(function() {
		$("#divPlayDate .cal_day").click(function (e){
			$('#divPlayDate .cal_day').removeClass('cal_dayyelow');
			$(this).addClass('cal_dayyelow');

			var month = $('.currunt_month').text();
			var year = month.substring(0,4);
			var month01= month.substring(6,7);
			var day = $(this).text();
			if(day<10){
				day = "0"+day;
			}
			
			if(month01<10){
				month01 = "0"+month01;
			}
			
			
			
			$('.cal_text01').val(year+"-"+month01+"-"+ day);
			$("#divPlayDate").hide();
			$('#divPlayDate01').show();
			
			
		});
		
		$("#divPlayDate01 .cal_day").click(function (e){
			$('#divPlayDate01 .cal_day').removeClass('cal_dayyelow');
			$(this).addClass('cal_dayyelow');

			var month = $('.currunt_month').text();
			var year = month.substring(0,4);
			var month01= month.substring(6,7);
			var day = $(this).text();
			if(day<10){
				day = "0"+day;
			}
			
			if(month01<10){
				month01 = "0"+month01;
			}
			
			$('.cal_text02').val(year+"-"+month01+"-"+ day);
			$("#divPlayDate01").hide();			
			
		});

		
		
	});

	/* 도시리스트 =====================================================================================================*/
	$(function(){
		$('#btn_city').click(function(e){
			$('#city').show();
			$('.remove01 ul:first').show();
		});
	});
	$(function(){
		$('#btn_city01').click(function(e){
			$('#city01').show();
			$('#city_li ul:first').show();
		});
	});
	
	  $(function(){
		     $('.kr01').click(function(e){
		     $('.kr01').removeClass("natoinon");	 
			 $(this).addClass("natoinon");
				var n_hidden = $(".natoinon input[type='hidden']").val();
		    	 
				//
				$('.remove01 ul').css("display","none");
				$("." + n_hidden).show();
		  		});	
		  	});
	  
		$(function(){
			$('.citylist').click(function(e){
				$('.search_text01').val($(this).text());
				$('.search_text01').css('padding-left','7px');
				$('#city').hide();
			})			
		});

	function close(){

		$('#city').hide();
	}	
	

/* 도착도시 ====================================================*/
  $(function(){

    $('.kr02').click(function(e){
    	$('.remove01 ul').hide();
    	var ncode=	$(this).val();
    	
    	$('.'+ncode).show();
    
    	//$('.c_nation').show();

	});	
});
/* input 필드에 도시 추가  */
		$(function(){
			$('.citylist01').click(function(e){
				$('.search_text02').val($(this).text());
				$('.search_text02').css('padding-left','7px');
				$('#city01').hide();
				$('.c_nation').hide();
			});			
		});

function close01(){

	$('#city01').hide();
}
		
	
</script>
</head>

<body>
	<%@include file="/Category/Common/top.jsp"%>
	<div id="wrapper">
		<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

		<div id="main_content">
		<div class="main_content">
		<form action="R2_.jsp" name="next">

	<div class="top_btn">
	<div class="btn01 btn" onclick="select(1,2);">
    왕복
    </div>
    <div class="btn02 btn" onclick="select(2,1);" >
    편도
    </div>
    </div>
    
    <div class="search_btn01">
    <img src="/SwingFlow/images/Airline/btn.gif" id="btn_city"/>
    <!-- 	도시 리스트------------------------------------------------------- -->
	<div style="border:1px solid black; width:317px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city">
<div style="padding: 8px 0px 13px 8px; border-bottom: 1px solid #d2d2f0">출발 예정도시를 선택하세요.<a href="javascript:close();" style="margin-left: 135px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="width:130px; height:240px; float:left;">
<ul class="remove">
<%
for(int i=0; i<nationL.size(); i++){
	nation = nationL.get(i);%>
<li class="kr01"><%=nation.getN_Name() %><input type="hidden" value="<%=nation.getN_Code()%>"></li>
<%}%>
</ul>

</div>
<div style="width:180px; height:480px; float:left;" class="remove01">
<%
for(int i=0; i<nationL.size(); i++){
	nation = nationL.get(i);%>
<ul class="c_nation <%=nation.getN_Code() %>" >
<%
ArrayList<City> cityL = dao.citynCodeSel(nation.getN_Code()); 

for(int j=0; j<cityL.size(); j++ ){
	city = cityL.get(j);
	
	%>

	<li style="margin-bottom: 7px;"><a href="#none" class="citylist" ><%=city.getC_Name() %></a></li>
<%} %>
	</ul>
<%} %>
</div>

</div>
<!-- 	도시 리스트------------------------------------------------------- -->
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text01" name="dep_city"/>
    </span>
    
    </div>
    
 <div class="search_btn02">
    <img src="/SwingFlow/images/Airline/btn.gif" id="btn_city01"/>
    <!-- 도착	도시 리스트------------------------------------------------------- -->
     <div style="border:1px solid black; width:317px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city01">
<div style="padding: 8px 0px 13px 8px; border-bottom: 1px solid #d2d2f0">도착 예정도시를 선택하세요.<a href="javascript:close01();" style="margin-left: 135px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="width:130px; height:240px; float:left;">
<ul class="remove">

<%
for(int i=0; i<nationL.size(); i++){
	nation = nationL.get(i); %>
<li class="kr02" value="<%=nation.getN_Code()%>"><%=nation.getN_Name() %></li>
<%} %>
</ul>

</div>
<div style="border:1px solid red; width:180px; height:200px; float:left;" class="remove01" id="city_li">
<%
for(int i=0; i<nationL.size(); i++){
	nation = nationL.get(i); %>


<ul class="c_nation <%=nation.getN_Code()%>">

<% 
ArrayList<City> cityL = dao.citynCodeSel(nation.getN_Code());
for(int j=0; j<cityL.size(); j++){
	city = cityL.get(j);
	%>

	<li value="<%=nation.getN_Code() %>"><a href="#none" class="citylist01"><%=city.getC_Name() %></a></li> 
	<%} %>
	</ul>
	<%} %>
</div>

</div>
<!-- 	도시 리스트------------------------------------------------------- -->
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text02" name="arr_city"/>
    </span>
    
    </div>
    
    
    
    <div style="width:295px; height:38px;">
    <div class="cal_btn01">
    <img src="/SwingFlow/images/Airline/btn_calendar3.gif" id="cal_btn1" onclick="calon();" />
   <div id="divPlayDate" class="divPlayDate" style="position:absolute; z-index: 9999; background: white; display: none;">
						<div class="cal_wrap" style="display: block;">
							<div class="cal">
								<div class="nowcal">
									<div class="prev_month">
										<a href="javascript:ViewPrevMonth();"><span>이전달</span></a>
									</div>
									<div class="currunt_month curYearMonth"></div>
									<div class="next_month">
										<a href="javascript:ViewNextMonth();"><span>다음달</span></a>
									</div>
								</div>
								<div class="datepi"></div>

							</div>
						</div>
					</div>
    <span>
    	<input type="text" class="cal_text01" name="dep_day"/>
    </span>
    
    </div>    
    <div class="cal_btn02">
    <img src="/SwingFlow/images/Airline/btn_calendar3.gif" id="cal_btn2" onclick="calon1();"  />
    <div id="divPlayDate01" class="divPlayDate" style="position:absolute; z-index: 9999; background: white; display: none;">
						<div  class="cal_wrap" style="display: block;">
							<div class="cal">
								<div class="nowcal">
									<div class="prev_month">
										<a href="javascript:ViewPrevMonth();"><span>이전달</span></a>
									</div>
									<div class="currunt_month curYearMonth"></div>
									<div class="next_month">
										<a href="javascript:ViewNextMonth();"><span>다음달</span></a>
									</div>
								</div>
								<div class="datepi"></div>

							</div>
						</div>
					</div>
    
    <span>
    	<input type="text" class="cal_text02" name="arr_day"/>
    </span>
    
    </div>
    </div>
    
    <div>
    	<div class="selectbox" >
        	<select class="select01" name="p_nAdult">
            	<option value="1">성인1</option>
                <option value="2">성인2</option>
                <option value="3">성인3</option>
                <option value="4">성인4</option>
                <option value="5">성인5</option>
                <option value="6">성인6</option>
                <option value="7">성인7</option>
                <option value="8">성인8</option>
                <option value="9">성인9</option>
            </select>
        </div>
        <div class="selectbox" >
        	<select class="select02" name="p_nChild">
            	<option value="0">소아0</option>
            	<option value="1">소아1</option>
                <option value="2">소아2</option>
                <option value="3">소아3</option>
                <option value="4">소아4</option>
                <option value="5">소아5</option>
                <option value="6">소아6</option>
                <option value="7">소아7</option>
                <option value="8">소아8</option>
                <option value="9">소아9</option>
            </select>
        </div>
        <div class="selectbox">
        	<select class="select03" name="p_nInfant">
	            <option value="0">유아0</option>
            	<option value="1">유아1</option>
                <option value="2">유아2</option>
                <option value="3">유아3</option>
                <option value="4">유아4</option>
                <option value="5">유아5</option>
                <option value="6">유아6</option>
                <option value="7">유아7</option>
                <option value="8">유아8</option>
                <option value="9">유아9</option>
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
  <input type="hidden" >
    	<div>
			<select class="sit_class" name="seat_Class">
            	<option value="Travel">트래블(일반석) 클래스</option>
                <option value="Business">비지니스 클래스</option>
                <option value="First">퍼스트 클래스</option>
            </select>
        </div>
    	
        <div class="btn_box">
        	<input type="submit" value="항공편 조회하기" id="sel_btn" />
        </div>
    </div>
    </form>
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
									src="/SwingFlow/images/Airline/m1.png"></a>
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
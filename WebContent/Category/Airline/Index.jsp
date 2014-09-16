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
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css">
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

	function close(){

		$('#city').hide();
	}	
/* 도착도시 ====================================================*/
  $(function(){

    $('.kr02').click(function(e){
    	$('.c_nation').show();

	});	
});

// $(function(){
// 	$('#btn_search5').click(function(){
// 		$('#city01').show();
// 	});
// });
// $(function(){
// 	$('.citylist01').click(function(){
// 		$('.search_text02').val($(this).text());
// 		$('#city01').hide();
// 	});
// });

function close01(){

	$('#city01').hide();
}
		
	
</script>
<style>
.cal_dayyelow{
	background: yellow;
}

.cal_day:hover{
	background: #dfddda;
	cursor:pointer;
}
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

<style type="text/css">


.c_nation{
	display: none;
}

.cal_wrap .cal {
	padding: 15px 10px 15px 10px;
}
/* 달력 */
.cal_wrap {
	border: 1px solid #4f4f4f;
	background-color: #fff;
	
}
.week
{
		background:#dbdbdb;
}
.firstw{
	color:#b7b3b3;	
}
 

/* 달력 테두리 */
.divPlayDate {
	width: 210px;
/* 	height: 275px;
	 */

}
#divSelectArea {
	height: 445px;
}


.cal_wrap .nowcal {
	font-size: 12px;
	font-weight: bold;
	height: 20px;
}
.cal_wrap table {
	clear: both;
	font: normal 12px/30px verdana;
	text-align: center;
	border-left: 0px solid #dbdbdb;
	border-right: 0px solid #dbdbdb;
	border-bottom: 1px solid #dbdbdb;
	border-collapse: collapse;
	width: 100%;
}
.cal_wrap td {
	border-right: 0px solid #dbdbdb;
	border-top: 1px solid #dbdbdb;
	border-bottom: 1px solid #dbdbdb;
	
	font-family: verdana;
	height: 17px;
	text-align: center;
}
.cal_wrap .another_month {
	color: #b7b3b3;
	background-color: #fff;
}
.cal_wrap .ableDay {
	font-weight: normal;
	color: #505050;
	background-color: #edf1fb;
	cursor: pointer;
}
.cal_wrap .selected {
	background-color: #8093ce;
	color: #fff;
	font-weight: bold;
}
.cal_wrap .week td {
	background-color: #dbdbdb;
	border: 0px solid red;
	cursor: default;
	height: 20px;
}


.cal_wrap .prev_month {
	float: left;
	width: 17px;
}
.cal_wrap .currunt_month {
	float: left;
	font-weight: bold;
	font-family: verdana;
	text-align: center;
	width: 150px;
}
.cal_wrap .currunt_month {
	font: bold 11px/13px dotum, Verdana;
	text-align: center;
	width: 140px;
}
.cal_wrap .next_month {
	float: right;
	width: 17px;
}
.cal_wrap .next_month a {
	background: url(http://movie-img.yes24.com/reserve/b_date_ar_right.gif) 0 0 no-repeat;
	width: 14px;
	height: 13px;
	display: block;
}
.list
{
	margin: 0px;
	padding: 0px;
	border: 0;
}


.cal_wrap span {
	display: none;
}
.cal_wrap .prev_month a {
	background: url(http://movie-img.yes24.com/reserve/b_date_ar_left.gif) 0 0 no-repeat;
	width: 14px;
	height: 13px;
	display: block;
}

/*도시 리스트 ===================================== */
.remove {
list-style: none;
padding-left: 0px;
margin-top: 0px;

}
.remove li a {
text-decoration: none;
color:black;
}
.remove01 ul li a{
text-decoration: none;
color:black;
}	

.remove li{
	padding:5px 0px 5px 10px;
	border-bottom: 1px solid #d2d2f0;
	margin-left: 0px;
}
 #KR li, #CH li, #JP li, #EA li, #US li, .kr01 li, #CH01 li, #JP01 li, #EA01 li, #US01 li {
 	padding: 5px 0px 5px 0px;
 
 	
 }

 .kr01, #ch01, #jp01, #ea01, #us01, .kr02, #ch02, #jp02, #ea02, #us02{
 	background: #f2f2f2;
 }


 .kr01:hover, #ch01:hover, #jp01:hover, #ea01:hover, #us01:hover, .kr02:hover, #ch02:hover, #jp02:hover, #ea02:hover, #us02:hover{
 	font-weight: bold;
 	background:white;
 	color:#201cb4;
 	cursor: pointer;
 }
</style>
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
    <div class="btn02 btn" onclick="select(2,1);">
    편도
    </div>
    </div>
    
    <div class="search_btn01">
    <img src="/SwingFlow/images/Airline/btn.gif" id="btn_city" />
    <!-- 	도시 리스트------------------------------------------------------- -->
	<div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city">
<div style="padding: 8px 0px 13px 8px; border-bottom: 1px solid #d2d2f0">출발 예정도시를 선택하세요.<a href="javascript:close();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
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

	<li><a href="#none" class="citylist" ><%=city.getC_Name() %></a></li>
<%} %>
	</ul>
<%} %>
</div>

</div>
<!-- 	도시 리스트------------------------------------------------------- -->
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text01" />
    </span>
    
    </div>
    
 <div class="search_btn02">
    <img src="/SwingFlow/images/Airline/btn.gif" id="btn_city01"/>
    <!-- 	도시 리스트------------------------------------------------------- -->
     <div style="border:1px solid black; width:330px; height:400px; position:absolute; z-index: 9999; background: white; display:none;" id="city01">
<div style="padding: 8px 0px 13px 8px; border-bottom: 1px solid #d2d2f0">도착 예정도시를 선택하세요.<a href="javascript:close01();" style="margin-left: 100px;"><img src="/SwingFlow/images/Airline/btn_close.gif" alt="출발 예정 도시 선택 팝업 닫기"> </a>   </div>
<div style="width:130px; height:240px; float:left;">
<ul class="remove">
<li class="kr02"><%=nation.getN_Name() %></li>

</ul>

</div>
<div style="border:1px solid red; width:180px; height:200px; float:left;" class="remove01">
<ul class="c_nation">
<% 
for(int i=0; i<nationL.size(); i++){
	nation = nationL.get(i); %>

	<li value="<%=nation.getN_Code() %>"><a href="#none" class="citylist"><%=city.getC_Name() %></a></li> 
	<%} %>
	</ul>
	
</div>

</div>
<!-- 	도시 리스트------------------------------------------------------- -->
    <span style="width:256px; margin-left:-6px;">
    	<input type="text" class="search_text02" />
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
    	<input type="text" class="cal_text01" />
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
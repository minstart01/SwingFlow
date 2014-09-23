<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@page import="Movie.DTO.MovieInfo"%>
<%@page import="Common.DTO.Address"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="Movie.DAO.MovieDAO"></jsp:useBean>
<jsp:useBean id="dto" class="Common.DTO.Address"></jsp:useBean>
<jsp:useBean id="moviedto" class="Movie.DTO.MovieInfo"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper {
	width: 1200px;
	/* clear:both; */
}

#main_content {

	/* position:absolute; */
	float: left;
	width: 900px;
	margin-top: 25px;
	margin-left: 25px;
	font-size: 12px;
	/* top:30px;
	left: 275px;
	width: 950px;
 */

}
/*  .dayon:hover{
	 background:#f9b196;
 } */
 
 .none{
 	text-decoration: none;
 	color: black;
 	cursor: auto;
 }
 
</style>
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Movie/reserve.css" />
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css" />
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script src="/SwingFlow/Script/Movie/reserve.js"></script>
<script>
$(function(e) {
	
	
	
	
	$("#msearch").focus();
	
	$("#sel_movie").click(function(e) {
		
		var mName = $(".movie_on").text();
	
		$.ajax({
			url : 'reserveAjax.jsp',
			type : 'GET',
			data : {
				mName : mName,
			
			},
			success : SearchmName
		});
	
	});
	
	$("#bt_movie").click(function(e) {
		var MovieSearch = $("#search_movie").val();

		$.ajax({
			url : 'MovieSearch.jsp',
			type : 'GET',
			data : {
				MovieSearch : MovieSearch,
			},
			success : SearchMovie
		});
	});
	
	
	
});
	/* 극장 선택 */

function SearchmName(data) {

	$(".list_local").empty();
	var items = $(data).find("uls").find("li");
	var itemg = $(data).find("ulg").find("li");
	var itemp = $(data).find("ulp").find("li");
	var itemd = $(data).find("uld").find("li");
	var itemdj = $(data).find("uldj").find("li");
	var itemj = $(data).find("ulj").find("li");
	
	
	for(var i=0;i<items.length;i++){
		$(".lists").append("<li class='sel_local local_off'>" + $(items[i]).text() + "</li>");
	}
	for(var i=0;i<itemg.length;i++){
		$(".listg").append("<li class='sel_local local_off' onclick=theaterinfo('g','" + i + "');>" + $(itemg[i]).text() + "</li>");
		}
	for(var i=0;i<itemp.length;i++){
		$(".listp").append("<li class='sel_local local_off' onclick=theaterinfo('p','" + i + "');>" + $(itemp[i]).text() + "</li>");
	}
	for(var i=0;i<itemd.length;i++){
		$(".listd").append("<li class='sel_local local_off' onclick=theaterinfo('d','" + i + "');>" + $(itemd[i]).text() + "</li>");
	}
	for(var i=0;i<itemdj.length;i++){
		$(".listdj").append("<li class='sel_local local_off' onclick=theaterinfo('dj','" + i + "');>" + $(itemdj[i]).text() + "</li>");
	}
	for(var i=0;i<itemj.length;i++){
		$(".listj").append("<li class='sel_local local_off' onclick=theaterinfo('j','" + i + "');>" + $(itemj[i]).text() + "</li>");
	}

	$(".sel_local").click(
			function(e) {
				$(".sel_local").addClass("local_off");
				$(".local_on").removeClass("local_on");
				$(this).addClass("local_on");
				$(this).removeClass("local_off");
				$(".theater_info").text("");
				$(".theater_info").append($(this).text());
				$(".theater_img")
						.attr("src",
								"/SwingFlow/images/Movie/Reserve/img_TheaterList_on.gif");

			});
	
	$(".sel_local").click(function (e){
		
		var mName = $(".movie_on").text();
		var tName = $(".local_on").text();
	
		$.ajax({
			url : 'ReserveDate.jsp',
			type : 'GET',
			data : {
				mName : mName,
				tName : tName,
			},
			success : SearchDate
		});
	});	
}

	
/* 영화 선택 */
function SearchMovie(data){

	$(".list_movie").empty();	
	var names = $(data).find("li");
	
	$(".list_movie").append("<li class='sel_movie movie_off'>" + $(names[0]).text() + "<input type='hidden' class='posterimg' value='" + $(names[1]).text() +"'></li>");
	
	$(".sel_movie").click(function(e) {
		$(".sel_movie").addClass("movie_off");
		$(".movie_on").removeClass("movie_on");
		$(this).addClass("movie_on");
		$(this).removeClass("movie_off");
		$(".movie_info").text("");
		$(".movie_info").append($(this).text());
		$(".postername").attr("src", $(".movie_on input").val());
		
	});


}

function SearchDate(data){

	
	var item = $(data).find("li");
	var Start = parseInt($(item[0]).text());
	var End = parseInt($(item[1]).text());
	
	
	for(var i=1;i<31;i++){
		$(".day" + i).css("cursor","auto");
		$(".day" + i).css("background","white");
		$(".day" + i).css("color","black");
		$(".day" + i).css("font-weight","normal");
		$(".day" + i).removeAttr("onmouseover");
		$(".day" + i).removeAttr("onmouseout");
		$(".day" + i).removeAttr("onclick");
		
		$(".day" + i).removeClass("dayon");
	}
	
	
	for(var i = Start;i<=End;i++){
		
		$(".day" + i).css("cursor","pointer");
		$(".day" + i).css("background","#edf1fb");
		$(".day" + i).attr("onmouseover","TdMouseover(this);");
		$(".day" + i).attr("onmouseout","TdMouseout(this);");
		$(".day" + i).attr("onclick","TdOnclick(this);");
		$(".day" + i).addClass("dayon");
	}
	

	
}

function TdMouseover(a){
	$(a).css("background","#f9b196");
}

function TdMouseout(a){
	$(a).css("background","#edf1fb");
}

function TdOnclick(a){
	$(".TdOn").css("background","#edf1fb");
	$(".TdOn").css("color","black");
	$(".TdOn").css("font-weight","normal");
	$(".TdOn").css("cursor","pointer");
	$(".TdOn").attr("onmouseover","TdMouseover(this);");
	$(".TdOn").attr("onmouseout","TdMouseout(this);");
	$(".TdOn").removeClass("TdOn");
	
	$(a).css("background","#8093ce");
	$(a).css("color","#fff");
	$(a).css("font-weight","bold");
	$(a).css("cursor","text");
	$(a).removeAttr("onmouseout");
	$(a).removeAttr("onmouseover");
	$(a).addClass("TdOn");
	
	var day = $(a).text();
	var date = $("#curYearMonth").text();
	var year = date.substring(0,4);
	var month = date.substring(6,7);
	var transweek = $(".TdOn input").val();
	
	var ints = parseInt(transweek);
	var week="";
	
	switch (ints) {
	case 0:  week = "일";
		break;
	case 1:  week = "월";
		break;
	case 2:  week = "화";
		break;
	case 3:  week = "수";
		break;
	case 4:  week = "목";
		break;
	case 5:  week = "금";
		break;
	case 6:  week = "토";
		break;
	}
	
	if(month<10){
		month = "0" + month;
	}
	
	if(day<10){
		day = "0" + day;
	}
	
	$(".Td_info").text(year + "-" + month + "-" + day + "(" + week + ")");
	$(".Td_img").attr("src","/SwingFlow/images/Movie/Reserve/img_PlayDate_on.gif");
	
	var mName = $(".movie_on").text();
	var tName = $(".local_on").text();
	
	
	$.ajax({
		url : 'ReserveTime.jsp',
		type : 'GET',
		data : {
			mName : mName,
			tName : tName,
		},
		success : SearchTime
	});
}

function SearchTime(data){
	
	var Time = $(data).find("li");
	$("#sel_time").empty();
	
	$("#sel_time").append("<ul class='list time_list'></ul>");
	
	for(var i=0;i<Time.length;i++){
		$(".time_list").append("<li class='sel_time time_off'>" +  $(Time[i]).text() + "</li>");
	}
	
	/* 시간 선택 */
	$(".sel_time").click(function(e) {
		$(".sel_time").addClass("time_off");
		$(".time_on").removeClass("time_on");
		$(this).addClass("time_on");
		$(this).removeClass("time_off");
		$(".time_info").text("");
		$(".time_info").append($(this).text());
		$(".time_img").attr("src","/SwingFlow/images/Movie/Reserve/img_PlayTime_on.gif");
		
		var mName = $(".movie_on").text();
		var tName = $(".local_on").text();
		
	
		
		/* 관람인원 선택 */
		
		$.ajax({
			url : 'ReserveCharge.jsp',
			type : 'GET',
			data : {
				mName : mName,
				tName : tName,
			},
			success : SearchCharge
		});
		
			
	});
	
	
	function SearchCharge(data){
		
		$(".sel_agebox").empty();
		
		item = $(data).find("ul").find("li");
		
		var teen = $(item[0]).text();
		var adult = $(item[1]).text(); 
		var grade = $(item[2]).text();
		
		teen = teen.substring(0,1) + ",000";
		adult = adult.substring(0,1) + ",000";
		
			
		
		
		$(".sel_agebox").append("<ul class='sel_sit adult_sel_sit'></ul>");
		$(".adult_sel_sit").append("<li class='t1 adult_charge'>성인(" + adult + "원)</li>");
		$(".adult_sel_sit").append("<li class='adult_sit_no adult_on'>0</li>");
		for(var i=1;i<9;i++){
			$(".adult_sel_sit").append("<li class='adult_sit_no adult_off'>" + i + "</li>");
		}
		
		$(".sel_agebox").append("<ul class='sel_sit teen_sel_sit'></ul>");
		$(".teen_sel_sit").append("<li class='t1 teen_charge'>청소년(" + teen + "원)</li>");
		$(".teen_sel_sit").append("<li class='teen_sit_no teen_on'>0</li>");
		for(var i=1;i<9;i++){
			$(".teen_sel_sit").append("<li class='teen_sit_no teen_off'>" + i + "</li>");
		}
		$(".sel_age").text("선택하신 영화는 '" + grade + "' 영화입니다.");
		
	
		$(".adult_sit_no")
		.click(
				function(e) {
					$(".adult_sit_no").addClass("adult_off");
					$(".adult_on").removeClass("adult_on");
					$(this).addClass("adult_on");
					$(this).removeClass("adult_off");
					$(".number_img")
							.attr("src",
									"/SwingFlow/images/Movie/Reserve/img_PersonNum_on.gif");
					var c = $(".number_info").text();

					if (c.substring(0, 2) == "관람" || c.length == 5) { // 성인
																		// 선택했을때
						$(".number_info").text("");
						$(".number_info").append(
								"성인 " + $(this).text() + "명"); // 성인n명

						$(".charge").text($(this).text() * 9 + ",000원"); // 관람요금
						$(".totalcharge").text($(this).text() * 9 + ",000원"); // 관람요금
																			// 계싼
					} else if (c.length == 14) { // 성인, 청소년 선택후 성인 선택했을때
						var d = c.substring(6, 14); // | 청소년 n명
						$(".number_info").text("");
						$(".number_info").append(
								"성인 " + $(this).text() + "명 " + d); // 성인 n
																	// 명 |
																	// 청소년
																	// n명

						var charge = $(".charge").text();
						if (c.substring(3, 4) > $(this).text()
								&& charge.length == 7) { // 10만원 미만 - 계산

							var minus = c.substring(3, 4) - $(this).text();
							var sumcharge = charge.substring(0, 2) + " - "
									+ minus * 9;

						} else if (c.substring(3, 4) > $(this).text()
								&& charge.length == 8) { // 10만원 이상 - 계산
							var minus = c.substring(3, 4) - $(this).text();
							var sumcharge = charge.substring(0, 3) + " - "
									+ minus * 9;
						} else if (c.substring(3, 4) < $(this).text()
								&& charge.length == 7) { // 10만원 미만 + 계산
							var plus = $(this).text() - c.substring(3, 4);
							var sumcharge = plus * 9 + " + "
									+ charge.substring(0, 2);

						} else if (c.substring(3, 4) < $(this).text()
								&& charge.length == 8) { // 10만원 이상 + 계산
							var plus = $(this).text() - c.substring(3, 4);
							var sumcharge = plus * 9 + " + "
									+ charge.substring(0, 3);
						} else if (c.substring(3, 4) == (this).text()) { // 다시
																			// 선택했을
																			// 경우

						}

						$(".charge").text(eval(sumcharge) + ",000원");
						$(".totalcharge").text(eval(sumcharge) + ",000원");

					} else if (c.substring(0, 2) == "청소") { // 청소년 선택후 성인
															// 선택했을때
						var d = c.substring(0, 6); // 청소년 n명
						$(".number_info").text("");
						$(".number_info").append(
								"성인 " + $(this).text() + "명 | " + d); // 성인 n
																		// 명 |
																		// 청소년
																		// n명

						var charge = $(".charge").text();
						if (charge.substr(0, 1) == 8) { // 청소년1명 선택시
							var sumcharge = $(this).text() * 9 + " + "
									+ charge.substring(0, 1);
						} else {
							var sumcharge = $(this).text() * 9 + " + "
									+ charge.substring(0, 2);
						}
						$(".charge").text(eval(sumcharge) + ",000원");
						$(".totalcharge").text(eval(sumcharge) + ",000원");

					}
					if ($(this).text() == 0 && c.substring(8, 11) == "청소년") { // 성인,
																				// 청소년
																				// 선택후
																				// 성인0명
																				// 선택했을때
						$(".number_info").text("");
						$(".number_info").append(c.substring(8, 14)); // 청소년
																		// n명
					} else if ($(this).text() == 0
							&& c.substring(0, 3) == "청소년") { // 청소년 선택후
																// 성인 0명
																// 선택했을때
						$(".number_info").text("");
						$(".number_info").append(c.substring(0, 6)); // 청소년
																		// n명
					} else if ($(this).text() == 0) { // 성인 선택후 성인0명 선택했을때
						$(".number_info").text("");
						$(".number_info").append("관람인원을 선택하세요");
						$(".number_img")
								.attr("src",
										"/SwingFlow/images/Movie/Reserve/img_PersonNum_off.gif");
						$(".charge").text("0원");
						$(".totalcharge").text("0원");
					}
					
					$("#next_bt").attr("onclick","next()");

				});
$(".teen_sit_no")
		.click(
				function(e) {
					$(".teen_sit_no").addClass("teen_off");
					$(".teen_on").removeClass("teen_on");
					$(this).addClass("teen_on");
					$(this).removeClass("teen_off");
					$(".number_img")
							.attr("src",
									"/SwingFlow/images/Movie/Reserve/img_PersonNum_on.gif");
					var a = $(".number_info").text();

					if (a.substring(0, 2) == "관람"
							|| a.substring(0, 2) == "청소") { // 청소년 선택했을때
						$(".number_info").text("");
						$(".number_info").append(
								"청소년 " + $(this).text() + "명"); // 청소년 n명
						if ($(this).text() == 0) { // 청소년 0명 선택시 0원
							$(".charge").text("0원");
							$(".totalcharge").text("0원");
						} else { // 아닐시 n,000원
							$(".charge").text($(this).text() * 8 + ",000원");
							$(".totalcharge").text($(this).text() * 8 + ",000원");
						}
					} else if (a.substring(0, 2) == "성인" && a.length == 5) { // 성인
																				// 선택후
																				// 청소년
																				// 선택했을때
						$(".number_info").append(
								" | 청소년 " + $(this).text() + "명"); // 성인 n명
																	// | 청소년
																	// n명
						var charge = $(".charge").text();
						if (charge.substr(0, 1) == 9) { // 성인1명 선택시
							var sumcharge = $(this).text() * 8 + " + "
									+ charge.substring(0, 1);
						} else {
							var sumcharge = $(this).text() * 8 + " + "
									+ charge.substring(0, 2);
						}
						$(".charge").text(eval(sumcharge) + ",000원");
						$(".totalcharge").text(eval(sumcharge) + ",000원");

					} else if (a.substring(0, 2) == "성인" && a.length > 5) { // 성인,
																			// 청소년
																			// 선택후
																			// 청소년
																			// 선택했을때
						var b = a.substring(0, 5); // 성인 n명
						$(".number_info").text("");
						$(".number_info").append(
								b + " | 청소년 " + $(this).text() + "명"); // 성인
																		// n명 |
																		// 청소년
																		// n명
						var charge = $(".charge").text();
						if (a.substring(12, 13) > $(this).text()
								&& charge.length == 7) { // 10만원 미만 - 계산

							var minus = a.substring(12, 13)
									- $(this).text();
							var sumcharge = charge.substring(0, 2) + " - "
									+ minus * 8;

						} else if (a.substring(12, 13) > $(this).text()
								&& charge.length == 8) { // 10만원 이상 - 계산
							var minus = a.substring(12, 13)
									- $(this).text();
							var sumcharge = charge.substring(0, 3) + " - "
									+ minus * 8;
						} else if (a.substring(12, 13) < $(this).text()
								&& charge.length == 7) { // 10만원 미만 + 계산
							var plus = $(this).text() - a.substring(12, 13);
							var sumcharge = plus * 8 + " + "
									+ charge.substring(0, 2);

						} else if (a.substring(12, 13) < $(this).text()
								&& charge.length == 8) { // 10만원 이상 + 계산
							var plus = $(this).text() - a.substring(12, 13);
							var sumcharge = plus * 8 + " + "
									+ charge.substring(0, 3);
						} else if (a.substring(12, 13) == (this).text()) { // 다시
																			// 선택했을
																			// 경우

						}

						$(".charge").text(eval(sumcharge) + ",000원");
						$(".totalcharge").text(eval(sumcharge) + ",000원");
					}
					if ($(this).text() == 0 && a.substring(0, 2) == "성인") { // 성인
																			// 선택후
																			// 청소년
																			// 0명
																			// 선택했을때
						$(".number_info").text("");
						$(".number_info").append(a.substring(0, 5));
					} else if ($(this).text() == 0 && a.length == 6) { // 청소년
																		// 선택후
																		// 청소년
																		// 0 명
																		// 선택했을때
						$(".number_info").text("");
						$(".number_info").append("관람인원을 선택하세요");
						$(".number_img")
								.attr("src",
										"/SwingFlow/images/Movie/Reserve/img_PersonNum_off.gif");
					}
					
					
					$("#next_bt").attr("onclick","next()");
				});

	}
}


/* 좌석 선택 */
function next(){
	
	$("#moviebox").hide();
	$("#theaterbox").hide();
	$("#datebox").hide();
	$("#timebox").hide();
	$("#sitbox").hide();
		
	// 이미지 숨김
	$("#theater_img").hide();
	$("#date_img").hide();
	$("#time_img").hide();
	$("#number_img").hide();
	
	$("#sel_sit_box").show();
	
	$("#movie_img img").attr("src","/SwingFlow/images/Movie/Reserve/tit_Seat.gif");
	
	var timeon = $(".time_on").text();
	var tName = $(".local_on").text();
	timeon = timeon.substring(0,1);
	
	$("#next_bt").removeAttr("onclick");

	
	$.ajax({
		url : 'SeatCheck.jsp',
		type : 'GET',
		data : {
			timeon : timeon,
			tName : tName,
		},
		success : SeatList
	});
	
	
	
}
/* 좌석정보 뿌려주는 함수 */
function SeatList(data){
	item = $(data).find("ul").find("li");
	var row = $(item[0]).text();
	var column = $(item[1]).text();
	var rowname="";
	var table = "";
	
	column = eval(column+" + 2");
	
	
	for(var i=1;i<=row;i++){
		
		switch(i){
		case 1 : rowname = "A"; break;
		case 2 : rowname = "B"; break;
		case 3 : rowname = "C"; break;
		case 4 : rowname = "D"; break;
		case 5 : rowname = "E"; break;
		case 6 : rowname = "F"; break;
		case 7 : rowname = "G"; break;
		case 8 : rowname = "H"; break;
		case 9 : rowname = "I"; break;
		case 10 : rowname = "J"; break;
	}
	
		table += "<tr>";
		
		for(var j=1;j<=column;j++){
			if(j==1){
				table += "<td width='20' align='center'>" + rowname + "</td>";
			}else if(j==2){
				table += "<td width='20' align='center'></td>";
			}else if(j>2){
				table += "<td class='sel_seat' width='20' align='center'>" + rowname + (j-2) + "</td>";
			}
		}
		table += "</tr>";
		
	}
	
	
	$(".seat").append(table);

	
	
	$(".sel_seat").click(function e(){
		var adult = $(".adult_on").text();
		var teen = $(".teen_on").text();
		var peoplenum = eval(adult + " + " + teen);
		

		
		if(count<peoplenum){
			$(this).addClass("seat_on");
			$(this).removeClass("sel_seat");
			
			if(count<(peoplenum-1)){
				seatinfo += $(this).text() + ", ";
			}else{
				seatinfo += $(this).text();
			}
		}
		if(peoplenum != count){
			count++;
		}
		
		
		
		$(".seat_info").text(seatinfo);
		$(".seat_img").attr("src","/SwingFlow/images/Movie/Reserve/img_SeatArea_on.gif");
	});
	
}

$(function(){
	
	$(".sel_seat").click(function (){
		alert("ㅎㅇ");
	});

});

var count=0;
var seatinfo = "";


/* 좌석 다시 선택 */
function resel(){
	$(".seat_on").addClass("sel_seat");
	$(".seat_on").removeClass("seat_on");
	count=0;
	seatinfo = "";
}

/* 예매하기 */
function reserve(){
	var check =  confirm("예약하시겠습니까?");
	
	var mName = $(".movie_on").text();
	var tName = $(".local_on").text();
	var charges = ($(".totalcharge").text()).split(",");
	var charge = charges[0] + "000";
	var seatinfo = $(".seat_info").text();
	var adult = $(".adult_on").text();
	var teen = $(".teen_on").text();
	var time = $(".Td_info").text() + " " + $(".time_info").text();
	
	
	if(check == true){
		location.href = "ReserveInsert.jsp?charge=" + charge + "&seatinfo=" + seatinfo + "&adult=" + adult + "&teen=" + teen + "&mName=" + mName + "&tName=" + tName + "&time=" + time;
	}
}
	
	


</script>
</head>
<style>
/* .TdOn{
	background: #8093ce;
	color : #fff;
	font-weight: bold;
} */
</style>

<body>
	<%
		ArrayList<Address> list = new ArrayList<Address>();
		ArrayList<MovieInfo> movielist = new ArrayList<MovieInfo>();
	%>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<div id="wrapper">

		<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

		<div id="main_content">


			<div id="movie_img">
				<img src="/SwingFlow/images/Movie/Reserve/movie.gif" alt="영화선택" />
			</div>
			<div id="theater_img">
				<img src="/SwingFlow/images/Movie/Reserve/theater.gif" alt="극장선택" />
			</div>
			<div id="date_img">
				<img src="/SwingFlow/images/Movie/Reserve/date.gif" alt="극장선택" />
			</div>
			<div id="time_img">
				<img src="/SwingFlow/images/Movie/Reserve/time.gif" alt="시간선택" />
			</div>
			<section id="moviebox">

			<div style="border-bottom: 1px solid black; padding: 3px 0 3px 3px;">
				<input type="text" id="search_movie" placeholder="영화명을 입력하세요"
					size="19" /> <input type="button" value="검색" id="bt_movie" />
			</div>
			
			<div id="sel_movie">
				<ul class="list list_movie">
					<%
						movielist = dao.MovieName();

						for (int i = 0; i < movielist.size(); i++) {
							moviedto = movielist.get(i);
							String posterimg = dao.PosterIMG(moviedto.getmName());
					%>
					<li class="sel_movie movie_off"><%=moviedto.getmName()%><input
						type="hidden" class="posterimg" value="<%=posterimg%>"></li>
					<%
						}
					%>
					<!-- <li class="sel_movie movie_off">해적</li>
					<li class="sel_movie movie_off">드래곤길들이기</li>
					<li class="sel_movie movie_off">군도</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li>
					<li class="sel_movie movie_off">명량</li> -->
				</ul>
			</div>
			</section>
			<section id="theaterbox">
			<div style="border-bottom: 1px solid black; padding: 3px 0 3px 3px;">
				<input type="text" id="search_theater" placeholder="극장명을 입력하세요"
					size="15" /> <input type="button" value="검색" id="bt_theater" />
			</div>
			<div style="padding: 5px 0 5px 10px; border-bottom: solid 1px black;"
				class="local_seoul" onclick="selLocal('seoul');">서울</div>
			<div id="sel_theater"
				class="sel_theater sel_seoul incheon_except busan_except daegu_except daejeon_except gwangju_except">
				<ul class="list list_local lists">
					<%
						list = (ArrayList<Address>) dao.SelectAddr("서울", "one", "one",
								"one");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_incheon" style="border-top: 1px solid black;"
				onclick="selLocal('incheon');">경기/인천</div>
			<div id="sel_theater"
				class="sel_theater sel_incheon seoul_except busan_except daegu_except daejeon_except gwangju_except">
				<ul class="list list_local listg">
					<%
						list = (ArrayList<Address>) dao
								.SelectAddr("경기", "인천", "two", "two");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('g','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_busan" onclick="selLocal('busan');">부산/울산/경남</div>
			<div id="sel_theater"
				class="sel_theater sel_busan incheon_except seoul_except daegu_except daejeon_except gwangju_except">
				<ul class="list list_local listp">
					<%
						list = (ArrayList<Address>) dao.SelectAddr("부산", "울산", "경남",
								"three");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('p','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_daegu" onclick="selLocal('daegu');">대구/경북</div>
			<div id="sel_theater"
				class="sel_theater sel_daegu incheon_except seoul_except busan_except daejeon_except gwangju_except">
				<ul class="list list_local listd">
					<%
						list = (ArrayList<Address>) dao
								.SelectAddr("대구", "경북", "two", "two");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('d','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_daejeon" onclick="selLocal('daejeon');">대전/충청/강원</div>
			<div id="sel_theater"
				class="sel_theater sel_daejeon incheon_except seoul_except busan_except daegu_except gwangju_except">
				<ul class="list list_local listdj">
					<%
						list = (ArrayList<Address>) dao.SelectAddr("대전", "충", "강원",
								"three");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('dj','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_gwangju" onclick="selLocal('gwangju');">광주/전라/제주</div>
			<div id="sel_theater"
				class="sel_theater sel_gwangju incheon_except seoul_except busan_except daegu_except daejeon_except">
				<ul class="list list_local listj">
					<%
						list = (ArrayList<Address>) dao.SelectAddr("광주", "전남", "전북", "제주");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('j','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>

			</section>
			<section id="datebox">

			<div id="divContainer">
				<div id="divSelectArea" style="display: block;">
					<div id="divPlayDate">
						<div id="cal_wrap" style="display: block;">
							<div class="cal">
								<div class="nowcal">
									<div class="prev_month">
										<a href="javascript:ViewPrevMonth();"><span>이전달</span></a>
									</div>
									<div class="currunt_month" id="curYearMonth"></div>
									<div class="next_month">
										<a href="javascript:ViewNextMonth();"><span>다음달</span></a>
									</div>
								</div>
								<div id="datepi"></div>

							</div>
						</div>
					</div>
				</div>
			</div>
			</section>
			<section id="timebox">

			<div id="sel_time">
				<div style="height:265px; text-align: center; display: table-cell; width: 200px; vertical-align: middle;">
					<img src="http://movie-img.yes24.com/reserve/Nstep_PlayTime.gif">
				</div>
			</div>
			</section>
			<div style="float: left; margin-top: 10px;" id="number_img">
				<img src="/SwingFlow/images/Movie/Reserve/tit_PersonNum_off.gif"
					alt="관람인원선택" />
			</div>
			<section id="sitbox">

			<div class="sel_agebox" style="float: left; margin-top: 2px; margin-right: 30px;">
				
			 <div style="width: 419px; height: 83px; display: table-cell; text-align: center; vertical-align: middle;">
					<img src="http://movie-img.yes24.com/reserve/Nstep_PersonNum.gif">
				</div>
			</div>
			<div class="sel_age"><!-- 선택하신 영화는 '전체 관람가' 영화입니다. --></div>
			</section>
			<div id="sel_sit_box">
<center><div class="screenbox">
	<span style="font-size: 18px; font-weight: bold;">SCREEN</span>
</div></center>
<center>
<table cellspacing="5" class="seat" >
	<%-- <%for(int i=1;i<=10;i++){
		String Row="A";
	switch(i){
		case 1 : Row = "A"; break;
		case 2 : Row = "B"; break;
		case 3 : Row = "C"; break;
		case 4 : Row = "D"; break;
		case 5 : Row = "E"; break;
		case 6 : Row = "F"; break;
		case 7 : Row = "G"; break;
		case 8 : Row = "H"; break;
		case 9 : Row = "I"; break;
		case 10 : Row = "J"; break;
	}
		
		
	%>
	<tr>
		<%for(int j=1;j<=13;j++){ 
			if(j==1){
		%>
			<td width="20" align="center"><%=Row %></td>
		<%
		}else if(j==2 || j==3){
		%>
			<td width="20" align="center"></td>
		<%	
		}else if(j>3){
			%>
			<td class="sel_seat" width="20" align="center"><%=Row + (j-3) %></td>
		<%		
		}
		}
		%>
	</tr>
	<%} %> --%>
</table>

<div class="sel_sit_button">
	<input type="button" value="다시선택" onclick="resel();">
	<input type="button" value="선택완료" onclick="reserve();">
</div>
</center>
</div>
			
			
			<div class="sel_reserve_info">
				<img src="/SwingFlow/images/Movie/Reserve/tit_SelectMovieInfo.gif"
					alt="선택하신 예매정보" />
			</div>
			<div class="sel_pay_ino">
				<img src="/SwingFlow/images/Movie/Reserve/tit_PayInfo_off.gif"
					alt="관련요금정보" />
			</div>

			<section id="info_reserve">
			<div class="poster_img">
				<img src="/SwingFlow/images/Movie/Reserve/posterimg.gif"
					class="postername" width="86" height="124" />
			</div>
			<div style="margin-top: 8px; float: left; height: 130px;">
				<div class="movie_info">영화를 선택하세요</div>
				<div style="width: 65px; float: right;">
					<img src="/SwingFlow/images/Movie/Reserve/b_MovieInfo.gif"
						alt="영화정보" />
				</div>

				<table style="clear: left;" class="info_table">
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_TheaterList_off.gif"
							alt="영화관" class="theater_img" /></td>
						<td class="theater_info">극장을 선택하세요</td>
					</tr>
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_PlayDate_off.gif"
							alt="관람일" class="Td_img"/></td>
						<td class="Td_info">관람일을 선택하세요</td>
					</tr>
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_PlayTime_off.gif"
							alt="시간" class="time_img"/></td>
						<td class="time_info">시간을 선택하세요</td>
					</tr>
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_PersonNum_off.gif"
							alt="인원정보" class="number_img" /></td>
						<td class="number_info">관람인원을 선택하세요</td>
					</tr>
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_SeatArea_off.gif"
							alt="좌석정보" class="seat_img" /></td>
						<td class="seat_info">좌석을 선택하세요</td>
					</tr>
				</table>

			</div>
			</section>

			<section id="info_pay">
			<div style="margin: 13px 0 0 20px; font-size: 17px;">
				<table cellpadding="10">
					<tr>
						<td width="100">티켓금액</td>
						<td class="charge">0원</td>
					</tr>
					<tr>
						<td>할인금액</td>
						<td>0원</td>
					</tr>
				</table>
				<table cellpadding="10" style="border-top: 1px solid #dbdbdb;">
					<tr>
						<td width="100">총결제금액</td>
						<td class="totalcharge">0원</td>
					</tr>
				</table>
			</div>
			</section>
			<section id="bt">
			<div>
				<a href="javascript:location.reload();"><input type="button" class="bt" value="처음부터" /></a>
			</div>
			<div style="padding-top: 10px;">
				<input type="button" class="bt" id="next_bt" value="좌석선택"  />
			</div>
			</section>
		</div>
	</div>
	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>



</body>
</html>
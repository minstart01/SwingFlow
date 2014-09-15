<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>
var today = new Date();
var curMonth = today.getMonth() + 1;
var curYear = today.getFullYear();
var isdate = new Date();
$(function() {
	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
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
				cal += "<td class='day" + date + "'>";
				cal += date;
				cal += "<input type='hidden' class='week" + date + "' value='" + isdate.getDay() + "'></td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#datepi").append(cal);
});

function ViewPrevMonth() {
	$("#datepi").empty();
	$("#curYearMonth").empty();

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
				cal += "<td>";
				cal += date;
				cal += "</td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
	$("#datepi").append(cal);

}

function ViewNextMonth() {
	$("#datepi").empty();
	$("#curYearMonth").empty();
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
				cal += "<td>";
				cal += date;
				cal += "</td>";
				date++;
			}

		}

		cal += "</tr>";

	}
	cal += "</table>";

	$("#curYearMonth").append(curYear + "년 " + curMonth + "월 ");
	$("#datepi").append(cal);

}
</script>
<style type="text/css">
#cal_wrap .cal {
	padding: 15px 10px 15px 10px;
}
/* 달력 */
#cal_wrap {
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
#divPlayDate {
	width: 210px;
	height: 275px;
	

}
#divSelectArea {
	height: 445px;
}


#cal_wrap .nowcal {
	font-size: 12px;
	font-weight: bold;
	height: 20px;
}
#cal_wrap table {
	clear: both;
	font: normal 12px/30px verdana;
	text-align: center;
	border-left: 0px solid #dbdbdb;
	border-right: 0px solid #dbdbdb;
	border-bottom: 1px solid #dbdbdb;
	border-collapse: collapse;
	width: 100%;
}
#cal_wrap td {
	border-right: 0px solid #dbdbdb;
	border-top: 1px solid #dbdbdb;
	border-bottom: 1px solid #dbdbdb;
	
	font-family: verdana;
	height: 17px;
	text-align: center;
}
#cal_wrap .another_month {
	color: #b7b3b3;
	background-color: #fff;
}
#cal_wrap .ableDay {
	font-weight: normal;
	color: #505050;
	background-color: #edf1fb;
	cursor: pointer;
}
#cal_wrap .selected {
	background-color: #8093ce;
	color: #fff;
	font-weight: bold;
}
#cal_wrap .week td {
	background-color: #dbdbdb;
	border: 0px solid red;
	cursor: default;
	height: 20px;
}


#cal_wrap .prev_month {
	float: left;
	width: 17px;
}
#cal_wrap .currunt_month {
	float: left;
	font-weight: bold;
	font-family: verdana;
	text-align: center;
	width: 150px;
}
#cal_wrap .currunt_month {
	font: bold 11px/13px dotum, Verdana;
	text-align: center;
	width: 140px;
}
#cal_wrap .next_month {
	float: right;
	width: 17px;
}
#cal_wrap .next_month a {
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


#cal_wrap span {
	display: none;
}
#cal_wrap .prev_month a {
	background: url(http://movie-img.yes24.com/reserve/b_date_ar_left.gif) 0 0 no-repeat;
	width: 14px;
	height: 13px;
	display: block;
}
</style>
</head>
<body>

				
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
				
			
</body>
</html>
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
	font-size: 13px;
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
		$(".day" + i).css("font-weight","normal")
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
	$(".TdOn").css("color","black")
	$(".TdOn").css("font-weight","normal")
	$(".TdOn").css("cursor","pointer");
	$(".TdOn").attr("onmouseover","TdMouseover(this);");
	$(".TdOn").attr("onmouseout","TdMouseout(this);");
	$(".TdOn").removeClass("TdOn")
	
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
	var week;
	
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
	$(".time_list").empty();
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
		
	});
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
				<ul class="list time_list">
			
				</ul>
			</div>
			</section>
			<div style="float: left; margin-top: 10px;">
				<img src="/SwingFlow/images/Movie/Reserve/tit_PersonNum_off.gif"
					alt="관람인원선택" />
			</div>
			<section id="sitbox">

			<div style="float: left; margin-top: 2px; margin-right: 30px;">
				<ul class="sel_sit" style="list-style: none;">
					<li class="t1">성인(9,000원)</li>
					<li class="adult_sit_no adult_on">0</li>
					<li class="adult_sit_no adult_off">1</li>
					<li class="adult_sit_no adult_off">2</li>
					<li class="adult_sit_no adult_off">3</li>
					<li class="adult_sit_no adult_off">4</li>
					<li class="adult_sit_no adult_off">5</li>
					<li class="adult_sit_no adult_off">6</li>
					<li class="adult_sit_no adult_off">7</li>
					<li class="adult_sit_no adult_off">8</li>
				</ul>
				<ul class="sel_sit" style="list-style: none;">
					<li class="t1">청소년(8,000원)</li>
					<li class="teen_sit_no teen_on">0</li>
					<li class="teen_sit_no teen_off">1</li>
					<li class="teen_sit_no teen_off">2</li>
					<li class="teen_sit_no teen_off">3</li>
					<li class="teen_sit_no teen_off">4</li>
					<li class="teen_sit_no teen_off">5</li>
					<li class="teen_sit_no teen_off">6</li>
					<li class="teen_sit_no teen_off">7</li>
					<li class="teen_sit_no teen_off">8</li>
				</ul>

			</div>
			<div class="sel_age">선택하신 영화는 '전체 관람가' 영화입니다.</div>
			</section>
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
							alt="좌석정보" /></td>
						<td>??</td>
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
				<input type="button" class="bt" value="예약하기" />
			</div>
			</section>
		</div>
	</div>
	<jsp:include page="/Category/Common/footer.jsp"></jsp:include>



</body>
</html>
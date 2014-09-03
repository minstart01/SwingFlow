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
	border: 1px solid black;
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
		
			alert(mName);
		
	
		$.ajax({
			url : 'reserveAjax.jsp',
			type : 'GET',
			data : {
				mName : mName,
			
			},
			success : SearchmName
		});
	
	});
});
function SearchmName(data) {

	$(".listseoul").empty();
	/* var items = $(data).find("uls").find("li");
	var itemk = $(data).find("ulk").find("li");
	var itemp = $(data).find("ulp").find("li");
	var itemd = $(data).find("uld").find("li");
	var itemdj = $(data).find("uldj").find("li");
	var itemg = $(data).find("ulg").find("li"); */
	var items = $(data).find("uls").find("li")
	
	for(var i=0;i<items.length;i++){
		$(".listseoul").append("<li>" + $(items[i]).text() + "</li>");
	}
	
	


	
		}
		


</script>
</head>

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
					size="23" /> <input type="button" value="검색" id="bt_movie" />
			</div>
			
			<div id="sel_movie">
				<ul class="list">
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
					size="18" /> <input type="button" value="검색" id="bt_theater" />
			</div>
			<div style="padding: 5px 0 5px 10px; border-bottom: solid 1px black;"
				class="local_seoul" onclick="selLocal('seoul');">서울</div>
			<div id="sel_theater"
				class="sel_theater sel_seoul incheon_except busan_except daegu_except daejeon_except gwangju_except">
				<ul class="list listseoul">
					<%
						list = (ArrayList<Address>) dao.SelectAddr("서울", "one", "one",
								"one");
						for (int i = 0; i < list.size(); i++) {
							dto = (Address) list.get(i);
					%>
					<li class="sel_local local_off"
						onclick="theaterinfo('s','<%=i%>');"><%=dto.gettName()%></li>
					<%
						}
					%>
				</ul>
			</div>
			<div class="local local_incheon" style="border-top: 1px solid black;"
				onclick="selLocal('incheon');">경기/인천</div>
			<div id="sel_theater"
				class="sel_theater sel_incheon seoul_except busan_except daegu_except daejeon_except gwangju_except">
				<ul class="list">
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
				<ul class="list">
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
				<ul class="list">
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
				<ul class="list">
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
				<ul class="list">
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
				<ul class="list">
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
					<li>명량</li>
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
				<div style="width: 65px; border: 1px solid black; float: right;">
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
							alt="관람일" /></td>
						<td>2014-08-08(금)</td>
					</tr>
					<tr>
						<td><img
							src="/SwingFlow/images/Movie/Reserve/img_PlayTime_off.gif"
							alt="시간" /></td>
						<td>15:40</td>
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
						<td>9,000원</td>
					</tr>
				</table>
			</div>
			</section>
			<section id="bt">
			<div>
				<input type="button" class="bt" value="처음부터" />
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
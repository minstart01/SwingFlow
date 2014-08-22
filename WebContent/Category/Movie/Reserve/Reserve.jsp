<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{

	width:1200px;
	/* clear:both; */

		
	}
#main_content{
	border:1px solid black;
	/* position:absolute; */
	float:left;
	width:900px;
	margin-top: 25px;
	margin-left: 25px;
	font-size:13px;
	/* top:30px;
	left: 275px;
	width: 950px;
 */
}



</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Movie/reserve.css" />
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<script src="jquery-2.1.1.js"></script>
<script src="reserve.js"></script>

</head>

<body>

<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">


	<div id="movie_img"><img src="movie.gif" alt="영화선택"/></div>
    <div id="theater_img"><img src="theater.gif" alt="극장선택"/></div>
    <div id="date_img"><img src="date.gif" alt="극장선택"/></div>
    <div id="time_img"><img src="time.gif" alt="시간선택"/></div>
	<section id="moviebox">
   	
    <div style="border-bottom:1px solid black; padding:3px 0 3px 3px;">
    <input type="text" id="search_movie" placeholder="영화명을 입력하세요" size="23"/>
    <input type="button" value="검색" id="bt_movie" />
    </div>
	<div id="sel_movie">
    	<ul class="list">
        	<li class="sel_movie movie_on">명량</li>
            <li class="sel_movie movie_off">해적</li>
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
            <li class="sel_movie movie_off">명량</li>
        </ul>
    </div>    
   </section>
   <section id="theaterbox">
 	<div style="border-bottom:1px solid black; padding:3px 0 3px 3px;">
   <input type="text" id="search_theater" placeholder="극장명을 입력하세요" size="18"/>
   <input type="button" value="검색" id="bt_theater" />
   </div>
   <div style="padding:5px 0 5px 10px; border-bottom:solid 1px black;" class="local_seoul" onclick="selLocal('seoul');">서울</div>
   <div id="sel_theater" class="sel_theater sel_seoul incheon_except busan_except daegu_except daejeon_except gwangju_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">CGV</li>
            <li class="sel_local local_off">롯데시네마</li>
            <li class="sel_local local_off">메가박스</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    <div class="local local_incheon" style="border-top: 1px solid black;" onclick="selLocal('incheon');">경기/인천</div>
    <div id="sel_theater" class="sel_theater sel_incheon seoul_except busan_except daegu_except daejeon_except gwangju_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    <div class="local local_busan" onclick="selLocal('busan');">부산/울산/경남</div>
    <div id="sel_theater" class="sel_theater sel_busan incheon_except seoul_except daegu_except daejeon_except gwangju_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    <div class="local local_daegu" onclick="selLocal('daegu');">대구/경북</div>
    <div id="sel_theater" class="sel_theater sel_daegu incheon_except seoul_except busan_except daejeon_except gwangju_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    <div class="local local_daejeon" onclick="selLocal('daejeon');">대전/충청/강원</div>
    <div id="sel_theater" class="sel_theater sel_daejeon incheon_except seoul_except busan_except daegu_except gwangju_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    <div class="local local_gwangju" onclick="selLocal('gwangju');">광주/전라/제주</div>
    <div id="sel_theater" class="sel_theater sel_gwangju incheon_except seoul_except busan_except daegu_except daejeon_except">
    	  	<ul class="list">
        	<li class="sel_local local_on">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
            <li class="sel_local local_off">명량</li>
        </ul>
    </div>  
    
   </section>
   <section id="datebox">
 
   <div id="divContainer"><div id="divSelectArea" style="display: block;"><div id="divPlayDate"><div id="cal_wrap" style="display: block;"><div class="cal">
					<div class="nowcal">
					   <div class="prev_month"><a href="javascript:ViewPrevMonth();"><span>이전달</span></a></div>
					   <div class="currunt_month" id="curYearMonth">2014년 8월</div>
					   <div class="next_month"><a href="javascript:ViewNextMonth();"><span>다음달</span></a></div>
					</div>
					<div id="calendar"><table><tbody><tr class="week"><td colspan="7"><img alt="" src="http://movie-img.yes24.com/reserve/cal_week.gif"></td></tr><tr><td class="another_month">27</td><td class="another_month">28</td><td class="another_month">29</td><td class="another_month">30</td><td class="another_month">31</td><td>1</td><td>2</td></tr><tr><td>3</td><td>4</td><td>5</td><td>6</td><td class="selected" onclick="javascript:SelPlayDate('2014-08-07',4);">7</td><td class="ableDay" onmouseover="javascript:TdMouseOver(this);" onmouseout="javascript:TdMouseOut(this);" onclick="javascript:SelPlayDate('2014-08-08',5);">8</td><td class="ableDay" onmouseover="javascript:TdMouseOver(this);" onmouseout="javascript:TdMouseOut(this);" onclick="javascript:SelPlayDate('2014-08-09',6);">9</td></tr><tr><td class="ableDay" onmouseover="javascript:TdMouseOver(this);" onmouseout="javascript:TdMouseOut(this);" onclick="javascript:SelPlayDate('2014-08-10',0);">10</td><td>11</td><td>12</td><td>13</td><td>14</td><td>15</td><td>16</td></tr><tr><td>17</td><td>18</td><td>19</td><td>20</td><td>21</td><td>22</td><td>23</td></tr><tr><td>24</td><td>25</td><td>26</td><td>27</td><td>28</td><td>29</td><td>30</td></tr><tr><td>31</td><td class="another_month">1</td><td class="another_month">2</td><td class="another_month">3</td><td class="another_month">4</td><td class="another_month">5</td><td class="another_month">6</td></tr></tbody></table></div>
				</div></div></div></div></div>
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
    <div style="float:left; margin-top:10px;"><img src="tit_PersonNum_off.gif" alt="관람인원선택"/></div>
    <section id="sitbox">
    	
    	<div style="float:left; margin-top:2px; margin-right:30px;">
        <ul class="sel_sit" style="list-style:none;" >
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
         <ul class="sel_sit" style="list-style:none;" >
        	<li class="t1">학생(8,000원)</li>
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
    <div class="sel_reserve_info"><img src="tit_SelectMovieInfo.gif" alt="선택하신 예매정보" /></div>
       <div class="sel_pay_ino"><img src="tit_PayInfo_off.gif" alt="관련요금정보"/></div>
    
    <section id="info_reserve">
    	<div class="poster_img"><img src="poster.gif"/></div>
        <div style=" margin-top: 8px; float:left; height:130px;">
        <div class="movie_info">영화를 선택하세요</div>
        <div style="width:65px; border:1px solid black; float:right;"> <img src="b_MovieInfo.gif" alt="영화정보"/></div>
        
        	<table style="clear:left;" class="info_table">
                <tr>
                	<td><img src="img_TheaterList_off.gif" alt="영화관" class="theater_img"/></td>
                    <td class="theater_info">극장을 선택하세요</td>
                </tr>
                <tr>
                	<td><img src="img_PlayDate_on.gif" alt="관람일"/></td>
                    <td>2014-08-08(금)</td>
                </tr>
                <tr>
                	<td><img src="img_PlayTime_on.gif" alt="시간"/></td>
                    <td>15:40</td>
                </tr>
                <tr>
                	<td><img src="img_PersonNum_off.gif" alt="인원정보" class="number_img"/></td>
                    <td class="number_info">관람인원을 선택하세요</td>
                </tr>
                <tr>
                	<td><img src="img_SeatArea_on.gif" alt="좌석정보"/></td>
                    <td>??</td>
                </tr>
            </table>
         
        </div>
    </section>
    
    <section id="info_pay">
    	<div style="margin:20px 0 0 20px; font-size:18px;">
        <table cellpadding="10">
        	<tr>
            	<td width="100">티켓금액</td>
                <td >9,000원</td>
            </tr>
            <tr>
            	<td>할인금액</td>
                <td>0원</td>
            </tr>
        </table>
        <table cellpadding="10" style="border-top:1px solid black;">
        <tr>
           	<td width="100">총결제금액</td>
            <td>9,000원</td>
        </tr>
        </table>
    	</div>
    </section>
    <section id="bt">
    	<div>
        <input type="button" class="bt" value="처음부터"/>
        </div>
        <div style="padding-top:10px;">
        <input type="button" class="bt" value="예약하기"/>
        </div>
    </section>
    
     <section id="info_pay">
    	<div style="margin:20px 0 0 20px; font-size:18px;">
        <table cellpadding="10">
        	<tr>
            	<td width="100">티켓금액</td>
                <td >9,000원</td>
            </tr>
            <tr>
            	<td>할인금액</td>
                <td>0원</td>
            </tr>
        </table>
        <table cellpadding="10" style="border-top:1px solid black;">
        <tr>
           	<td width="100">총결제금액</td>
            <td>9,000원</td>
        </tr>
        </table>
    	</div>
    </section>
    <section id="bt">
    	<div>
        <input type="button" class="bt" value="처음부터"/>
        </div>
        <div style="padding-top:10px;">
        <input type="button" class="bt" value="예약하기"/>
        </div>
    </section>
     <section id="info_pay">
    	<div style="margin:20px 0 0 20px; font-size:18px;">
        <table cellpadding="10">
        	<tr>
            	<td width="100">티켓금액</td>
                <td >9,000원</td>
            </tr>
            <tr>
            	<td>할인금액</td>
                <td>0원</td>
            </tr>
        </table>
        <table cellpadding="10" style="border-top:1px solid black;">
        <tr>
           	<td width="100">총결제금액</td>
            <td>9,000원</td>
        </tr>
        </table>
    	</div>
    </section>
    <section id="bt">
    	<div>
        <input type="button" class="bt" value="처음부터"/>
        </div>
        <div style="padding-top:10px;">
        <input type="button" class="bt" value="예약하기"/>
        </div>
    </section>
     <section id="info_pay">
    	<div style="margin:20px 0 0 20px; font-size:18px;">
        <table cellpadding="10">
        	<tr>
            	<td width="100">티켓금액</td>
                <td >9,000원</td>
            </tr>
            <tr>
            	<td>할인금액</td>
                <td>0원</td>
            </tr>
        </table>
        <table cellpadding="10" style="border-top:1px solid black;">
        <tr>
           	<td width="100">총결제금액</td>
            <td>9,000원</td>
        </tr>
        </table>
    	</div>
    </section>
    <section id="bt">
    	<div>
        <input type="button" class="bt" value="처음부터"/>
        </div>
        <div style="padding-top:10px;">
        <input type="button" class="bt" value="예약하기"/>
        </div>
    </section>
     <section id="info_pay">
    	<div style="margin:20px 0 0 20px; font-size:18px;">
        <table cellpadding="10">
        	<tr>
            	<td width="100">티켓금액</td>
                <td >9,000원</td>
            </tr>
            <tr>
            	<td>할인금액</td>
                <td>0원</td>
            </tr>
        </table>
        <table cellpadding="10" style="border-top:1px solid black;">
        <tr>
           	<td width="100">총결제금액</td>
            <td>9,000원</td>
        </tr>
        </table>
    	</div>
    </section>
    <section id="bt">
    	<div>
        <input type="button" class="bt" value="처음부터"/>
        </div>
        <div style="padding-top:10px;">
        <input type="button" class="bt" value="예약하기"/>
        </div>
    </section>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>


</body>
</html>
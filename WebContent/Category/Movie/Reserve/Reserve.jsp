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
	/* top:30px;
	left: 275px;
	width: 950px;
 */
}



/* 달력 */



</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Movie/reserve.css" />
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />


</head>

<body>


<div id="wrapper">
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
	<div id="poster">
	<img src="/SwingFlow/images/Movie/Main/poster.png" width="900" alt="포스터"/>
</div>
<div id="logo" align="center"><a href="/SwingFlow/Category/Movie/Index.jsp">
	<img src="/SwingFlow/images/Movie/Main/logo.png" alt="로고"/></a>
</div>

	<div id="movie_img"><img src="/SwingFlow/images/Movie/Reserve/movie.gif" alt="영화선택"/></div>
    <div id="theater_img"><img src="/SwingFlow/images/Movie/Reserve/theater.gif" alt="극장선택"/></div>
    <div id="date_img"><img src="/SwingFlow/images/Movie/Reserve/date.gif" alt="극장선택"/></div>
    <div id="time_img"><img src="/SwingFlow/images/Movie/Reserve/time.gif" alt="시간선택"/></div>
	<section id="moviebox">
   	
    <div style="border-bottom:1px solid black; padding:3px 0 3px 3px;">
    <input type="text" id="search_movie" placeholder="영화명을 입력하세요" size="23"/>
    <input type="button" value="검색" id="bt_movie" />
    </div>
	<div id="sel_movie">
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
   <section id="theaterbox">
 	<div style="border-bottom:1px solid black; padding:3px 0 3px 3px;">
   <input type="text" id="search_theater" placeholder="극장명을 입력하세요" size="18"/>
   <input type="button" value="검색" id="bt_theater" />
   </div>
   <div style="margin-top:10px;">서울</div>
   <div id="sel_theater">
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
    <div>경기/인천</div>
    <div>부산/울산/경남</div>
    <div>대구/경북</div>
    <div>대전/충청/강원</div>
    <div>광주/전라/제주</div>
    
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
    <div style="float:left; margin-top:10px;"><img src="/SwingFlow/images/Movie/Reserve/tit_PersonNum_off.gif" alt="관람인원선택"/></div>
    <section id="sitbox">
    	<div style="float:left; margin-top:10px; margin-left:10px;" >
       	<table cellspacing="6" class="sel_choice">
        	<tr>	
            	<td>성인(9,000원)</td>
                
            </tr>
           </table>
           <table cellspacing="6" class="sel_choice">
            <tr>
            	<td>학생(8,000원</td>
                
            </tr>
        </table>
        </div>
    	<div style="float:right; margin-top:10px; margin-right:30px;">
    	<table cellspacing="6" class="sel_sit">
        	<tr>
            	<td>1</td>
                <td>2</td>
				<td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
            </tr>
        </table>
        <table cellspacing="6" class="sel_sit">
        	<tr>
            	<td>1</td>
                <td>2</td>
				<td>3</td>
                <td>4</td>
                <td>5</td>
                <td>6</td>
                <td>7</td>
                <td>8</td>
                <td>9</td>
            </tr>
        </table>
        </div>
        <div class="sel_age">선택하신 영화는 '전체 관람가' 영화입니다.</div>
    </section>
    <div class="sel_reserve_info"><img src="/SwingFlow/images/Movie/Reserve/tit_SelectMovieInfo.gif" alt="선택하신 예매정보" /></div>
       <div class="sel_pay_ino"><img src="/SwingFlow/images/Movie/Reserve/tit_PayInfo_off.gif" alt="관련요금정보"/></div>
    
    <section id="info_reserve">
    	<div class="poster_img"><img src="/SwingFlow/images/Movie/Reserve/poster.gif"/></div>
        <div style=" margin-top: 8px; float:left; height:130px;">
        	<table>
            	<tr>
                	<th>명량</th>
                	<td width="250" align="right"><img src="/SwingFlow/images/Movie/Reserve/b_MovieInfo.gif" alt="영화정보"/></td>
               	</tr>
                <tr>
                	<td><img src="/SwingFlow/images/Movie/Reserve/img_TheaterList_on.gif" alt="영화관" /></td>
                    <td>CGV</td>
                </tr>
                <tr>
                	<td><img src="/SwingFlow/images/Movie/Reserve/img_PlayDate_on.gif" alt="관람일"/></td>
                    <td>2014-08-08(금)</td>
                </tr>
                <tr>
                	<td><img src="/SwingFlow/images/Movie/Reserve/img_PlayTime_on.gif" alt="시간"/></td>
                    <td>15:40</td>
                </tr>
                <tr>
                	<td><img src="/SwingFlow/images/Movie/Reserve/img_PersonNum_on.gif" alt="인원정보"/></td>
                    <td>성인 1명</td>
                </tr>
                <tr>
                	<td><img src="/SwingFlow/images/Movie/Reserve/img_SeatArea_on.gif" alt="좌석정보"/></td>
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
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>


</body>
</html>
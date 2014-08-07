<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	 
		height:850px;
		width:1250px;
		clear:both;
		
	}
#main_content{
	border:1px solid black;
	position:absolute;
	top:30px;
	left: 275px;
	width: 950px;
	height:1000px;
}



/* 달력 */
#cal_wrap .cal {
	padding: 15px 10px 15px 10px;
}
/* 달력 */
#cal_wrap {
	border: 1px solid #4f4f4f;
	background-color: #fff;
	height: 264px;	
}

/* 달력 테두리 */
#divPlayDate {
	width: 210px;
	height: 275px;
	

}
#divSelectArea {
	height: 445px;
}

body, h1, h2, h3, h4, input, button {
	font-family: "돋움",dotum,Helvetica,sans-serif;
	font-size: 12px;
	color: #555;
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
	color: #505050;
	font-family: verdana;
	height: 25px;
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
img {
	border: 0;
	margin: 0;
	padding: 0;
}
a, img {
	text-decoration: none;
	outline: none;
	overflow: hidden;
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
.Hot2 a:visited, a:link {
	font-size: 12px;
	font-family: dotum;
	font-weight: normal;
	color: #0887e0;
	text-decoration: none;
	border: 0;
	color: #0887e0;
	cursor: hand;
	letter-spacing: -1px;
}
.Hot2 a:visited, a:link {
	font-size: 12px;
	font-family: dotum;
	font-weight: normal;
	color: #0887e0;
	text-decoration: none;
	border: 0;
	color: #0887e0;
	cursor: hand;
	letter-spacing: -1px;
}
#cal_wrap .next_month a {
	background: url(http://movie-img.yes24.com/reserve/b_date_ar_right.gif) 0 0 no-repeat;
	width: 14px;
	height: 13px;
	display: block;
}
h1, h2, h3, h4, p, ul, ol, span {
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
#moviebox{
	width:230px;
	height:450px;	
}
#theaterbox{
	width:200px;
	height:450px;
}
#datebox{
	width: 210px;
	height: 265px;	
}

#moviebox, #theaterbox, #datebox{
	float:left;	
	margin-right:10px;
	border:1px solid black;
	
	
}
#timebox{
		border:1px solid black;
		float:left;
		width:200px;
		height: 265px;	
}
#sitbox{
	float:left;
	
	border:1px solid black;
	width:420px;
	height:148px;
}
#sel_movie, #sel_theater, #sel_time{
	overflow:auto;
	height:200px;
	
		
}
#sel_movie ul li, #sel_theater ul li, #sel_time ul li
{	
	padding-bottom:5px;	
}


.list{
	list-style:none;
	
		
}
.list li{
	border-bottom:1px solid black;
	padding-top:5px;
	padding-left:20px;
}

/* 상단 이미지 */
#movie_img, #theater_img, #date_img, #time_img{
	float:left;	

}
#movie_img{
	width:230px;
	
}
#theater_img{
	width:200px;
	
}
#date_img{
	width:230px;
	
}
#time_img{
	width:200px;
	
}
#movie_img, #theater_img, #date_img{
	margin-right:10px;
}

.sel_sit td{
	border:1px solid black;	
	width:20px;
	height:20px;
}
.sel_choice td{
	border:1px solid black;	
	width:80px;
	height:20px;
}




</style>


</head>

<body>


<div id="wrapper">
<jsp:include page="sidemenu.jsp"></jsp:include>

<div id="main_content">
	<div id="movie_img"><img src="movie.gif" /></div>
    <div id="theater_img"><img src="theater.gif" /></div>
    <div id="date_img"><img src="date.gif" /></div>
    <div id="time_img"><img src="time.gif" /></div>
	<section id="moviebox">
   	
    <div style="border-bottom:1px solid black; padding:3px 0 3px 3px;">
    <input type="text" id="search_movie" placeholder="영화명을 입력하세요" size="27"/>
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
   <input type="text" id="search_theater" placeholder="극장명을 입력하세요" size="20"/>
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
    <div>서울</div>
    <div>서울</div>
    <div>서울</div>
    <div>서울</div>
    <div>서울</div>
    
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
    <div style="float:left; margin-top:10px;"><img src="tit_PersonNum_off.gif" /></div>
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
        <div style="float:left; margin-top:15px; margin-left:10px; padding-top:8px; border-top:1px solid black; width:380px;">선택하신 영화는 '전체 관람가' 영화입니다.</div>
    </section>
    <div style="float:left; margin-top:10px; width:442px; border:1px solid black;"><img src="tit_SelectMovieInfo.gif" /></div>
       <div style="float:left; margin-top:10px; width:420px; border:1px solid black; margin-left:10px;"><img src="tit_PayInfo_off.gif" /></div>
    <section id="info" style="width:300px; height:400px; border:1px solid black; float:left">
    
    </section>
</div>
</div>



</body>
</html>
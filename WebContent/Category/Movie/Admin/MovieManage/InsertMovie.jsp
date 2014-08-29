<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Movie/InsertMovie.css" />
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script src="/SwingFlow/Script/Movie/InsertMovie.js"></script>
<script type="text/javascript">

function popup(url,width,height){
	
	
	window.open(url,"popup","width=" + width + ", height=" + height + ",left=400,top=200");
	
}
/* , time, grade, genre, date */
function setChildValue(name, director, actor, time, grade, genre, date){
    $(".mName").text(name);
    $(".mDirector").text(director);
    $(".mActor").text(actor);
    $(".mTime").text(time);
    $(".mGrade").text(grade);
    $(".mGenre").text(genre);
    $(".mStart").text(date);

}
</script>
</head>
<body>
<form name="pfrm">

<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content" >

<div class="insert_title">영화등록하기<%=request.getParameter("a") %></div>

<div class="title_box">영화선택</div>


 <section id="moviebox">

  <input type="hidden" name="abc" id="a">
    	<table border="1" cellspacing="0" width="800">
    	<tr>
        	<td width="230" height="300" align="center" rowspan="6"><label for="movie">포스터</label></td>
            <td width="87" align="center">영화명</td>
            <td class="mName"></td>
    
        </tr>
    	<tr>
        	<td  align="center"><label for="director">감독</label></td>
            <td class="mDirector"></td>
        
        </tr>
        <tr>
        	<td align="center"><label for="actor">출연배우</label></td>
            <td class="mActor"></td>
     
        </tr>
        <tr>
        	<td align="center"><label for="mtime">상영시간</label></td>
            <td class="mTime"></td>
        </tr>
        <tr>
        	<td align="center"> <label for="grade">관람가</label></td>
            <td class="mGrade"></td>
        </tr>
        <tr>
        	<td align="center"><label for="genre">장르</label></td>
            <td class="mGenre"></td>	
        </tr>
         <tr>
         	<td height="50" align="center" class="m_bt" onclick="popup('SearchMovie.jsp','470','320');">검색</td>
        	<td align="center"><label for="mstart">개봉일</label></td>
            <td class="mStart"></td>
           
              
        </tr>
    </table>
    </section>
    <div style="float:left; margin-top:10px; width:240px; font-size:20px; margin-bottom:5px; font-weight:bold;">극장선택</div>
    <div style="float:left; margin-top:10px; width:600px; font-size:20px; margin-bottom:5px; font-weight:bold;">극장정보</div>
    <section id="theaterbox">
			<div style="border-bottom: 1px solid black; padding: 3px 0 3px 3px;">
				<input type="text" id="search_theater" placeholder="극장명을 입력하세요"
					size="18" /> <input type="button" value="검색" id="bt_theater" />
			</div>
			<div style="padding: 5px 0 5px 10px; border-bottom: solid 1px black;"
				class="local_seoul" onclick="selLocal('seoul');">서울</div>
			<div id="sel_theater"
				class="sel_theater sel_seoul incheon_except busan_except daegu_except daejeon_except gwangju_except">
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
			<div class="local local_incheon" style="border-top: 1px solid black;"
				onclick="selLocal('incheon');">경기/인천</div>
			<div id="sel_theater"
				class="sel_theater sel_incheon seoul_except busan_except daegu_except daejeon_except gwangju_except">
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
			<div id="sel_theater"
				class="sel_theater sel_busan incheon_except seoul_except daegu_except daejeon_except gwangju_except">
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
			<div id="sel_theater"
				class="sel_theater sel_daegu incheon_except seoul_except busan_except daejeon_except gwangju_except">
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
			<div id="sel_theater"
				class="sel_theater sel_daejeon incheon_except seoul_except busan_except daegu_except gwangju_except">
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
			<div id="sel_theater"
				class="sel_theater sel_gwangju incheon_except seoul_except busan_except daegu_except daejeon_except">
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
            <section style="float:left; width:650px;">
    	<table border="1" cellspacing="0" width="560" height="400">
    	<tr>
        	<td width="80">영화관명</td>
            <td></td>
        </tr>
        <tr>
        	<td>영화관명</td>
            <td></td>
        </tr>
        <tr>
        	<td>주소</td>
            <td></td>
        </tr>
         <tr>
        	<td>전화번호</td>
            <td></td>
        </tr>
        <tr>
        	<td>스크린수</td>
            <td></td>
        </tr>
        <tr>
        	<td>총좌석</td>
            <td></td>
        </tr>
    </table>
    </section>
    
    <div style="float:left; width:900px; font-size:20px; margin-bottom:5px; font-weight:bold; margin-top:10px;">상영기간선택</div>
    <section style="float:left; width:800px;">
	<input type="date" />~<input type="date" />

    </section>
    <div style="float:left; width:900px; font-size:20px; margin-bottom:5px; font-weight:bold; margin-top:10px;">상영기간선택</div>
  
    <section style="float:left; width:300px; height:200px;">
   <div class="sel_div_box">
  <div class="gwan_div"  onclick="time('gwan');">
  <div class="sel_txt">관</div><img src="/SwingFlow/images/Common/button.png" /></div>
  <div class="select_gwan" style="border:1px solid black; position:relative; display:none; overflow:auto; height:185px;">
  	<ul class="sel_list">
    	<li><a href="javascript:select('gwan',0);" class="sel_gwan0">관</a></li>
                	<li><a href="javascript:select('gwan',1);" class="sel_gwan1">1</a></li>
                 	<li><a href="javascript:select('gwan',2);" class="sel_gwan2">2</a></li>
                    <li><a href="javascript:select('gwan',3);" class="sel_gwan3">3</a></li>
                    <li><a href="javascript:select('gwan',4);" class="sel_gwan4">4</a></li>
                    <li><a href="javascript:select('gwan',5);" class="sel_gwan5">5</a></li>
                    <li><a href="javascript:select('gwan',6);" class="sel_gwan6">5</a></li>
                    <li><a href="javascript:select('gwan',7);" class="sel_gwan7">5</a></li>
                    <li><a href="javascript:select('gwan',8);" class="sel_gwan8">5</a></li>
                    <li><a href="javascript:select('gwan',9);" class="sel_gwan9">5</a></li> 
    </ul>
  </div>
 </div>
  <div style="width:20px; float:left; margin-top:3px; font-size:16px; margin-right:2px;margin-top:4px;">관</div>
 <div class="sel_div_box1">
  <div class="hour_div" onclick="time('hour');">
  <div class="sel_txt1">시간</div><img src="/SwingFlow/images/Common/button.png" /></div>
  <div class="select_hour" style="border:1px solid black; position:relative; display:none; overflow:auto; height:185px">
  	<ul class="sel_list">
    	<li><a href="javascript:select('hour',0);" class="sel_hour0">시간</a></li>
                	<li><a href="javascript:select('hour',1);" class="sel_hour1">4</a></li>
                 	<li><a href="javascript:select('hour',2);" class="sel_hour2">3</a></li>
                    <li><a href="javascript:select('hour',3);" class="sel_hour3">2</a></li>
                    <li><a href="javascript:select('hour',4);" class="sel_hour4">1</a></li>
                    <li><a href="javascript:select('hour',5);" class="sel_hour5">1</a></li>
                    <li><a href="javascript:select('hour',6);" class="sel_hour6">2</a></li>
                    <li><a href="javascript:select('hour',7);" class="sel_hour7">8</a></li>
                    <li><a href="javascript:select('hour',8);" class="sel_hour8">7</a></li>
                    <li><a href="javascript:select('hour',9);" class="sel_hour9">6</a></li> 
    </ul>
  </div>
 </div>
 <div style="width:40px; float:left; margin-top:3px; font-size:16px; margin-right:2px; margin-top:4px;">시간</div>
 <div class="sel_div_box">
  <div class="min_div" onclick="time('min');">
  <div class="sel_txt">분</div><img src="/SwingFlow/images/Common/button.png" /></div>
  <div class="select_min" style="border:1px solid black; position:relative; display:none; overflow:auto; height:185px">
  	<ul class="sel_list">
    	<li><a href="javascript:select('min',0);" class="sel_min0">분</a></li>
                	<li><a href="javascript:select('min',1);" class="sel_min1">4</a></li>
                 	<li><a href="javascript:select('min',2);" class="sel_min2">3</a></li>
                    <li><a href="javascript:select('min',3);" class="sel_min3">2</a></li>
                    <li><a href="javascript:select('min',4);" class="sel_min4">1</a></li>
                    <li><a href="javascript:select('min',5);" class="sel_min5">0</a></li>
                    <li><a href="javascript:select('min',6);" class="sel_min6">a</a></li>
                    <li><a href="javascript:select('min',7);" class="sel_min7">8</a></li>
                    <li><a href="javascript:select('m
                    in',8);" class="sel_min8">7</a></li>
                    <li><a href="javascript:select('min',9);" class="sel_min9">6</a></li> 
    </ul>
  </div>
 </div>
  <div style="width:40px; float:left; margin-top:2px; font-size:16px; margin-top:4px;">분</div>
  

    </section>
        <section style="float:left; width:450px;">
    <div style="overflow:auto; height:250px; border:1px solid black;">
   <ul style="list-style:none;">
    	<li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
        <li></li>
    </ul>
    </div>
    
    </section> 
    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
	</div>
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</form>
</body>
</html>
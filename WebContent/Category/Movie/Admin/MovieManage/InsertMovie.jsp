<%@page import="Common.DTO.Address"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="Movie.DAO.MovieDAO"></jsp:useBean>
<jsp:useBean id="dto" class="Common.DTO.Address"></jsp:useBean>
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
var playinfo = 1;


function popup(url,width,height){
	window.open(url,"popup","width=" + width + ", height=" + height + ",left=400,top=200");

}
/* , time, grade, genre, date */
function setChildValue(name, director, actor, time, grade, genre, date){
    $(".textmName").text(name);
    $(".textmDirector").text(director);
    $(".textmActor").text(actor);
    $(".textmTime").text(time);
    $(".textmGrade").text(grade);
    $(".textmGenre").text(genre);
    $(".textmStart").text(date);
    
    var str = date.substring(0,4) + date.substring(6,8) + date.substring(10,12);
    
    if(grade=="전체관람가"){
    	$(".sCode").val(1);
    }else if(grade=="12세관람가"){
    	$(".sCode").val(2);
    }else if(grade=="15세이상관람가"){
    	$(".sCode").val(3);
    }else{
    	$(".sCode").val(4);
    }
    
    $(".mName").val(name);
    $(".mDirector").val(director);
    $(".mTime").val(time);
    $(".mActor").val(actor);
    $(".mPlayDate").val(str);
    $(".mGenre").val(genre);

    $.ajax({
		url : 'mNameSearch.jsp',
		type : 'GET',
		data : {
			mPoster : encodeURI(name),
			gubun : encodeURI("poster"),
			
		},
		success : SearchmPoster
	});

    function SearchmPoster(data) {
		var items = $(data).find("item");
		var poster = $(items).find("image").text();
		
		$(".mPoster").val(poster);
		
		$(".img_poster").attr("src",$(items).find("image").text());
		$(".img_poster").attr({width:"150",height:"200"});
    }
}

	function selLocal(local){
		$("." + local + "_except").hide();
		$(".sel_" + local).show();	
	}
		

	$(function (){
		$(".sel_local").click(function(e) {
			$(".sel_local").addClass("local_off");
			$(".local_on").removeClass("local_on");
	        $(this).addClass("local_on");
			$(this).removeClass("local_off");
	    });
	
		
	});
	
	/* 극장정보 뿌리기 */
	function theaterinfo(local, no){
		$(".tName").text($("." + local +"name" + no).val());
		$(".tAddress").text($("." + local +"addr" + no).val());
		$(".tAddresss").text($("." + local +"addrs" + no).val());
		$(".tPhone").text($("." + local +"phone" + no).val());
		$(".tScreen").text($("." + local +"screen" + no).val());
		$(".tTotalSit").text($("." + local +"sit" + no).val());
		$(".tCode").val($("." + local +"tcode" + no).val());
		
		var screensu = $("." + local +"screen" + no).val();
		var gwan1="'gwan'";
		var firstline = "<li><a href='javascript:select('gwan',0);' class='sel_gwan0'>관</a></li>";
		$(".gwan_sel_list").empty();
		$(".gwan_sel_list").append(firstline);
		for(var i=1;i<=screensu;i++){
			$(".gwan_sel_list").append("<li><a href=javascript:select(" + "'gwan'," + i + "); class='sel_gwan" + i + "'>" + i + "</a></li>");
	  	   			
		}
	}
	
	/* 상영시간 선택 */
	function addtime(){
		var gwan = $(".gwan_div").text();
		var hour = $(".hour_div").text();
		var min = $(".min_div").text();
		var on = "on";
		if(gwan!="관" && hour!="시간" && min!="분"){
		$(".timebox").append("<div class='thover'><div class='checkbox'><input type='checkbox'></div><div class='timebox1'>" + gwan + "관" + "</div><input type='hidden' name='pArea" + playinfo + "' value='" + gwan + "'><div class='timebox2'>" + hour + ":" + min + "</div><input type='hidden' name='pPlayStart" + playinfo +"' value='" + hour + ":" + min + "'></div>");
		
		$(".playinfo").val(playinfo);
		playinfo++;
		
		}
	}
	
	/* 등록버튼 */
	
	$(function (){
		$(".insert_bt").click(function (e){
			var str = $(".textmStarts").val();
			var start = str.substring(0,4) + str.substring(5,7) + str.substring(8,10);
			
			var str1 = $(".textmEnd").val();
			var end = str1.substring(0,4) + str1.substring(5,7) + str1.substring(8,10);
			
			$(".mStart").val(start);
			$(".mEnd").val(end);
		});
	});
	
</script>
</head>
<body>



<form name="pfrm" action="InsertMoviePro.jsp">
<input type="hidden" class="tCode" name="tCode">
<input type="hidden" class="mName" name="mName">
<input type="hidden" class="mPoster" name="mPoster">
<input type="hidden" class="mGenre" name="mGenre">
<input type="hidden" class="mDirector" name="mDirector">
<input type="hidden" class="mTime" name="mTime">
<input type="hidden" class="mActor" name="mActor">
<input type="hidden" class="sCode" name="sCode">
<input type="hidden" class="mPlayDate" name="mPlayDate">
<input type="hidden" class="mStart" name="mStart">
<input type="hidden" class="mEnd" name="mEnd">
<input type="hidden" class="playinfo" name="playinfo">
<!-- 극장정보 뿌리기위한 히든값 -->
<%
	ArrayList<Address> list = new ArrayList<Address>();
	list = (ArrayList<Address>)dao.SelectAddr("서울", "one", "one", "one");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="stcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="sname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="saddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="saddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="sphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="sscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="ssit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>
<%
	list = (ArrayList<Address>)dao.SelectAddr("경기", "인천", "two", "two");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="gtcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="gname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="gaddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="gaddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="gphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="gscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="gsit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>
<%
	list = (ArrayList<Address>)dao.SelectAddr("부산", "울산", "경남", "three");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="ptcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="pname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="paddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="paddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="pphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="pscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="psit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>
<%
	list = (ArrayList<Address>)dao.SelectAddr("대구", "경북", "two", "two");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="dtcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="dname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="daddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="daddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="dphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="dscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="dsit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>
<%
	list = (ArrayList<Address>)dao.SelectAddr("대전", "충천", "강원", "three");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="djtcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="djname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="djaddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="djaddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="djphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="djscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="djsit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>
<%
	list = (ArrayList<Address>)dao.SelectAddr("광주", "전남", "전북", "제주");
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		%>
		<input type="hidden" class="jtcode<%=i %>" value="<%=dto.gettCode() %>">
		<input type="hidden" class="jname<%=i %>" value="<%=dto.gettName() %>">	
		<input type="hidden" class="jaddr<%=i %>" value="<%=dto.getFulladdr() %>">	
		<input type="hidden" class="jaddrs<%=i %>" value="<%=dto.gettDetailAddr() %>">	
		<input type="hidden" class="jphone<%=i %>" value="<%=dto.gettPhone() %>">	
		<input type="hidden" class="jscreen<%=i %>" value="<%=dto.gettScreen() %>">	
		<input type="hidden" class="jsit<%=i %>" value="<%=dto.gettTotalSit() %>">	
			
		<%
	}
%>

<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content" >

<div class="insert_title"></div>

<div class="title_box">영화선택</div>


 <section id="moviebox">

 
    	<table border="1" cellspacing="0" width="700">
    	<tr>
        	<td width="150" height="200" align="center" rowspan="6">
        	<label for="movie">
        		<img src="" alt="포스터" class="img_poster" width="" height="">
        	</label></td>
            <td width="87" align="center">영화명</td>
            <td class="textmName txt"></td>
    
        </tr>
    	<tr>
        	<td  align="center"><label for="director">감독</label></td>
            <td class="textmDirector txt"></td>
        
        </tr>
        <tr>
        	<td align="center"><label for="actor">출연배우</label></td>
            <td class="textmActor txt"></td>
     
        </tr>
        <tr>
        	<td align="center"><label for="mtime">상영시간</label></td>
            <td class="textmTime txt"></td>
        </tr>
        <tr>
        	<td align="center"> <label for="grade">관람가</label></td>
            <td class="textmGrade txt"></td>
        </tr>
        <tr>
        	<td align="center"><label for="genre">장르</label></td>
            <td class="textmGenre txt"></td>	
        </tr>
         <tr>
         	<td height="31" align="center" class="m_bt" onclick="popup('SearchMovie.jsp','470','320');">검색</td>
        	<td align="center"><label for="mstart">개봉일</label></td>
            <td class="textmStart txt"></td>
           
              
        </tr>
    </table>
    </section>
    <div style="float:left; margin-top:10px; width:190px; font-size:20px; margin-bottom:5px; font-weight:bold;">극장선택</div>
    <div style="float:left; margin-top:10px; width:600px; font-size:20px; margin-bottom:5px; font-weight:bold;">극장정보</div>
    <section id="theaterbox">
			
			<div style="padding: 5px 0 5px 10px; border-bottom: solid 1px black;"
				class="local_seoul" onclick="selLocal('seoul');">서울</div>
			<div id="sel_theater"
				class="sel_theater sel_seoul incheon_except busan_except daegu_except daejeon_except gwangju_except">
				<ul class="list">
					<% 
						list = (ArrayList<Address>)dao.SelectAddr("서울", "one", "one", "one");
						for(int i=0;i<list.size();i++){
							dto = (Address)list.get(i);
						%>
								<li class="sel_local local_off" onclick="theaterinfo('s','<%=i%>');"><%=dto.gettName() %></li><%
					
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
						list = (ArrayList<Address>)dao.SelectAddr("경기", "인천", "two", "two");
						for(int i=0;i<list.size();i++){
							dto = (Address)list.get(i);
							%>
								<li class="sel_local local_off" onclick="theaterinfo('g','<%=i%>');"><%=dto.gettName() %></li><%
							
						}
				%>
				</ul>
			</div>
			<div class="local local_busan" onclick="selLocal('busan');">부산/울산/경남</div>
			<div id="sel_theater"
				class="sel_theater sel_busan incheon_except seoul_except daegu_except daejeon_except gwangju_except">
				<ul class="list">
					<% 
						list = (ArrayList<Address>)dao.SelectAddr("부산", "울산", "경남", "three");
					for(int i=0;i<list.size();i++){
						dto = (Address)list.get(i);
						%>
							<li class="sel_local local_off" onclick="theaterinfo('p','<%=i%>');"><%=dto.gettName() %></li><%
						}
					
			%>
				</ul>
			</div>
			<div class="local local_daegu" onclick="selLocal('daegu');">대구/경북</div>
			<div id="sel_theater"
				class="sel_theater sel_daegu incheon_except seoul_except busan_except daejeon_except gwangju_except">
				<ul class="list">
					<% 
						list = (ArrayList<Address>)dao.SelectAddr("대구", "경북", "two", "two");
						for(int i=0;i<list.size();i++){
							dto = (Address)list.get(i);
							%>
								<li class="sel_local local_off" onclick="theaterinfo('d','<%=i%>');"><%=dto.gettName() %></li><%
							}
				%>
				</ul>
			</div>
			<div class="local local_daejeon" onclick="selLocal('daejeon');">대전/충청/강원</div>
			<div id="sel_theater"
				class="sel_theater sel_daejeon incheon_except seoul_except busan_except daegu_except gwangju_except">
				<ul class="list">
					<% 
						list = (ArrayList<Address>)dao.SelectAddr("대전", "충청", "강원", "three");
						for(int i=0;i<list.size();i++){
							dto = (Address)list.get(i);
							%>
								<li class="sel_local local_off" onclick="theaterinfo('dj','<%=i%>');"><%=dto.gettName() %></li><%
							
						}
				%>
				</ul>
			</div>
			<div class="local local_gwangju" onclick="selLocal('gwangju');">광주/전라/제주</div>
			<div id="sel_theater"
				class="sel_theater sel_gwangju incheon_except seoul_except busan_except daegu_except daejeon_except">
				<ul class="list">
					<% 
						list = (ArrayList<Address>)dao.SelectAddr("광주", "전남", "전북", "제주");
						for(int i=0;i<list.size();i++){
							dto = (Address)list.get(i);
							%>
								<li class="sel_local local_off" onclick="theaterinfo('j','<%=i%>');"><%=dto.gettName() %></li><%
							}
						%>
				</ul>
			</div>

			</section>
            <section style="float:left; width:650px;">
    	<table border="1" cellspacing="0" width="509" height="230">
    	<tr>
        	<td width="80" align="center">영화관명</td>
            <td class="tName txt"></td>
        </tr>
        <tr>
        	<td align="center">주소</td>
            <td class="tAddress txt"></td>
        </tr>
        <tr>
        	<td align="center">상세주소</td>        	
            <td class="tAddresss txt"></td>
        </tr>
         <tr>
        	<td align="center">전화번호</td>
            <td class="tPhone txt"></td>
        </tr>
        <tr>
        	<td align="center">스크린수</td>
            <td class="tScreen txt"></td>
        </tr>
        <tr>
        	<td align="center">총좌석</td>
            <td class="tTotalSit txt"></td>
        </tr>
    </table>
    </section>
    
    <div style="float:left; width:560px; font-size:20px; margin-bottom:5px; font-weight:bold; margin-top:15px;">요금선택</div>
    <section style="float:left; width:560px; height:50px;">학생&nbsp;<input type="text" name="cTeen" size="10" style="margin-bottom: 6px;"/>원&nbsp;&nbsp;&nbsp;&nbsp;성인&nbsp;<input type="text" name="cAdult" size="10"/>원

    </section>
    
    <div style="float:left; width:850px; font-size:20px; margin-bottom:5px; font-weight:bold; margin-top:10px;">상영기간선택</div>
    <section style="float:left; width:320px;">
	<input type="date" class="textmStarts"/>&nbsp;~&nbsp;<input type="date" class="textmEnd"/>

    </section>
    <section style="float:right; width:360px; margin-right:206px;">
    <div class="timebox" style="overflow:auto; height:180px; border:1px solid black;">
   		
   
  	<!-- <table border="1" cellpadding="6" cellspacing="0">
  		<tr>
  			<td width="100">1관</td>
  			<td width="150">20:10</td>
  		</tr>
  	</table> -->
  	
  	
    </div>
    
    </section> 
    
    
    <div style="float:left; width:300px; font-size:20px; margin-bottom:5px; font-weight:bold; margin-top:10px;">상영시간선택</div>
  
    <section style="float:left; width:305px; height:80px;">
   <div class="sel_div_box">
  <div class="gwan_div1">
  <div class="sel_txt gwan_div" onclick="time('gwan');">관</div><img src="/SwingFlow/images/Common/button.png" onclick="time('gwan');"/></div>
  <div class="select_gwan" style="border:1px solid black; position:relative; display:none; overflow:auto; height:155px; background: white;">
  	<ul class="sel_list gwan_sel_list">
  	   	<li><a href="javascript:select('gwan',0);" class="sel_gwan0">관</a></li>
  	   
        </ul>
  </div>
 </div>
  <div style="width:20px; float:left; margin-top:3px; font-size:16px; margin-right:2px;margin-top:4px;">관</div>
 <div class="sel_div_box1">
  <div class="hour_div1">
  <div class="sel_txt1 hour_div"  onclick="time('hour');">시간</div><img src="/SwingFlow/images/Common/button.png" onclick="time('hour');" /></div>
  <div class="select_hour" style="border:1px solid black; position:relative; display:none; overflow:auto; height:155px; background: white;">
  	<ul class="sel_list">
    	<li><a href="javascript:select('hour',0);" class="sel_hour0">시간</a></li>
        <%for(int i=1;i<=24;i++){
			if(i<10){
				%>
				<li><a href="javascript:select('hour',<%=i %>);" class="sel_hour<%=i%>"><%="0" + i%></a></li>
		<%		
			}else{
		%>
              	<li><a href="javascript:select('hour',<%=i %>);" class="sel_hour<%=i%>"><%=i%></a></li>
        <%} }%>
    </ul>
  </div>
 </div>
 <div style="width:40px; float:left; margin-top:3px; font-size:16px; margin-right:2px; margin-top:4px;">&nbsp;시</div>
 <div class="sel_div_box">
  <div class="min_div1" >
  <div class="sel_txt min_div" onclick="time('min');">분</div><img src="/SwingFlow/images/Common/button.png" onclick="time('min');"/></div>
  <div class="select_min" style="border:1px solid black; position:relative; display:none; overflow:auto; height:155px; background: white;">
  	<ul class="sel_list">
    	<li><a href="javascript:select('min',0);" class="sel_min0">분</a></li>
      	<li><a href="javascript:select('min',1);" class="sel_min1">00</a></li>
        <li><a href="javascript:select('min',2);" class="sel_min2">05</a></li>
        <li><a href="javascript:select('min',3);" class="sel_min3">10</a></li>
        <%
        int min=15;
        for(int i=4;min<=55;i++){ %>  
                    <li><a href="javascript:select('min',<%=i %>);" class="sel_min<%=i%>"><%=min %></a></li>
                    
        <%
        min += 5;
        } %>
                  
    </ul>
  </div>
 </div>
  <div style="width:40px; float:left; margin-top:2px; font-size:16px; margin-top:4px;">분</div>
  <div class="time_bt">
 	 <input type="button" value="추가" class="add_bt" onclick="addtime();">
 	 <input type="button" value="삭제" class="del_bt">
  </div>
  

    </section>
        
    <div class="div_button">
	<input type="submit" value="등록하기" class="insert_bt"/>
  	<input type="button" value="뒤로가기" />
	</div>

</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</form>
</body>
</html>
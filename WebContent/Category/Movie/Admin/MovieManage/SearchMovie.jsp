<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>

.title_box {
	font-weight:bold;
	width: 400px;
	font-size: 23px;
	margin: 5px 0 15px 5px;
}

.mbox {

	width: 450px;
	margin-bottom: 15px;
	height: 30px;
}

.cate {
	
	float: left;
	margin-left: 5px;
}

.search_txt {
	float: left;

	margin-left: 5px;
}

.search_bt {
	float: left;

	margin-left: 5px;
}

#searchbt {
	width: 100px;
	font-weight: bold;
	background: #0043A8;
	background: -moz-linear-gradient(#43A9FF, #0043A8);
	background: -o-linear-gradient(#43A9FF, #0043A8);
	background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color: white;
	border: none;
	height: 25px;
	cursor: pointer;
}

.result_txt {

	float: left;
	margin-left: 5px;
	margin-bottom: 5px;
}

.result_box {
	float: left;

	width: 430px;
	height: 180px;
	overflow: auto;
	margin-left: 5px;
}
.table_title{
		background: #0043A8;
	background: -moz-linear-gradient(#43A9FF, #0043A8);
	background: -o-linear-gradient(#43A9FF, #0043A8);
	background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color: white;
	font-weight:bold;
}
.result_table tr{
	cursor:pointer;	
}
.result_table tr:hover{
	background:#B4FFFF;
}
</style>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script src="/SwingFlow/Script/Movie/ajaxJson.js"></script>
<script type="text/javascript">
	// AJAX before
	// AJAX before
	// AJAX before
// 	var xhr = new xhRequest();
// 	// load Event
// 	$(function(e) {
// 		// 초기
// 		xhr.SetXHRequest();

// 		// Event
// 		// event
// 		$("#searchbt").click(function(e) {
// 			var mName = $("#msearch").val();
// 			alert("aa");
// 			xhr.openGet("mNameSearch.jsp?mName=" + mName, SearchmName);

// 		});
// 	});

// 	function SearchmName() {
// 		if (xhr.xhReq.readyState == 4) {
// 			// xhReq.status == 200 : 성공
// 			if (xhr.xhReq.status == 200) {

// 				// alert(xhr.xhReq.getResponseHeader("Content-Type"));
// 				var xml = xhr.xhReq.responseXML; // xml객체 리턴
// 				var items = $(xml).find("item");
// 				$("#b").empty();
// 				for (var i = 0; i < items.length; i++) {
// 					$(".result_box").append(
// 							$(items[i]).find("title").find("content").text());

// 				}
// 			}
// 		}
// 	}

	//AJAX After
	//AJAX After
	//AJAX After
	
	var plus=1;
	$(function(e) {
		
		
		
		$("#msearch").focus();
		
		$("#searchbt").click(function(e) {
			
			var cate = $("#select_cate").val();
			
			
			
			$(".result_table").empty();
			
			if(cate==1){
			
			var mName = $("#msearch").val();
			var gubun="name";
			// 		alert("aa");
			$.ajax({
				url : 'mNameSearch.jsp',
				type : 'GET',
				data : {
					mName : encodeURI(mName),
					gubun : encodeURI(gubun),
				},
				success : SearchmName
			});
			}else if(cate==2){
				var mName = $("#msearch").val();
				var gubun="director";
				// 		alert("aa");
				$.ajax({
					url : 'mNameSearch.jsp',
					type : 'GET',
					data : {
						mName : encodeURI(mName),
						gubun : encodeURI(gubun),
					},
					success : SearchmName
				});
				
			}

		});
	});
	function SearchmName(data) {
		var items = $(data).find("movie");
		
		for (var i = 0; i < items.length; i++) {
			var mCode = $(items[i]).find("movieCd").text();
			
			$.ajax({
				url : 'mNameSearch.jsp',
				type : 'GET',
				data : {
					mCode : encodeURI(mCode),
					gubun : encodeURI("code"),
					
				},
				success : SearchmCode
			});
			
			}
			
		}
	
	function SearchmCode(data) {
		var items = $(data).find("movieInfo");
		
		var hidden = "<input type='hidden' class='mName" + plus + "' name='mName'>";
		hidden +="<input type='hidden' class='mDirector" + plus + "' name='mDirector'>";
		hidden += "<input type='hidden' class='mActor" + plus + "' name='mActor'>";
		hidden += "<input type='hidden' class='mTime" + plus + "' name='mTime'>";
		hidden += "<input type='hidden' class='mGrade" + plus + "' name='mGrade'>";
		hidden += "<input type='hidden' class='mGenre" + plus + "' name='mGenre'>";
		hidden += "<input type='hidden' class='mDate" + plus + "' name='mDate'>";
		
		
		$(".result_table").append("<tr class='sel_movie' onclick='selmovie(" + plus + ")'><td width='290' align='center'>" + $(items).find("movieNm").text() + "</td><td width='130' align='center'>" + $(items).find("directors").find("director").find("peopleNm").text() + hidden + "</td>/tr>");
		var name = $(items).find("movieNm").text();
		var director = $(items).find("directors").find("director").find("peopleNm").text();
		var actor = $(items).find("actors").find("actor");
		var actors = "";
		var time = $(items).find("showTm").text() + "분";
		var grade = $(items).find("audits").find("audit").find("watchGradeNm").text();
		var genre =  $(items).find("genres").find("genre").find("genreNm").text();
		var mdate = $(items).find("openDt").text()
		var sdate = mdate.substring(0,4) + "년 " + mdate.substring(4,6) + "월 " + mdate.substring(6,8) + "일";
		
		for(var i=0;i<actor.length;i++){
	
		if(i==4 || i+1 == actor.length){
			actors += $(actor[i]).find("peopleNm").text();
			break;
		}else{
			actors += $(actor[i]).find("peopleNm").text() + ", ";
			}
		}
		
		$(".mName" + plus).val(name);
		$(".mDirector" + plus).val(director);
		$(".mActor" + plus).val(actors);
		$(".mTime" + plus).val(time);
		$(".mGrade" + plus).val(grade);
		$(".mGenre" + plus).val(genre);
		$(".mDate" + plus).val(sdate);
		
		
		
		plus++;
	}
	
	function selmovie(no){
		
		alert(no);
		opener.setChildValue($(".mName" + no).val(), $(".mDirector" + no).val(), $(".mActor" + no).val(), $(".mTime" + no).val(), $(".mGrade" + no).val(), $(".mGenre" + no).val(), $(".mDate" + no).val() );
		window.close();
	}

	
	function selectMovie(){
			
			opener.setChildValue($("#mName").val(), $("#mDirector").val(), $("#mActor").val());
			window.close();
	}
			
	
</script>


</head>
<form action="InsertMovie.jsp" name="frm">


<div style="width: 450px; height: 300px;">
		<div class="title_box">영화검색</div>
		<div class="mbox">
			<div class="cate">
			<select id="select_cate">
            	<option value="1">영화명</option>
                <option value="2">감독명</option>
            </select>
			</div>
			<div class="search_txt">
				<input type="text" id="msearch" size="35" name="a" />
			</div>
			<div class="search_bt">
				<input type="button" value="검색" id="searchbt" />
			</div>
		</div>
		<div class="result_txt">검색결과</div>
		<div class="result_box">
			<table cellspacing="0" cellpadding="5" class="table_title">
				<tr>
					<td width="290" align="center" style="border-right:1px solid white;">영화명</td>
					<td width="130" align="center" class="movie_sel">감독</td>
                   
				</tr>
			</table>
			<table class="result_table" cellspacing="0" cellpadding="5">
			
			</table>
		</div>
	</div>
</form>
</html>

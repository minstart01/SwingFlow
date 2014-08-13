<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css">


  <script>
  $(function(){
	  $('#detailSearch').click(function(e){
		  $('#dvResult').empty();
		  $('#dvResult').load("M2_MileageDetail.jsp");
	  });
  });
/* 달력 ============================================================================================  */
 
  $(function() {

    $( "#datepicker" ).datepicker({
    	dateFormat: "yy-mm-dd",
 showOn: "button",
  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
  buttonImageOnly: true,
  changeMonth: true,
  changeYear: true
    });
  });
  $(function() {

	    $( "#datepicker01" ).datepicker({
	    	dateFormat: "yy-mm-dd",
	 showOn: "button",
	  buttonImage: "/SwingFlow/images/Airline/reserv/calendar.png",
	  buttonImageOnly: true,
	  changeMonth: true,
	  changeYear: true
	    });
	  });






  </script>
</head>
<style>
* {
	margin: 0;
	padding: 0;
}
header, section, article, footer, nav, aside {
	display: block;
}
#containerBox #container #containerBody {
	margin: 0 0 0 0px;
	padding: 27px 0 100px 50px;
	min-height: 780px;
	_height: 780px;
}
#skipCt {
	min-height: 650px;
	_height: 650px;
}
#containerBox #container {
	width: 956px;
	margin: 0 auto;
	position: relative;
}
#containerBox {
	background: url("/images/bg/bg_body1_1.jpg") repeat-x center 0;
}
#containerBox {
	background: url("/images/bg/bg_body1_1.jpg") repeat-x center 0;
}
body, table, input, textarea, select, button {
	font-size: 12px;
}
body, input, textarea, select, table, button {
	font: 12px gulim, helvetica, sans-serif;
}
#containerBox #container #containerBody h3.h3_type01 {
	font-size: 24px;
	font-family: "돋움";
	color: #010101;
	font-weight: normal;
	margin: 0 0 44px 0;
	line-height: 28px;
}
.myasianaBox2#containerBox #container #containerBody h3.h3_type01 {
	font-size: 24px;
	color: #010101;
	font-weight: normal;
	margin: 3px 0 47px;
	font-family: "돋움";
}
.myasianaBox2 .h4_type04 {
	font-weight: bold;
	font-size: 16px;
	line-height: 32px;
	background: url(/images/bg/bgK_myAsianaH4Blit.gif) no-repeat left top;
	padding: 4px 0 6px;
	display: inline-block;
	font-family: "돋움";
}
.myasianaBox2 .myBoxType1 {
	border-top: #5c5f66 solid 1px;
	border-bottom: #adafb2 solid 1px;
	padding: 0 0 20px;
	margin: 0 0 10px;
}
ul, ol {
	list-style: none;
}
.myasianaBox2 .alertList01 {
	padding: 6px 0 0;
}
.myasianaBox2 .line2 {
	margin: 26px 0 0 !important;
}
.myasianaBox2 .line2.h4_type04 {
	margin: 36px 0 0;
}
.myasianaBox2 .tabContainer {
	background: url(/images/bg/bgK_myAsianaBoxTabUiTop.gif) no-repeat left 29px;
}
.myasianaBox2 .tabContainer .mileageTabUI {
	position: absolute;
	margin: 0;
}
.myasianaBox2 .tabContainer .boxInner {
	background: url(/images/bg/bgK_myAsianaBoxTabUiBot.gif) no-repeat bottom left;
	padding-top: 10px;
	padding-right: 25px;
	padding-bottom: 25px;
	padding-left: 25px;
}
.myasianaBox2 .tabContainer .boxInner dl {
	display: block;
	border-bottom: #e4e4e4 1px solid;
	padding: 10px 0;
	display: inline-block;
}
.myasianaBox2 .btn_personneList {
	text-align: right;
	padding: 20px 0 0;
}
.myasianaBox2 .noPadding {
	padding: 0 0 10px;
}
.myasianaBox2 .top10.noPadding {
	padding: 10px 0 0;
}
.Sbtn_TType04_3 {
	background: url("/images/bg/Sbtn_TTypeL04_3.gif") no-repeat 0 0;
	display: inline-block;
}
a {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
.Sbtn_TType04_3 a {
	background: url("/images/bg/Sbtn_TTypeR04_3.gif") no-repeat right 0;
	padding: 0 15px 0 35px;
	display: block;
	height: 25px;
	line-height: 25px;
	font-weight: bold;
}
.myasianaBox2 .tabContainer .boxInner dl dt {
	font-size: 13px;
	font-weight: bold;
	line-height: 20px;
	float: left;
	width: 500px;
}
.myasianaBox2 .tabContainer .boxInner dl dd {
	font-size: 12px;
	line-height: 20px;
	float: left;
	width: 571px;
}
input {
	border-radius: 0;
}
.selectType04 {
	background: url("/images/bg/bg_selectLeft4.gif") no-repeat 0 0;
	display: inline-block;
	width: 100%;
}
.selectType04 {
	background: url("/star_images/bg/bg_selectLeft4.gif") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
	display: inline-block;
	width: 100%;
}
.myasianaBox2 .btnETC {
	z-index: 10;
	position: absolute;
	right: 0px;
	bottom: 0px;
}
.myasianaBox2 .CalendarBox {
	position: absolute;
	top: -3px;
	left: 0px;
	display: none;
	background: url(/images/bg/bgK_CalendarBoxTop.gif) no-repeat top left;
	z-index: 20;
}
.myasianaBox2 .CalendarInner {
	padding: 5px 0 4px;
	float: left;
	*zoom:1: ;
	background: url(/images/bg/bgK_CalendarBoxBot.gif) no-repeat bottom left;
}
.myasianaBox2 .CalendarInner::after {
	content: "";
	display: block;
	clear: both;
}
.myasianaBox2 .btn_close2 {
	position: absolute;
	top: 10px;
	right: 10px;
}
.myasianaBox2 .btn_close2 {
	position: absolute;
	top: 10px;
	right: 10px;
}
img, fieldset, iframe {
	border: 0 none;
	vertical-align: top;
}
.myasianaBox2 .btn_close2 * {
	vertical-align: top !important;
}
.selectType04 a {
	background: url("/images/bg/bg_selectRight4.gif") no-repeat right 0;
	display: block;
	line-height: 11px;
	color: #666;
	height: 25px;
	line-height: 25px;
	padding: 0 0 0 10px;
	font-size: 12px;
	overflow: hidden;
}
.selectType04 a {
	background: url("/star_images/bg/bg_selectRight4.gif") no-repeat scroll right 0 rgba(0, 0, 0, 0);
	color: #666;
	display: block;
	font-size: 12px;
	height: 25px;
	line-height: 25px;
	overflow: hidden;
	padding: 0 0 0 10px;
}
.myasianaBox2 .selectBox {
	position: relative;
	width: 120px;
}
.myasianaBox2 .month.selectBox {
	width: 65px;
}
.selectStyle {
	position: relative;
	z-index: 1;
	height: 30px;
	border-left: 1px solid #999;
	*zoom:1: ;
	background: #fff url("/images/select/bg_select_x.gif") repeat-x 0 bottom;
	border: 1px solid #999;
}
.selectStyle::after {
	display: block;
	content: "";
	clear: both;
}
.selectStyle * {
	vertical-align: top;
}
.selectStyle span {
	overflow: hidden;
	display: block;
	position: relative;
	width: 100%;
	height: 30px;
}
.selectStyle span input[type='text'] {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	background-color: transparent;
	background: url("/images/select/arr_select.gif") no-repeat right 50%;
	height: 30px;
	border: none;
	font-size: 12px;
	color: #333;
	text-indent: -1500px;
	*text-indent:5px: ;
	z-index: -1;
	color: transparent;
	*color:#333: ;
}
.selectStyle select {
	height: 20px;
	background: transparent;
	font-size: 12px;
	*filter:alpha(opacity=0): ;
	*opacity:0: ;
	width: 115%;
	border: none;
	padding: 4px 0 0 0;
}
.myasianaBox2 .year.selectBox {
	width: 85px;
}
.myasianaBox2 .btnKSelType01 {
	background: url("/images/bg/bgK_selectLeft20.gif") no-repeat 0 0;
	display: inline-block;
	width: 55px;
}
.myasianaBox2 .btnKSelType01 a {
	background: url("/images/bg/bgK_selectRight20.gif") no-repeat right 0;
	display: block;
	color: #000;
	height: 21px;
	line-height: 21px;
	text-align: center;
	font-size: 11px;
	font-family: "돋움", dotum;
}
.myasianaBox2 .tabContainer .boxInner dl dd * {
	vertical-align: middle;
}
.myasianaBox2 .tabContainer .boxInner dl dd .checkUl {
	display: inline-block;
}
.myasianaBox2 .tabContainer .boxInner dl dd .checkUl li {
	float: left;
	width: 145px;
	line-height: 20px;
}
.myasianaBox2 .tabContainer .boxInner dl dd .checkUl li label {
	color: #000;
}
.myasianaBox2 .tabContainer .boxInner dl dd .termUi {
	display: inline-block;
	margin: 0 0 9px;
}
.myasianaBox2 .tabContainer .boxInner dl dd .last.termUi {
	display: inline-block;
	margin: -4px 0 0;
}
.myasianaBox2 .tabContainer .boxInner dl dd .termUi .baseArea {
	position: relative;
	float: left;
	line-height: 25px;
	margin: 0 5px 0 0;
}
.myasianaBox2 .tabContainer .boxInner dl dd .termUi .calendarArea {
	width: 156px;
}
.selectType04 * {
	vertical-align: middle;
}
.myasianaBox2 .tabContainer .boxInner dl dd .termUi .baseArea .leftPan {
	padding: 0 0 0 29px;
	font-size: 11px;
	color: #4c4c4c;
	font-family: "돋움";
}
.myasianaBox2 .tabContainer .boxInner dl dd .checkUl li.last {
	width: auto;
}
.myasianaBox2 .tabContainer .mileageTabUI li {
	float: left;
	width: 213px;
	background: url(/images/bg/bgK_myAsianaMileageTab_off.gif) no-repeat top left;
	height: 30px;
	line-height: 30px;
}
.myasianaBox2 .tabContainer .mileageTabUI li.on {
	background: url(/images/bg/bgK_myAsianaMileageTab_on.gif) no-repeat top left;
}
.myasianaBox2 .tabContainer .mileageTabUI li a {
	color: #000;
	padding: 0 25px;
	display: block;
	background: none;
}
.myasianaBox2 .tabContainer .mileageTabUI li.on a {
	color: #581cb4;
	font-weight: bold;
	text-decoration: underline;
}
.myasianaBox2 .tabContainer .mileageTabUI .on.tab0 a {
	background: url(/images/bg/bg_arrow4.gif) no-repeat 86px center;
}
.myasianaBox2 .h4_type04 img {
	margin: 8px 0 0;
}
.myasianaBox2 .alertList01 li {
	color: #333;
	background: url(/images/bl/bl_ck.gif) no-repeat left 6px;
	padding: 0 0 0 21px;
	line-height: 18px;
	font-size: 11px;
	font-family: "돋움";
}
.myasianaBox2 .btnKType08 {
	background: url("/images/bl/bl_go.gif") no-repeat right 3px;
	display: inline-block;
}
.myasianaBox2 .btnKType08 a {
	font-weight: bold;
	text-decoration: underline;
	margin: 0 12px 0 0;
	color: #333;
}
table {
	border-collapse: collapse;
}
.myasianaBox2 .mileageTable {
	width: 100%;
	margin: 0 0 20px;
}
.myasianaBox2 .myBoxInnerType0 {
	background: url(/images/bg/bgK_myAsianaBoxType0Top.gif) no-repeat top left;
	width: 520px;
	margin: 0 0 5px 191px;
}
.myasianaBox2 .myBoxInnerType0 .boxInner {
	background: url(/images/bg/bgK_myAsianaBoxType0Bot.gif) no-repeat bottom left;
	padding: 0 11px;
	line-height: 31px;
}
.myasianaBox2 .myBoxInnerType0 .boxInner dl {
	display: inline-block;
	width: 498px;
}
.myasianaBox2 .myBoxInnerType0 .boxInner dl dt {
	line-height: 31px;
	float: left;
	font-size: 11px;
	color: #5c5f66;
	font-family: "돋움";
}
.myasianaBox2 .myBoxInnerType0 .boxInner dl dd {
	line-height: 31px;
	font-weight: bold;
	text-align: right;
}
.myasianaBox2 .fontPerple {
	color: #5e14cc !important;
}
.myasianaBox2 .btnKType03 {
	background: url(/images/bg/bgK_selectLeft14.gif) no-repeat 0 0;
	display: inline-block;
}
.myasianaBox2 .btnRPadding {
	margin: 0 0 0 10px;
}
.myasianaBox2 .btnKType03 a {
	background: url(/images/bg/bgK_selectRight14.gif) no-repeat right 0;
	padding: 0 29px 0 11px;
	display: block;
	color: #4d4d4d;
	height: 22px;
	line-height: 22px;
	font-size: 11px;
	font-family: "돋움";
}
caption, legend, #accessibility, .hidden {
	font-size: 0px;
	line-height: 0;
	text-indent: -5000px;
}
.myasianaBox2 .mileageTable tbody th {
	border-bottom: #e4e4e4 1px solid;
	line-height: 17px;
	padding: 3px 9px;
	font-size: 11px;
	color: #000;
	text-align: left;
	vertical-align: top;
	font-weight: normal;
	font-family: "돋움";
}
.myasianaBox2 .mileageTable tbody td {
	border-bottom: #e4e4e4 1px solid;
	line-height: 17px;
	padding: 3px 9px;
	font-size: 12px;
	color: #000;
	text-align: left;
	vertical-align: top;
}
.myasianaBox2 .mileageTable .tableTop {
	padding-top: 10px;
}
.myasianaBox2 .mileageTable thead th {
	background: #f8f8f8;
	border-bottom: #adafb2 1px solid;
	line-height: 18px;
	padding: 8px 9px;
	font-size: 11px;
	color: #5c5f66;
	text-align: left;
	font-family: "돋움";
}
.myasianaBox2 .mileageTable .thPadding {
	padding-left: 0px;
}
.myasianaBox2 .mileageTable .alignRight {
	text-align: right;
}
.myasianaBox2 .mileageTable .last {
	border: none;
}
.myasianaBox2 .mileageTable .result {
	color: #5e14cc;
	font-weight: bold;
}
.myasianaBox2 .mileageTable .totalUse {
	font-size: 12px;
}
.myasianaBox2 .mileageTable .totalUse strong {
	font-family: Arial;
	font-size: 28px;
	line-height: 30px;
	font-weight: bold;
}
.myasianaBox2 .h4_type04 strong {
	margin: 0 8px 0 0;
}
.myasianaBox2 .h4_type04 .imgClass {
	margin: 0 0 -2px;
	vertical-align: baseline;
}
</style>

<body oncontextmenu="return false"><form name="form" method="post"><div id="wrap_container"><section id="main_container"><div class="myasianaBox2" id="containerBox"><div id="container"><div id="skipCt"><section id="containerBody">
						<h3 class="h3_type01">마일리지 조회</h3>
						<!-- dtLineBox -->
						<h4 class="h4_type04"><strong>임유경</strong>님의 마일리지 현황</h4>
						<div class="myBoxType1">
							<table class="mileageTable" summary="임유경 회원님 마일리지 현황  테이블이며 사용가능한 마일리지, 구분, 유효기간 미적용, 유효기간 적용 합계 등의 정보로 구성되어 있음.">
								<caption>임유경 회원님의 마일리지 현황</caption>
								<colgroup>
									<col width="28%">
									<col width="14%">
									<col width="19%">
									<col width="18%">
									<col width="21%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">사용가능한 마일리지</th>
										<th class="thPadding" scope="col">구분</th>
										<th class="alignRight" scope="col">유효기간 미적용</th>
										<th class="alignRight" scope="col">유효기간 적용</th>
										<th class="alignRight" scope="col">합계</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td class="last totalUse tableTop" rowspan="4"><strong>36,431</strong> miles</td>
										<th class="tableTop thPadding" scope="row">적립 마일리지</th>
										<td class="alignRight tableTop">0</td>
										<td class="alignRight tableTop">36,431</td>
										<td class="alignRight tableTop"><strong>36,431</strong></td>
									</tr>
									<tr>
										<th class="thPadding" scope="row">사용 마일리지</th>
										<td class="alignRight">0</td>
										<td class="alignRight">0</td>
										<td class="alignRight"><strong>0</strong></td>
									</tr>
									<tr>
										<th class="thPadding" scope="row">소멸 마일리지</th>
										<td class="alignRight">0</td>
										<td class="alignRight">0</td>
										<td class="alignRight"><strong>0</strong></td>
									</tr>
									<tr>
										<th class="result last thPadding" scope="row">잔여 마일리지</th>
										<td class="alignRight result last">0</td>
										<td class="alignRight result last">36,431</td>
										<td class="alignRight result last">36,431</td>
									</tr>
								</tbody>
							</table>
							<div class="myBoxInnerType0" style="display: none;">
								<div class="boxInner">
									<dl>
										<dt><strong>소멸 예정 마일리지</strong>(<span class="fontPerple"> <strong>2016</strong> / <strong>8</strong> / <strong>10</strong></span> 에 소멸 예정)</dt>
										<dd class="mileageNum">1,000 miles</dd>
									</dl> 
								</div>
							</div>
							
						</div>
						<ul class="alertList01">
							<li>2008년 10월 1일부터 적립하는 마일리지는 유효기간이 적용됩니다. [ <span class="btnKType08"><a href="/CW/ko/common/pageContent.do?pageId=PC_0304">마일리지 유효기간 안내</a></span> ]</li>
							<li>회원 등급별 마일리지 유효기간은 매직마일즈, 실버, 골드 회원은 10년, 다이아몬드, 다이아몬드플러스, 플래티늄 회원은 12년 입니다.</li>
						</ul>
			  <h4 class="h4_type04 line2">마일리지 조회</h4>
						<div class="tabContainer">
						  <hr>
							<div class="boxInner" id="mileDetailSearchLayer" style="display: block;">
							  <dl>
									<dt>구분</dt>
									<dd>
										<ul class="checkUl">
											<li><input name="searchKind" id="mileageType0" onclick="javascript:changeAllCheck(document.form.searchKind);checkSearchKind();" type="checkbox" value="all"> <label for="mileageType0">전체 마일리지</label></li>
											<li><input name="searchKind" id="mileageType1" onclick="javascript:checkSearchKind();" type="checkbox" value="up"> <label for="mileageType1">적립한 마일리지</label></li>
											<li><input name="searchKind" id="mileageType2" onclick="javascript:checkSearchKind();" type="checkbox" value="use"> <label for="mileageType2">사용한 마일리지</label></li>
											<li class="last"><input name="searchKind" id="mileageType3" onclick="javascript:checkSearchKind();" type="checkbox" value="expire"> <label for="mileageType3">소멸한 마일리지</label></li>
										</ul>

									</dd>
							  </dl>
								<dl>
									<dt>조회기간</dt>
								  <dd>
									<ul class="termUi">
										  <input type="submit" name="button" id="button" value="1개월">
                                          <input type="submit" name="button" id="button" value="3개월">
                                          <input type="submit" name="button" id="button" value="6개월">
                                          <input type="submit" name="button" id="button" value="1년">

											
											<li class="baseArea"><span class="leftPan">* 1년이상 경과한 내역은 날짜로 지정하여 조회하세요.</span></li>
									    <p>&nbsp;</p>
									</ul>
										<!-- CR외 작업 -->
										<!-- //CR외 작업 -->
                                        <input name="fromDate" id="fromDate" style="display: none;" type="text" value="">
                                        <input name="toDate" id="toDate" style="display: none;" type="text" value="">
										<ul class="termUi last">
											<p> <input type="text" id="datepicker"> 부터~ &nbsp;
<input type="text" id="datepicker01"> 까지</p>
										</ul>
								  </dd>
								</dl>
								<dl>
									
									
								</dl>
								<div class="btn_personneList noPadding top10" id="detailSearch"><span class="Sbtn_TType04_3"><a onclick="javascript:detailSearch();" href="#none">조회하기</a></span></div>
						  </div>
			  </div>						<div class="tabContainer" id="dvResult"></div>



</form></body>
</html>

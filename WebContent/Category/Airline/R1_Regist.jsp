<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
 <link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
  
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>

  <link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">

  <script src="//code.jquery.com/jquery-1.10.2.js"></script>

  <script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>

  <link rel="stylesheet" href="/resources/demos/style.css">


  <script>
  $(function() {
    $( "#radio" ).buttonset();
  });
  
  function _cal_arrival_reset(tripType) {
		if (tripType == "OW") {
//			$jQ('#'+__strEDateField).val("");
//			$jQ('#__strEDate').val("");
//			$jQ('#'+__strEDateVArea).text("");
			$jQ('[id^="E_"]').each(function() {
				if ($jQ(this).hasClass('click')) {
					$jQ(this).removeClass('click');
					$jQ(this).addClass('hover');
				}
			});
			$jQ('#CalendarBox').addClass('oneWay');
			$jQ('#eCalArea').hide();
			$jQ('.boxType01.reType02 .getIn').hide();

			_tripType = tripType;

		} else {
			$jQ('.boxType01.reType02 .getIn').show();
			$jQ('#eCalArea').show();
			$jQ('#CalendarBox').removeClass('oneWay');

			_tripType = tripType;
		}
	}

  
$(function(){
	$('#radio2').click(function(){
		$('#getIn01').hide();
	});
});
$(function(){
	$('#radio1').click(function(){
		$('#getIn01').show();
	});
});
  </script>
</head>
<style>
#wrapper{
	 
		height: 700px;
		width:1250px;
		clear:both;
		
	}
#main_content{
	position:absolute;
	top:30px;
	left: 275px;
	width: 950px;
	
		
}
header, section, article, nav, aside {
	display: block;
}
#containerBox #container #containerBody {
	margin: 0 0 0 195px;
	padding: 27px 0 100px 50px;
	min-height: 780px;
	_height: 780px;
}
.reservationBox#containerBox #container #containerBody {
	margin: 0 191px 0 0;
	padding: 29px 40px 50px 0;
	min-height: 650px;
	_height: 650px;
	*position:relative: ;
	*z-index:10: ;
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
ul, ol {
	list-style: none;
}
.reservationBox .rv_stepBox {
	width: 956px;
	margin: 0 auto 10px auto;
	*zoom:1: ;
}
.reservationBox .rv_stepBox::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .helpOp {
	text-align: right;
	margin: 0 -231px 19px 0;
}
.reservationBox .itineraryBoxPs {
	position: relative;
}
.reservationBox .itineraryBox {
	margin: 0 0 34px 0;
	position: relative;
	z-index: 10;
}
.reservationBox .foreignNotice {
	background: url("/images/bg/bg_noticeTop2.gif") no-repeat 0 0;
	padding: 17px 0 0 0;
	margin: -27px 0 22px 0;
}
.btnBoxType01 {
	*zoom:1: ;
}
.btnBoxType01::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .swLayerBox {
	display: none;
}
.reservationBox#containerBox #container #expandBox {
	position: absolute;
	top: 32px;
	right: -231px;
	width: 191px;
	z-index: 9;
}
.reservationBox#containerBox #container #expandBox .expandBoxTop {
	background: url("/images/bg/bg_expandBoxTop.png") no-repeat 0 0;
	padding: 15px 0 0 0;
	margin: 0 0 10px 0;
}
.reservationBox#containerBox #container #expandBox .expandInner {
	background: #fff url("/images/bg/bg_expandBoxBottom.png") no-repeat 0 bottom;
	padding: 0 20px 0 0;
}
a {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
img, fieldset, iframe {
	border: 0 none;
	vertical-align: top;
}
.reservationBox .Sqna {
	padding: 0 0 11px 14px;
}
.reservationBox .Sqna dt {
	margin: 0 0 15px 0;
}
.reservationBox .Sqna dd {
	background: url("/images/bl/bl_q.gif") no-repeat 0 2px;
	padding: 0 0 0 26px;
	margin: 0 0 8px 0;
	line-height: 18px;
}
.reservationBox .Sqna dd.btnEtc {
	background: none;
	padding: 17px 0 0 0;
}
.btnType02 {
	background: url("/images/bg/bg_btnLeft2.jpg") no-repeat 0 0;
	display: inline-block;
}
.btnType02 a {
	background: url("/images/bg/bg_btnRight2.jpg") no-repeat right 0;
	padding: 0 29px 0 13px;
	display: block;
	height: 22px;
	line-height: 22px;
	line-height: 22px;
	color: #4c4c4c;
	font-size: 11px;
	font-family: "돋움";
}
.reservationBox .swLayerBox .abroadBox_coupon {
	position: absolute;
	top: -92px;
	left: 50%;
	margin: 0 0 0 -230px;
	background: url("/images/bg/bg_abroadTop20.gif") no-repeat 0 0;
	width: 560px;
	padding: 10px 0 0 0;
	z-index: 9000;
}
.layer-slb {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	text-indent: -5000px;
	background: #fff;
	opacity: 0.8;
	filter: alpha(opacity=80);
	z-index: 9002;
}
.layer-slb {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	text-indent: -5000px;
	background: #fff;
	opacity: 0.8;
	filter: alpha(opacity=80);
	z-index: 9002;
}
.layer-slb {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	text-indent: -5000px;
	background: #fff;
	opacity: 0.8;
	filter: alpha(opacity=80);
	z-index: 9002;
}
.reservationBox .swLayerBox .layer-slb {
	position: fixed;
	left: 0px;
	top: 0px;
	width: 100%;
	height: 100%;
	text-indent: -5000px;
	background: #fff;
	opacity: 0.8;
	filter: alpha(opacity=80);
	z-index: 8000;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner {
	background: url("/images/bg/bg_abroadBottom20.gif") no-repeat 0 bottom;
	padding: 0 2px 30px 2px;
}
.reservationBox .swLayerBox .abroadBox_coupon .btn_close3 {
	position: absolute;
	top: 15px;
	right: 11px;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .aTitle {
	padding: 0 0 0 13px;
	margin: 0 5px 25px 5px;
	background: #e8e8f7;
	line-height: 19px;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt {
	color: #333;
	padding: 20px 19px 0 19px;
	line-height: 15px;
	border-top: 1px solid #D2D2F0;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .text-type-2 {
	color: #000;
	line-height: 18px;
	font-weight: bold;
	font-size: 13px;
	margin: 0 0 6px 0;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .text-type-1 {
	color: #333;
	line-height: 22px;
	margin: 0 0 6px 0;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .text-type-3 {
	color: #581cb4;
	font-size: 11px;
	font-family: "돋움";
	line-height: 22px;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .text-type-4 {
	color: #333;
	font-size: 11px;
	font-family: "돋움";
	line-height: 20px;
	padding: 0 0 0 10px;
	margin: 0 0 20px 0;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .text-type-5 {
	color: #333;
	font-size: 11px;
	font-family: "돋움";
	line-height: 20px;
	text-indent: -15px;
	margin: 0 0 0 15px;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .btnbox {
	padding: 29px 0 0 0;
}
.btnType13 {
	background: url("/images/bg/bg_btnLeft13.jpg") no-repeat 0 0;
	display: inline-block;
}
.btnType12 {
	background: url("/images/bg/bg_btnLeft12.jpg") no-repeat 0 0 !important;
	display: inline-block;
}
.btnType12 a {
	background: url("/images/bg/bg_btnRight12.jpg") no-repeat right 0 !important;
	padding: 0 35px 0 8px !important;
	display: block;
	height: 25px !important;
	line-height: 25px !important;
	color: #4c4c4c !important;
	font-size: 12px !important;
	font-weight: normal !important;
}
.btnType13 a {
	background: url("/images/bg/bg_btnRight13.jpg") no-repeat right 0;
	padding: 0 35px 0 8px;
	display: block;
	height: 25px;
	line-height: 25px;
	color: #4c4c4c;
	font-size: 11px;
	font-family: "돋움";
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .abroadCt .color-type-1 {
	color: #581cb4;
}
.reservationBox .swLayerBox .abroadBox_coupon .abroadInner .aTitle p strong {
	color: #201cb4;
	font-size: 13px;
}
.btnBoxType01 li {
	width: 48%;
	float: left;
}
.btnBoxType01 li.right {
	float: right;
	text-align: right;
}
.Bbtn_TType01_1 {
	background: url("/images/bg/Bbtn_TTypeL01_1.gif") no-repeat 0 0;
	display: inline-block;
}
.Bbtn_TType01_1 a {
	background: url("/images/bg/Bbtn_TTypeR01_1.gif") no-repeat right 0;
	padding: 0 41px 0 19px;
	display: block;
	height: 35px;
	line-height: 35px;
	color: #fff;
	font-size: 13px;
	font-weight: bold;
}
.Sbtn_TType06_1 {
	background: url("/images/bg/Sbtn_TTypeL06_1.gif") no-repeat 0 0;
	display: inline-block;
}
.Sbtn_TType06_1 a {
	background: url("/images/bg/Sbtn_TTypeR06_1.gif") no-repeat right 0;
	padding: 0 11px 0 27px;
	display: block;
	height: 25px;
	line-height: 25px;
	color: #666;
	font-weight: bold;
}
.reservationBox .foreignNotice .foreignNoticeInner {
	background: url("/images/bg/bg_noticeBottom2.gif") no-repeat 0 bottom;
	padding: 0 45px 20px 45px;
}
.reservationBox .foreignNotice .foreignNoticeInner dt {
	color: #201cb4;
	background: url("/images/bg/bg_notice.gif") no-repeat 0 0;
	margin: 0 0 0 -25px;
	padding: 0 0 10px 24px;
	line-height: 14px;
}
.reservationBox .foreignNotice .foreignNoticeInner dd {
	color: #333;
	line-height: 18px;
}
.reservationBox .foreignNotice .foreignNoticeInner dd .nPoint {
	color: #201cb4;
	text-decoration: underline;
}
.reservationBox .itineraryBox .h4_type01 {
	margin: 0 0 12px 0;
}
.notice_container {
	width: auto;
	margin: 0 auto;
	background: url("/images/bg/bg_noticeTop.gif") no-repeat 0 0;
	padding: 9px 0 0 0;
}
.reservationBox .itineraryBox .tableStyle01 {
	border-top: 1px solid #5c5f66;
	border-bottom: 1px solid #adafb2;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice {
	background: url('/images/bg/bg_selectCk.gif') repeat-x 0 0;
	height: 36px;
	padding: 11px 0 0 10px;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .RCul-type-1 {
	padding: 11px 0 12px 41px;
}
.reservationBox .itineraryBox .boxType01 {
	border-top: 1px solid #5c5f66;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 {
	border-top: 1px solid #d9d9d9;
	padding: 17px 0 2px 0;
	*zoom:1: ;
	position: relative;
	margin: 0 0 13px 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .reType00.boxType01 {
	position: relative;
	z-index: 100;
}
.reservationBox .itineraryBox .tableStyle01 .reType01.boxType01 {
	position: relative;
	z-index: 50;
}
.reservationBox .itineraryBox .tableStyle01 .reType02.boxType01 {
	position: relative;
	z-index: 30;
}
.reservationBox .manyBox {
	*zoom:1: ;
	border-top: 1px solid #d9d9d9;
}
.reservationBox .manyBox::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .reType03.boxType01 {
	position: relative;
	z-index: 22;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList {
	text-align: right;
	padding: 0 0 20px 0;
	margin: -10px 0 0 0;
	position: relative;
	z-index: 20;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind {
	*zoom:1: ;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .line.itineraryKind {
	border-top: 1px solid #d9d9d9;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind dt, .reservationBox .itineraryBox .tableStyle01 .itineraryKind dd {
	float: left;
	line-height: 22px;
	padding: 9px 0;
	z-index: 10;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind dt {
	width: 80px;
	font-size: 13px;
	font-weight: bold;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind dd {
	background: url("/images/bg/bg_ddType01.gif") no-repeat 0 0;
	padding-left: 19px;
	width: 620px;
	position: relative;
}
input {
	border-radius: 0;
}
.reservationBox .itineraryBox .tableStyle01 .itineraryKind dd label {
	margin: 0 15px 0 0;
}
.btnType06 {
	background: url("/images/bg/bg_btnLeft6.jpg") no-repeat 0 0;
	display: inline-block;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox {
	position: absolute;
	top: -4px;
	left: 281px;
	background: url("/images/bg/bg_abroadTop5.gif") no-repeat 0 0;
	width: 460px;
	padding: 5px 0 0 0;
	z-index: 100;
	text-align: left;
	display: none;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 {
	position: absolute;
	top: -4px;
	left: 580px;
	background: url("/images/bg/bg_abroadTop4.gif") no-repeat 0 0;
	width: 260px;
	padding: 5px 0 0 0;
	z-index: 100;
	text-align: left;
	display: none;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 .abroadInner {
	background: url("/images/bg/bg_abroadBottom4.gif") no-repeat 0 bottom;
	padding: 0 1px 17px 1px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 .btn_close {
	position: absolute;
	top: 10px;
	right: 11px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 .abroadInner .aTitle {
	padding: 0 0 0 13px;
	margin: 0 5px 18px 5px;
	background: #e8e8f7;
	line-height: 19px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 .abroadInner .abroadCt {
	color: #201cb4;
	font-size: 11px;
	padding: 7px 20px 0 20px;
	line-height: 15px;
	border-top: 1px solid #D2D2F0;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox2 .abroadInner .aTitle p strong {
	color: #201cb4;
	font-size: 11px;
	font-family: "돋움";
}
.btnType06 a {
	background: url("/images/bg/bg_btnRight6.jpg") no-repeat right 0;
	padding: 0 35px 0 8px;
	display: block;
	height: 22px;
	line-height: 22px;
	color: #4c4c4c;
	font-size: 11px;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner {
	background: url("/images/bg/bg_abroadBottom5.gif") no-repeat 0 bottom;
	padding: 0 1px 17px 1px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .btn_close {
	position: absolute;
	top: 10px;
	right: 11px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .aTitle {
	padding: 0 0 0 13px;
	margin: 0 5px 18px 5px;
	background: #e8e8f7;
	line-height: 19px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt {
	color: #333;
	font-size: 11px;
	padding: 7px 20px 0 20px;
	line-height: 15px;
	border-top: 1px solid #D2D2F0;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox {
	*zoom:1: ;
	margin: 22px 0 8px 0;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthResult {
	font-size: 12px;
	color: #333;
	margin: 0 0 37px 0;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthNotice {
	color: #201cb4;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthNoticeUl {
	border: 1px solid #ccc;
	height: 90px;
	margin: 5px 0 0;
	overflow: auto;
	padding: 10px 0 0 10px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthNoticeUl li {
	color: #201cb4;
	text-indent: -10px;
	margin: 0 0 0 10px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthResult strong {
	color: #201cb4;
	text-decoration: underline;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox li.widthTp {
	width: 90px;
	float: left;
	margin: 0 5px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox li.mList {
	width: 70px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox li.btn_compute {
	margin: 0 0 0 5px;
}
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .abroadCt .birthdayBox .selectBox2 {
	position: relative;
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
.reservationBox .itineraryBox .tableStyle01 .btn_personneList .abroadBox .abroadInner .aTitle p strong {
	color: #201cb4;
	font-size: 11px;
	font-family: "돋움";
}
.reservationBox .itineraryBox .boxType01 .personnelBox {
	float: left;
	width: 174px;
	margin: 0 10px 0 0;
}
.reservationBox .itineraryBox .boxType01 .personnelBox2 {
	float: left;
	width: 164px;
	margin: 0;
	padding: 26px 0 0 9px;
	line-height: 15px;
}
.reservationBox .itineraryBox .boxType01 .personnelBox2 .pText {
	color: #4c4c4c;
	font-size: 11px;
	text-indent: -9px;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .tTitle {
	height: 22px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .selectBox2 {
	position: relative;
	z-index: 1;
}
.reservationBox .itineraryBox .boxType01 .cnT {
	font-size: 11px;
	color: #666;
	line-height: 28px;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .selectBox2 * {
	vertical-align: top;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .tripBox2 {
	position: relative;
	display: inline;
	z-index: 2;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .z2.tripBox2 {
	z-index: 4;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .tripBox2 .cdBox {
	position: absolute;
	left: 21px;
	background: url("/images/bg/bg_hoverBoxTop3.gif") no-repeat right 0;
	padding: 7px 0 0 0;
	width: 204px;
	z-index: 100;
	top: -100000px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .tripBox2 .cdBox .cdInner {
	background: url("/images/bg/bg_hoverBoxBody3.gif") no-repeat 0 0;
	color: #333;
	font-size: 11px;
	line-height: 20px;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .tripBox2 .cdBox .cdInner .cdBody {
	background: url("/images/bg/bg_hoverBoxBottom3.gif") no-repeat 0 bottom;
	padding: 0 0 9px 20px;
	line-height: 17px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .z1.tripBox2 {
	z-index: 5;
}
.reservationBox .manyBox .addBox {
	padding: 10px 0 51px 0;
}
.reservationBox .manyBox .fullIntro {
	font-size: 11px;
	color: #4e4e4e;
	text-indent: -9px;
	margin: 0 0 0 9px;
	padding: 11px 0 45px 0;
	line-height: 19px;
	font-family: "돋움";
}
.reservationBox .manyBox .fullIntro .point {
	color: #6014d0;
}
.reservationBox .manyBox .fullIntro .btnLink {
	font-weight: bold;
	text-decoration: underline;
	background: url("/images/bl/bl_sm.gif") no-repeat right 2px;
	padding: 0 12px 0 0;
}
.Sbtn_TType04_2 {
	background: url("/images/bg/Sbtn_TTypeL04_2.gif") no-repeat 0 0;
	display: inline-block;
}
.reservationBox .manyBox .addBox span.intext {
	color: #4c4c4c;
	font-size: 11px;
	padding: 0 0 0 5px;
	font-family: "돋움";
}
.Sbtn_TType04_2 a {
	background: url("/images/bg/Sbtn_TTypeR04_2.gif") no-repeat right 0;
	padding: 0 15px 0 35px;
	display: block;
	height: 25px;
	line-height: 25px;
	font-weight: bold;
}
.reservationBox .manyBox .left, .reservationBox .manyBox .right {
	float: left;
}
.reservationBox .manyBox .left {
	width: 40px;
	padding: 15px 0 0 40px;
}
.reservationBox .manyBox .right {
	width: 625px;
	background: url("/images/bg/bg_ddType01.gif") no-repeat 0 0;
	padding: 14px 0 13px 20px;
	*zoom:1: ;
}
.reservationBox .manyBox .right::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .manyBox .right .gapBox {
	width: 230px;
	float: left;
}
.reservationBox .manyBox .right .start.gapBox {
	width: 165px;
}
.reservationBox .manyBox .right .gapBox strong.title {
	display: block;
	font-size: 13px;
}
.reservationBox .manyBox .right .gapBox .selectBox {
	position: relative;
	margin: 6px 0 0 0;
	display: inline-block;
	*display:inline: ;
	*zoom:1: ;
}
.autocompleteBox {
	border: 1px solid #999999;
	margin-top: 0px;
	margin-left: -4px;
	color: #201cb4;
	padding-left: 10px;
	font-family: 12px gulim,helvetica,sans-serif;
	height: 28px;
	line-height: 28px;
	vertical-align: top;
}
.ui-helper-hidden-accessible {
	position: absolute !important;
	clip: rect(1px, 1px, 1px, 1px);
	clip: rect(1px, 1px, 1px, 1px);
}
.ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0px, 0px, 0px, 0px);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px;
}
.ui-helper-hidden-accessible {
	border: 0;
	clip: rect(0px, 0px, 0px, 0px);
	height: 1px;
	margin: -1px;
	overflow: hidden;
	padding: 0;
	position: absolute;
	width: 1px;
}
.reservationBox .manyBox .right .gapBox .selectBox * {
	vertical-align: middle;
}
.reservationBox .manyBox .right .gapBox .selectBox .input-type-1 {
	width: 132px;
	margin-left: -5px;
	*position:relative: ;
	*left:-5px: ;
	*top:-1px: ;
	height: 28px;
	padding: 0 0 0 3px;
	line-height: 28px;
	border: 1px solid #999;
	color: #808080;
}
.reservationBox .manyBox .right .gapBox .CalendarBox {
	position: absolute;
	top: 35px;
	left: 0px;
	border-bottom: 1px solid #312cce;
	display: none;
	width: 670px;
}
.reservationBox .manyBox .right .gapBox .oneWay.CalendarBox {
	width: 329px;
	border-right: 1px solid #312cce;
}
.reservationBox .manyBox .right .gapBox .CalendarBox .CalendarInner {
	width: 296px;
	padding: 5px 0 9px 33px;
	float: left;
	*zoom:1: ;
}
.reservationBox .manyBox .right .gapBox .CalendarBox .CalendarInner::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .manyBox .right .gapBox .CalendarBox .bg_start.CalendarInner {
	background: url("/images/bg/bg_startCalendar.gif") no-repeat 0 0;
}
.reservationBox .manyBox .right .gapBox .CalendarBox .btn_close2 {
	position: absolute;
	top: 8px;
	right: 10px;
}
.reservationBox .manyBox .right .start.gapBox .selectBox .btn_calendar img {
	vertical-align: top;
}
.reservationBox .manyBox .right .gapBox .selectBox .btnSend {
	*margin:0: ;
}
.reservationBox .manyBox .left span {
	background: url("/images/bg/bg_cnt5.gif") no-repeat 0 0;
	display: block;
	width: 25px;
	height: 25px;
	text-align: center;
	font-weight: bold;
	line-height: 25px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne {
	position: absolute;
	top: 7px;
	left: 31px;
	background: url("/images/bg/bg_abroadTop_restore.gif") no-repeat 0 0;
	width: 472px;
	padding: 5px 0 0 0;
	z-index: 100;
	display: none;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner {
	background: url("/images/bg/bg_abroadBottom_restore.gif") no-repeat 0 bottom;
	padding: 0 1px 24px 1px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .btn_close {
	position: absolute;
	top: 7px;
	right: 11px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .aTitle {
	padding: 0 0 0 13px;
	margin: 0 5px 18px 5px;
	background: #e8e8f7;
	line-height: 19px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt {
	color: #333;
	font-size: 11px;
	padding: 8px 19px 0 19px;
	border-top: 1px solid #d2d2f0;
	font-family: "�뗭�";
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt .aText {
	line-height: 15px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language {
	*zoom:1: ;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language {
	padding: 30px 0 0 0;
	position: relative;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language li.ll {
	width: 180px;
	float: left;
	margin: 0 5px 0 0;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language li.btn_go.ll {
	position: absolute;
	bottom: 0px;
	right: 0px;
	width: 55px;
	line-height: 0;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .abroadCt ul.language li.ll p {
	color: #333;
	margin: 0 0 10px 0;
	line-height: 21px;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .selectBox {
	position: relative;
	z-index: 91;
	width: 100%;
}
.reservationBox .manyBox .right .gapBox .abroadBox-type-ne .abroadInner .aTitle p strong {
	color: #201cb4;
	font-size: 11px;
	font-family: "�뗭�";
}
.btnType10 a {
	color: #5e14cc;
	font-size: 11px;
	text-decoration: underline;
	background: url('/images/bl/bl_blue2.gif') no-repeat right 2px;
	padding: 0 14px 0 0;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff {
	float: left;
	width: 357px;
	margin: 0 10px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn {
	float: left;
	width: 358px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .text01 {
	width: 250px;
	margin-left: -5px;
	*position:relative: ;
	*left:0: ;
	*top:-1px: ;
	height: 28px;
	padding: 0 0 0 3px;
	line-height: 28px;
	border: 1px solid #999;
	color: #808080;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn * {
	vertical-align: middle;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .tTitle {
	position: relative;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox {
	position: absolute;
	top: 35px;
	left: 0px;
	border-bottom: 1px solid #312cce;
	display: none;
	width: 367px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .CalendarBox {
	left: 367px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox .CalendarInner {
	width: 335px;
	padding: 5px 0 9px 33px;
	float: left;
	*zoom:1: ;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox .CalendarInner::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox .bg_arrival.CalendarInner {
	background: url("/images/bg/bg_arrivalCalendar.gif") no-repeat 0 0;
	width: 335px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox .btn_close2 {
	position: absolute;
	top: 8px;
	right: 10px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .btn_calendar {
	vertical-align: top;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .tTitle strong {
	font-size: 13px;
	margin: 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .CalendarBox .bg_start.CalendarInner {
	background: url("/images/bg/bg_startCalendar.gif") no-repeat 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .tTitle * {
	vertical-align: middle;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .tTitle strong {
	font-size: 13px;
	margin: 0 0 0 0;
	padding: 0 8px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .checkedMode.boxType01 .Modetrip {
	background: url("/images/bg/bg_arrow2.gif") no-repeat 0 2px;
	font-size: 11px;
	color: #5e14cc;
	line-height: 18px;
	padding: 0 0 0 21px;
	margin: 0 0 16px 0;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox {
	position: relative;
	z-index: 99;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr {
	position: absolute;
	top: 0px;
	left: 0px;
	background: #fff;
	width: 100%;
	display: none;
	width: 320px;
	z-index: 100;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr .selectArIn ul {
	padding: 15px 0 10px 0;
	overflow: auto;
	height: 117px;
	border: 1px solid #312CCE;
	margin: 5px 0 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr .selectArIn ul li {
	background: url("/images/bl/bl_select.gif") no-repeat 6px 8px;
	padding: 0 6px 0 14px;
	line-height: 19px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr .selectArIn ul li a {
	color: #333;
	display: block;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr .selectArIn .inputBox .inputInner {
	border: 2px solid #201cb4;
	padding: 0 26px 0 8px;
	background: url("/images/bg/bg_arrow.gif") no-repeat right 0;
	line-height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .getIn .selectBox .selectAr .selectArIn .inputBox input {
	width: 100%;
	color: #201cb4;
	border: 0;
	line-height: 26px;
	height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .checkedMode.boxType01 .takeOff .tTitle strong, .reservationBox .itineraryBox .tableStyle01 .checkedMode.boxType01 .getIn .tTitle strong {
	color: #5e14cc;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox {
	position: relative;
	z-index: 91;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	display: none;
	z-index: 100;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr .selectArIn ul {
	padding: 15px 0 10px 0;
	overflow: auto;
	height: 117px;
	background: #fff;
	border: 1px solid #312CCE;
	margin: 5px 0 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr .selectArIn ul li {
	background: url("/images/bl/bl_select.gif") no-repeat 6px 8px;
	padding: 0 6px 0 14px;
	line-height: 19px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr .selectArIn ul li a {
	color: #333;
	display: block;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr .selectArIn .inputBox .inputInner {
	border: 2px solid #201cb4;
	padding: 0 26px 0 8px;
	background: #fff url("/images/bg/bg_arrow.gif") no-repeat right 0;
	line-height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .selectBox .selectAr .selectArIn .inputBox input {
	width: 100%;
	color: #201cb4;
	border: 0;
	line-height: 26px;
	height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox {
	position: absolute;
	top: 7px;
	left: 31px;
	background: url("/images/bg/bg_abroadTop.gif") no-repeat 0 0;
	width: 472px;
	padding: 5px 0 0 0;
	z-index: 100;
	display: none;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner {
	background: url("/images/bg/bg_abroadBottom.gif") no-repeat 0 bottom;
	padding: 0 1px 24px 1px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .btn_close {
	position: absolute;
	top: 7px;
	right: 11px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .tTitle * {
	vertical-align: middle;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt {
	color: #333;
	font-size: 11px;
	padding: 8px 19px 0 19px;
	border-top: 1px solid #d2d2f0;
	font-family: "돋움";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt .aText {
	line-height: 15px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language {
	*zoom:1: ;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language {
	padding: 30px 0 0 0;
	position: relative;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language li.ll {
	width: 180px;
	float: left;
	margin: 0 5px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language li.btn_go.ll {
	position: absolute;
	bottom: 0px;
	right: 0px;
	width: 55px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .takeOff .abroadBox .abroadInner .abroadCt ul.language li.ll p {
	color: #333;
	margin: 0 0 10px 0;
	line-height: 21px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff {
	float: left;
	width: 356px;
	margin: 0 10px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .wD320.getIn {
	width: 320px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .selectBox {
	position: relative;
	z-index: 91;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .selectBox .selectAr {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	display: none;
	z-index: 100;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .selectBox .selectAr .selectArIn ul {
	padding: 15px 0 10px 0;
	overflow: auto;
	height: 117px;
	background: #fff;
	border: 1px solid #312CCE;
	margin: 5px 0 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .selectBox .selectAr .selectArIn .inputBox .inputInner {
	border: 2px solid #201cb4;
	padding: 0 26px 0 8px;
	background: #fff url("/images/bg/bg_arrow.gif") no-repeat right 0;
	line-height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .selectBox .selectAr .selectArIn .inputBox input {
	width: 100%;
	color: #201cb4;
	border: 0;
	line-height: 26px;
	height: 26px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .tTitle strong {
	font-size: 13px;
	margin: 0 0 0 0;
	padding: 0 8px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox {
	position: absolute;
	top: 7px;
	left: 31px;
	background: url("/images/bg/bg_abroadTop_restore.gif") no-repeat 0 0;
	width: 472px;
	padding: 5px 0 0 0;
	z-index: 100;
	display: none;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner {
	background: url("/images/bg/bg_abroadBottom_restore.gif") no-repeat 0 bottom;
	padding: 0 1px 24px 1px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .btn_close {
	position: absolute;
	top: 7px;
	right: 11px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .aTitle {
	padding: 0 0 0 13px;
	margin: 0 5px 18px 5px;
	background: #e8e8f7;
	line-height: 19px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt {
	color: #333;
	font-size: 11px;
	padding: 8px 19px 0 19px;
	border-top: 1px solid #d2d2f0;
	font-family: "�뗭�";
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt .aText {
	line-height: 15px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language {
	*zoom:1: ;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language {
	padding: 30px 0 0 0;
	position: relative;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language::after {
	content: "";
	display: block;
	clear: both;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language li.ll {
	width: 180px;
	float: left;
	margin: 0 5px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language li.btn_go.ll {
	position: absolute;
	bottom: 0px;
	right: 0px;
	width: 55px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .abroadCt ul.language li.ll p {
	color: #333;
	margin: 0 0 10px 0;
	line-height: 21px;
}
.reservationBox .itineraryBox .tableStyle01 .boxType01 .restore.takeOff .abroadBox .abroadInner .aTitle p strong {
	color: #201cb4;
	font-size: 11px;
	font-family: "�뗭�";
}
.reservationBox .RCul-type-1 li {
	background: url('/images/bl/blK_perple.gif') no-repeat 0 8px;
	color: #333;
	padding: 0 0 0 9px;
	line-height: 21px;
	color: #333;
	float: none;
	margin: 0 0 -2px 0;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice li {
	float: left;
	margin: 0 10px 0 0;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice li span {
	display: inline-block;
	background: url('/images/bg/bg_typeL_off.gif') no-repeat left 0;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice li span a {
	background: url('/images/bg/bg_typeR_off.gif') no-repeat right 0;
	display: block;
	height: 26px;
	line-height: 26px;
	padding: 0 29px 0 26px;
	color: #333;
	font-size: 13px;
	font-weight: bold;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice li.on.btn-type-1 span {
	display: inline-block;
	background: url('/images/bg/bg_typeL_1_on.gif') no-repeat left 0;
}
.reservationBox .itineraryBox .tableStyle01 .list-choice li.on.btn-type-1 span a {
	background: url('/images/bg/bg_typeR_1_on.gif') no-repeat right 0;
	display: block;
	height: 26px;
	line-height: 26px;
	padding: 0 20px 0 36px;
	color: #fff;
	font-size: 13px;
	font-weight: bold;
}
.notice_container .notice_Inner {
	margin: 0 0 100px 0;
	width: 725px;
	padding: 0 0 14px 0;
	background: url("/images/bg/bg_noticeBottom.gif") no-repeat 0 bottom;
}
.notice_container .innerType01.notice_Inner {
	margin: 0;
	padding: 0 0 6px 0;
}
.notice_container .notice_Inner .notice li {
	line-height: 24px;
	background: url("/images/bl/bl_notice.gif") no-repeat 14px 3px;
	padding: 0 0 0 39px;
}
.notice_container .innerType01.notice_Inner .notice li {
	padding: 0 0 4px 39px;
	line-height: 21px;
}
.reservationBox .itineraryBox .h4_type01 * {
	vertical-align: middle;
}
.reservationBox .itineraryBox .h4_type01 h4 {
	background: url("/images/bl/bl_hType01.gif") no-repeat 0 0;
	height: 17px;
	overflow: hidden;
	font-weight: bold;
	color: #5e14cc;
	font-size: 14px;
	padding: 0 9px 3px 26px;
	display: inline-block;
	*display:inline: ;
	*zoom:1: ;
	line-height: 20px;
}
.reservationBox .helpOp .btnType06 a {
	padding-right: 41px;
}
.reservationBox .rv_stepBox li {
	float: left;
	color: #808080;
	height: 30px;
	line-height: 12px;
	margin-left: -2px;
	padding: 0 0 0 9px;
}
.reservationBox .rv_stepBox li.step01_on {
	color: #5d6067;
	font-weight: bold;
	background: url("/images/bg/bg_rvStep01_on.gif") no-repeat 0 0;
	width: 146px;
	padding: 0 0 0 34px;
	margin-left: -1px;
}
.reservationBox .rv_stepBox li.step02_off {
	color: #5d6067;
	font-weight: normal;
	background: url("/images/bg/bg_rvStep02_off.gif") no-repeat 0 0;
	width: 188px;
}
.reservationBox .rv_stepBox li.step03_off {
	color: #5d6067;
	font-weight: normal;
	background: url("/images/bg/bg_rvStep03_off.gif") no-repeat 0 0;
	width: 188px;
}
.reservationBox .rv_stepBox li.step04_off {
	color: #5d6067;
	font-weight: normal;
	background: url("/images/bg/bg_rvStep04_off.gif") no-repeat 0 0;
	width: 184px;
}
.reservationBox .rv_stepBox li.step05_off {
	color: #5d6067;
	font-weight: normal;
	background: url("/images/bg/bg_rvStep05_off.gif") no-repeat 0 0;
	width: 189px;
	margin-left: -3px;
}
caption, legend, #accessibility, .hidden {
	font-size: 0px;
	line-height: 0;
	text-indent: -5000px;
}
.hidden {
	clear: both;
	height: 0px;
	line-height: 0;
	visibility: hidden;
	width: 0px;
	position: absolute;
}
</style>
</head>
<body>
<%@include file="../Common/top.jsp" %>
 <div id="wrapper">
<jsp:include page="sidemenu.jsp"></jsp:include>

<div id="main_content">
<form name="travelRegistForm" id="travelRegistForm" onsubmit="return false;" method="post"><div id="wrap_container"><section id="main_container"><div class="reservationBox" id="containerBox"><div id="container"><div id="skipCt"><section id="containerBody">
						<h3 class="h3_type01">항공권 예매</h3>
<p ><strong>1. 여정선택</strong></p>
						<p class="h4_type01">&nbsp;</p>
			  <div class="itineraryBoxPs">
							<!-- 여정을 선택하세요. -->
							<div class="itineraryBox">
								<div class="h4_type01">
									<h4>여정을 선택하세요.</h4>

								</div>
								<div class="notice_container" style="margin: 0px 0px 5px;">
									<div class="notice_Inner innerType01">인터넷을 통하여 항공권 조회일로부터 최대 349일까지, 오프라인을 통해서는 최대 354일까지 예매가 가능합니다.

									</div>
								</div>
								<div class="tableStyle01">
									<ul class="list-choice">
									  <div id="radio">

    <input type="radio" id="radio1" name="radio"><label for="radio1">왕 복</label>

    <input type="radio" id="radio2" name="radio" checked="checked"><label for="radio2">편 도</label>



  </div>
									</ul>

									<!-- //20130726 추가 -->
									<div class="boxType01 reType00" id="tripTypeSame">
										<div class="takeOff restore">
											<div class="tTitle">
												<strong>출발</strong><!--CR4  -->
												<!-- layerPopup -->
												
												<!-- //layerPopup -->
											</div>
	
											<!-- 판매고 CR4 start -->
											<div>
											  <div class="selectBox" style="width: 395px;">
													<span style="display: none;">
														<a class="btn_select" id="a_RT_ArrArea" href="#none"></a>
													</span>
													<!-- layerPopup -->
											    <div class="selectAr btn_selectPopupOpen" style="display: none;">
														<div class="selectArIn">
															<div class="inputBox">
																<p class="inputInner"><input title="선택하세요" type="text"></p>
																<input name="departureArea" id="departureArea" type="hidden" value="AU">
															</div>
														<ul id="ul_RT_DepArea"></ul>
														</div>
												  </div>
													<!-- //layerPopup -->

												  <input class="btnSend btn_CpopupLayer" id="btn_RT_DepAirport_Search" onclick="return false;" type="image" alt="찾기" src="../../images/Airline/reserv/btn_search.gif">
<!--도착지 찾기-->
													<input name="txt_RT_DepAirport_Search" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_RT_DepAirport_Search" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span><!-- //? -->
												</div>
											</div>
											<!-- 판매고 CR4 end -->											
											
										</div>
										<div class="getIn wD320" style="width: 340px;">
											<div class="tTitle">
												<strong>도착</strong>												
											</div>
											<div>
											  <div class="selectBox" style="width: 395px;">
													<span style="display: none;">
														<a class="btn_select" id="a_RT_ArrArea" href="#none">한국</a>
													</span>
													<!-- layerPopup -->
											    <div class="selectAr btn_selectPopupOpen" style="display: none;">
														<div class="selectArIn">
															<div class="inputBox">
																<p class="inputInner"><input title="선택하세요" type="text"></p>
																<input name="arrivalArea" id="arrivalArea" type="hidden" value="KR">
															</div>
															<ul id="ul_RT_ArrArea"><li val="KR"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">한국</a></li><li val="JP"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">일본</a></li><li val="CN"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">중국</a></li><li val="EA"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">동남아시아</a></li><li val="CA"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">중앙아시아</a></li><li val="RU"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">러시아</a></li><li val="US"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">미국</a></li><li val="EU"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">유럽</a></li><li val="CD"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">캐나다</a></li><li val="ME"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">중동</a></li><li val="AF"><a onclick="javascript:confirmSelectedValue('ul_RT_ArrArea' ,'' , true);" href="#none">아프리카</a></li></ul>
														</div>
												  </div>
													<!-- //layerPopup -->

												  <input class="btnSend btn_CpopupLayer" id="btn_RT_ArrAirport_Search" onclick="return false;" type="image" alt="찾기" src="../../images/Airline/reserv/btn_search.gif"><!--도착지 찾기-->
													<input name="txt_RT_ArrAirport_Search" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_RT_ArrAirport_Search" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span></div>
											</div>
										</div>
									</div>
											
									<!--
										출국/귀국편 출발 지역이 다른 여정 // 체크일 경우
										<div class="boxType01 reType00"> 에서
										<div class="boxType01 checkedMode"> 추가 됩니다.
									-->
									<div class="boxType01 reType00 checkedMode" id="tripTypeDiff1" style="display: none;">
										<p class="Modetrip"><strong>출국여정</strong></p>
										<div class="takeOff">
<!-- 											<input type="hidden" id="openDepartureArea1" name="openDepartureArea1" value="KR" /> --><!--CR4 삭제  -->
											<div class="tTitle"><strong>출국 시 출발</strong><span class="btnType10 btn_CpopupLayer"><a href="javascript:;">해외사이트 예매하기</a></span><!--CR4   -->
												<!-- layerPopup -->
												<div class="abroadBox BoxClose" style="display: none;">
													<div class="abroadInner">
														<div class="aTitle">
															<p>
																<strong>해외사이트 예매하기</strong><!--CR4   -->
															</p>
														</div>
														<div class="abroadCt">
															<p class="aText">해외에서 출발하는 항공편은 아시아나항공 해외 사이트에서 예매하실 수 있습니다. <br>원하시는 나라(지역)와 언어를 선택하십시오. <br>선택 시 해당 페이지로 이동합니다.</p>
															<ul class="language">
																<li class="ll">
																	<!-- select 수정 -->
																	<p><label for="site"><strong>나라(지역)</strong></label></p>
																	<!-- select -->
																	<!--
																		- width, height 조절
																		  <div class="selectStyle" style="width:150px;height:20px;">
																	-->
																	<div class="selectStyle" style="width: 177px; height: 23px;">
																		<span class="span-select" style="height: 23px;">
																			<input id="txt_site2" style="height: 23px; line-height: 23px;" type="text" readonly value="">
																		<select id="site2" onchange="javascript:showLanguageList('site2');">
																				<option value="KR" selected="">KOREA</option>
																				<option value="US">USA</option>
																				<option value="CN">China</option>
																				<option value="JP">Japan</option>
																				<option value="EA">South-East Asia</option>
																				<option value="EU">Europe</option>
																				<option value="AU">Oceania</option>
																				<option value="RU">CIS</option>
																		</select>
																		</span>
																	</div>
																	<!-- //select -->
																	<!-- //select 수정 -->
																</li>
																<li class="ll">
																	<!-- select 수정 -->
																	<p><label for="lang"><strong>언어</strong></label></p>
																	<div class="selectStyle" style="width: 179px; height: 23px;">
																		<span class="span-select" style="height: 23px;">
																			<input id="txt_lang2" style="height: 23px; line-height: 23px;" type="text" readonly value="언어">
																			<select id="lang2"><option value="EN" selected="">English</option> <option value="KO">한국어</option>  </select>
																		</span>
																	</div>
																	<!-- //select 수정 -->
																</li>
																<li class="btn_go ll"><a onclick="javascript:travelFromOversea('site2', 'lang2');return false;" href=""><img alt="이동" src="/images/btn/btn_go.gif"></a></li>
															</ul>
														</div>
													</div>
													<a class="btn_close" href="javascript:;"><img alt="해외사이트 예매하기 팝업 닫기" src="/images/btn/btn_close.gif"></a>
												</div>
												<!-- //layerPopup -->
											</div>
											<!--  판매고 확대 CR4 start-->											
											<div class="selectBox">
												<span style="display: none;">
													<a class="btn_select" id="a_OJ_DepArea1" href="#none">한국</a>
												</span>
												<!-- layerPopup -->
												<div class="selectAr btn_selectPopupOpen" style="display: none;">
													<div class="selectArIn">
														<div class="inputBox">
															<p class="inputInner"><input title="선택하세요" type="text"></p>
															<input name="openDepartureArea1" id="openDepartureArea1" type="hidden" value="KR">
														</div>
														<ul id="ul_OJ_DepArea_1"><li val="KR"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">한국</a></li><li val="JP"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">일본</a></li><li val="CN"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">중국</a></li><li val="EA"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">동남아시아</a></li><li val="CA"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">중앙아시아</a></li><li val="RU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">러시아</a></li><li val="US"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">미국</a></li><li val="EU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">유럽</a></li><li val="AU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_1' ,'' , true);" href="#none">대양주</a></li></ul>
													</div>
												</div>
												<!-- //layerPopup -->

											  <input class="btnSend btn_CpopupLayer" id="btn_OJ_DepAirport_Search_1" onclick="return false;" type="image" alt="찾기" src="/images/btn/btn_search.gif"><!--도착지 찾기-->
												<input name="txt_OJ_DepAirport_Search_1" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_OJ_DepAirport_Search_1" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
												<input name="openDepartureAirport1" title="인천" id="openDepartureAirport1" type="hidden" value="ICN">
											</div>
										<!--  판매고 확대 CR4 end-->	
											
										</div>
										<div class="getIn">
											<div class="tTitle">
												<strong>출국 시 도착</strong>
											
											</div>
											<div>
												<div class="selectBox">
													<span style="display: none;">

														<a class="btn_select" id="a_OJ_ArrArea1" href="#none">일본</a>
													</span>
													<!-- layerPopup -->
													<div class="selectAr btn_selectPopupOpen" style="display: none;">
														<div class="selectArIn">
															<div class="inputBox">
																<p class="inputInner"><input title="선택하세요" type="text"></p>
																<input name="openArrivalArea1" id="openArrivalArea1" type="hidden" value="JP">
															</div>
															<ul id="ul_OJ_ArrArea_1"><li val="JP"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">일본</a></li><li val="CN"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">중국</a></li><li val="EA"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">동남아시아</a></li><li val="CA"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">중앙아시아</a></li><li val="RU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">러시아</a></li><li val="US"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">미국</a></li><li val="EU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">유럽</a></li><li val="AU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">대양주</a></li><li val="CD"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">캐나다</a></li><li val="ME"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">중동</a></li><li val="AF"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_1' ,'' , true);" href="#none">아프리카</a></li></ul>
														</div>
													</div>
													<!-- //layerPopup -->

												  <input class="btnSend btn_CpopupLayer" id="btn_OJ_ArrAirport_Search_1" onclick="return false;" type="image" alt="찾기" src="/images/btn/btn_search.gif"><!--도착지 찾기-->
													<input name="txt_OJ_ArrAirport_Search_1" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_OJ_ArrAirport_Search_1" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="openArrivalAirport1" title="도쿄/나리타" id="openArrivalAirport1" type="hidden" value="NRT">
												</div>
											</div>
										</div>
									</div>
									<!--
										출국/귀국편 출발 지역이 다른 여정 // 체크일 경우
										<div class="boxType01 reType01"> 에서
										<div class="boxType01 reType01 checkedMode"> 추가 됩니다.
									-->
									<div class="boxType01 reType01 checkedMode" id="tripTypeDiff2" style="display: none;">
										<p class="Modetrip"><strong>귀국여정</strong></p>
										<div class="takeOff">
											<p class="tTitle"><strong>귀국 시 출발</strong></p>
											<div class="selectBox" style="height: 30px; z-index: 100;">
												<span style="width: 245px; display: none;">
													<a class="btn_select" id="a_OJ_DepArea2" href="#none">일본</a>
												</span>
												<!-- layerPopup -->
												<div class="selectAr btn_selectPopupOpen" style="display: none;">
													<div class="selectArIn">
														<div class="inputBox">
															<p class="inputInner"><input title="선택하세요" type="text"></p>
															<input name="openDepartureArea2" id="openDepartureArea2" type="hidden" value="JP">
														</div>
														<ul id="ul_OJ_DepArea_2"><li val="KR"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">한국</a></li><li val="JP"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">일본</a></li><li val="CN"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">중국</a></li><li val="EA"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">동남아시아</a></li><li val="CA"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">중앙아시아</a></li><li val="RU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">러시아</a></li><li val="US"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">미국</a></li><li val="EU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">유럽</a></li><li val="AU"><a onclick="javascript:confirmSelectedValue('ul_OJ_DepArea_2' ,'' , true);" href="#none">대양주</a></li></ul>
													</div>
												</div>
												<!-- //layerPopup -->

											  <input class="btnSend btn_CpopupLayer" id="btn_OJ_DepAirport_Search_2" onclick="return false;" type="image" alt="찾기" src="/images/btn/btn_search.gif"><!--출발지 찾기-->
												<input name="txt_OJ_DepAirport_Search_2" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_OJ_DepAirport_Search_2" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
												<input name="openDepartureAirport2" title="도쿄/나리타" id="openDepartureAirport2" type="hidden" value="NRT">
											</div>
										</div>
										
										<!--CR4 판매구간확대 시작 -->
										<div class="getIn">
											<input name="openArrivalArea2" id="openArrivalArea2" type="hidden" value="KR">
											<div class="tTitle">
												<strong>귀국 시 도착</strong>
											</div>
											<div>
												<div class="selectBox">
													<span style="display: none;">
														<a class="btn_select" id="a_OJ_ArrArea2" href="#none">한국</a>
													</span>
													<!-- layerPopup -->
													<div class="selectAr btn_selectPopupOpen" style="display: none;">
														<div class="selectArIn">
															<div class="inputBox">
																<p class="inputInner"><input title="선택하세요" type="text"></p>
<!-- 																<input type="hidden" name="openArrivalAirport2" id="openArrivalAirport2"> --><!-- CR4 주석 -->
															</div>
															<ul id="ul_OJ_ArrArea_2"><li val="KR"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">한국</a></li><li val="CN"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">중국</a></li><li val="EA"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">동남아시아</a></li><li val="CA"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">중앙아시아</a></li><li val="RU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">러시아</a></li><li val="US"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">미국</a></li><li val="EU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">유럽</a></li><li val="AU"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">대양주</a></li><li val="CD"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">캐나다</a></li><li val="ME"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">중동</a></li><li val="AF"><a onclick="javascript:confirmSelectedValue('ul_OJ_ArrArea_2' ,'' , true);" href="#none">아프리카</a></li></ul>
														</div>
													</div>
													<!-- //layerPopup -->
	
												  <input class="btnSend btn_CpopupLayer" id="btn_OJ_ArrAirport_Search_2" onclick="return false;" type="image" alt="찾기" src="/images/btn/btn_search.gif"><!--도착지 찾기-->
													<input name="txt_OJ_ArrAirport_Search_2" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_OJ_ArrAirport_Search_2" style="width: 242px;" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="openArrivalAirport2" title="인천" id="openArrivalAirport2" type="hidden" value="ICN">
												</div>
											</div>
										</div>
										<!--CR4 판매구간확대 끝 -->
									</div>

									<div class="boxType01 reType02" id="tripTypeSimpleDate">

										<!-- 접근성 1st -->
									  <script type="text/javascript">
										$jQ(window).load(function(){
											// 달력 월 선택 focus
											$jQ('.selectArIn .sUl a, .btn_preC, .btn_nextC').live('click', function(){
												$jQ(this).parents('.CalendarBox').focus();
											});
											// 달력 요일 선택 focus
											$jQ('.calendarArea a').live('click', function(){
												$jQ(this).parents('.calendarArea ').find('.sCalendarBtn').focus();
											});
										});
										</script>
										<!-- //접근성 1st --><!-- 가는 날 --><!-- 오는 날 -->

										<div class="takeOff">
										  <p class="tTitle">
												<strong>가는 날</strong>
											</p>
											<p>
											  <a class="btn_close2" href="javascript:_cal_close('nextCalendarFocusA');"><img alt="가는날 달력 레이어 팝업 닫기" src="../../images/Airline/reserv/btn_calendar.gif"></a>
											  <input title="출국일 선택" class="text01 inputFocusin01" id="viewSDate" type="text" readonly value="출국일 선택">
										  </p>
										  <div class="CalendarBox" id="CalendarBox1">

												<!-- 가는 날 - 달력 -->
											<div class="CalendarInner bg_start" id="sCalArea">
											  </div>
											  <!-- //가는 날 - 달력 -->
											  <a class="btn_close2" href="javascript:_cal_close('nextCalendarFocusA');"></a>
											</div>
									  </div>
										<div class="getIn" id="getIn01">
											<div class="tTitle">
												<p><strong>오는 날</strong></p>
                                            </div>
											<p>
											  <a class="btn_close2" href="javascript:_cal_close('nextCalendarFocusB');"><img alt="오는날 달력 레이어 팝업 닫기" src="../../images/Airline/reserv/btn_calendar.gif"></a>
											  <input title="귀국일 선택" class="text01 inputFocusin01" id="viewEDate" type="text" readonly value="귀국일 선택">
										  </p>
										  <div class="CalendarBox" id="CalendarBox2">

												<!-- 가는 날 - 달력 -->
											<div class="CalendarInner bg_arrival" id="eCalArea">
											  </div>
											  <!-- //오는 날 - 달력 -->
											  <a class="btn_close2" href="javascript:_cal_close('nextCalendarFocusB');"></a>
											</div>
										</div>
									</div>

									<!-- 다구간 출/도착 Start -->
									<div class="manyBox" id="div_Multi_DepArr1" style="display: none;" rownum="1">
										<div class="left"><span>1</span></div>
										<div class="right">

											<div class="gapBox">
												<strong style="padding-right: 8px; font-size: 13px;">출발</strong>
												<span class="btnType10 btn_CpopupLayer"><a href="#none">해외 출발편 예매하기</a></span>
												<!-- layerPopup -->
												<div class="abroadBox-type-ne BoxClose" style="display: none;">
													<div class="abroadInner">
														<div class="aTitle">
															<p>
																<strong>해외 출발편 예매하기</strong>
															</p>
														</div>
														<div class="abroadCt">
															<p class="aText">해외에서 출발하는 항공편은 아시아나항공 해외 사이트에서 예매하실 수 있습니다. <br>원하시는 나라(지역)와 언어를 선택하십시오. <br>선택 시 해당 페이지로 이동합니다.</p>
															<ul class="language">
																<li class="ll">
																	<p><strong>나라(지역)</strong></p>
																	<div class="selectBox">

																		<div class="selectStyle" style="height: 24px;">
																			<span class="span-select" style="height: 24px;">
																				<input tabindex="-1" title="나라 검색" id="txtSiteCode3" style="height: 24px; line-height: 24px;" type="text" readonly value="한국">
																			<select name="hidSiteCode3" title="나라 검색" id="hidSiteCode3" onchange="javascript:showLanguageList('hidSiteCode3');">
																					<option value="kr" selected="">한국</option>
																					<option value="us">미주</option>
																					<option value="jp">일본</option>
																					<option value="cn">중국</option>
																					<option value="ru">러시아</option>
																					<option value="ea">동남아시아</option>
																					<option value="eu">유럽</option>
																					<option value="au">대양주</option>
																			</select>
																			</span>
																		</div>

																		<!-- //layerPopup -->
																	</div>
																</li>
																<li class="ll">
																	<p><strong>언어</strong></p>
																	<div class="selectBox">

																		<div class="selectStyle" style="height: 24px;">
																			<span class="span-select" style="height: 24px;">
																				<input tabindex="-1" title="언어 검색" id="txtLangCode3" style="height: 24px; line-height: 24px;" type="text" readonly value="한국어">
																				<select name="hidLangCode3" title="나라 언어" id="hidLangCode3"><option value="EN" selected="">English</option> <option value="KO">한국어</option>  </select>
																			</span>
																		</div>

																		<!-- //layerPopup -->
																	</div>
																</li>
																<li class="btn_go ll"><a onclick="javascript:travelFromOversea('hidSiteCode3', 'hidLangCode3');return false;" href=""><img alt="이동" src="/images/btn/btn_go.gif"></a></li>
															</ul>
														</div>
													</div>
													<a class="btn_close" href="javascript:;"><img alt="해외 출발편 예매하기 팝업 닫기" src="/images/btn/btn_close.gif"></a>
												</div>
												
												<!-- //layerPopup -->
			
												<div class="selectBox" style="z-index: 1;">
													<input class="btnSend btn_CpopupLayer" id="btn_MT_DepAirport1" type="image" alt="도시보기" src="/images/btn/btn_search4.gif">
													<input name="txt_MT_DepAirport1" title="도시, 공항(코드) 입력" class="autocompleteBox ui-autocomplete-input" id="txt_MT_DepAirport1" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="hid_MT_DepAirport1" title="인천" class="airportChange" id="hid_MT_DepAirport1" type="hidden" value="ICN">
													<input name="hid_MT_DepArea1" id="hid_MT_DepArea1" type="hidden" value="KR">
												</div>
											</div>											
											<!-- CR4 수정건 -->
											<div class="gapBox">
												<strong class="title">도착</strong>
												<div class="selectBox">
													<input class="btnSend btn_CpopupLayer" id="btn_MT_ArrAirport1" type="image" alt="도시보기" src="/images/btn/btn_search4.gif">
													<input name="txt_MT_ArrAirport1" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_MT_ArrAirport1" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="hid_MT_ArrAirport1" title="도쿄/나리타" id="hid_MT_ArrAirport1" type="hidden" value="NRT">
													<input name="hid_MT_ArrArea1" id="hid_MT_ArrArea1" type="hidden" value="JP">
												</div>
											</div>

											<div class="gapBox start">
												<input name="hid_depDateOfMT1" id="hid_depDateOfMT1" type="hidden" value="2014-07-29">	<!-- 가는 날 -->
												<strong class="title">출발일</strong>
												<div class="selectBox">
													<a class="btn_calendar CalendarBtnMany" id="calendarFocusOfMT1">
														<img alt="출발일 달력" src="/images/btn/btn_calendar3.gif">
													</a>
													<input title="출발일" class="input-type-1 inputFocusin01" id="viewDateOfMT1" type="text" value="출발일">

													<!-- 달력 -->
													<div class="CalendarBox oneWay" id="CalendarBoxOfMT1" style="display: none;">
														<div class="CalendarInner bg_start" id="sCalAreaOfMT1"></div>
														<a class="btn_close2" href="javascript:_cal_close()"><img alt="달력 레이어 팝업 닫기" src="/images/btn/btn_close2.gif"></a>
													</div>
													<!-- //달력 -->
												</div>
											</div>
										</div>
									</div>
									<!--End of first Row -->
									
									<!--Begin of Second Row -->
									<div class="manyBox" id="div_Multi_DepArr2" style="display: none;" rownum="2">
										<div class="left">
											<span>2</span>
										</div>

										<div class="right">
											<div class="gapBox">
												<strong class="title">출발</strong>
												<div class="selectBox">
													<input class="btnSend btn_CpopupLayer" id="btn_MT_DepAirport2" type="image" alt="출발 찾기" src="/images/btn/btn_search4.gif">
													<input name="txt_MT_DepAirport2" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_MT_DepAirport2" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="hid_MT_DepAirport2" title="도쿄/나리타" id="hid_MT_DepAirport2" type="hidden" value="NRT">
													<input name="hid_MT_DepArea2" id="hid_MT_DepArea2" type="hidden" value="JP">
												</div>
											</div>

											<div class="gapBox">
												<strong class="title">도착</strong>
												<div class="selectBox">
													<input class="btnSend btn_CpopupLayer" id="btn_MT_ArrAirport2" type="image" alt="도착 찾기" src="/images/btn/btn_search4.gif">
													<input name="txt_MT_ArrAirport2" title="도시 또는 공항 이름(코드) 3자리 입력" class="autocompleteBox ui-autocomplete-input" id="txt_MT_ArrAirport2" type="text" autocomplete="off"><span class="ui-helper-hidden-accessible" role="status" aria-live="polite"></span>
													<input name="hid_MT_ArrAirport2" title="" id="hid_MT_ArrAirport2" type="hidden" value="">
													<input name="hid_MT_ArrArea2" id="hid_MT_ArrArea2" type="hidden" value="">
												</div>
											</div>

											<div class="gapBox start">
												<input name="hid_depDateOfMT2" id="hid_depDateOfMT2" type="hidden" value="2014-08-01">	<!-- 가는 날 -->
												<strong class="title">출발일</strong>
												<div class="selectBox">
													<a class="btn_calendar CalendarBtnMany" id="calendarFocusOfMT2">
														<img alt="출발일 달력" src="/images/btn/btn_calendar3.gif">
													</a>
													<input title="출발일" class="input-type-1 inputFocusin01" id="viewDateOfMT2" type="text" value="출발일">

													<!-- 달력 -->
													<div class="CalendarBox oneWay" id="CalendarBoxOfMT2" style="display: none;">
														<div class="CalendarInner bg_start" id="sCalAreaOfMT2"></div>
														<a class="btn_close2" href="javascript:_cal_close()"><img alt="달력 레이어 팝업 닫기" src="/images/btn/btn_close2.gif"></a>
													</div>
													<!-- //달력 -->
												</div>
											</div>
										</div>
									</div>
									<!-- 다구간 출/도착 End -->



									<!-- 다구간 여정 처리 Script Start -->

								  <script type="text/javascript">
									

												
												//CR4 추가시작
												//---->> 유럽 구간 룰 정의 시작
													if (prevDepArea == "KR" && prevArrArea == "EU") {
														rule.depOnlyArea.push("EU");

														var isPrevArrDirectEu = _.indexOf(directEuList, prevArrAirport) >= 0;
														var isDepDirectEu = _.indexOf(directEuList, rule.depAirport) >= 0;

														if (isPrevArrDirectEu && isDepDirectEu) {
															if (prevArrAirport == rule.depAirport) {
																rule.arrOnlyArea.push("KR");

																rule.addOnParam = "DEP|I|EU|||" + directEuList.join(",");
															} else {
																rule.arrOnlyArea.push("KR");
															}
														} else if (isPrevArrDirectEu && !isDepDirectEu) {
															rule.arrOnlyArea.push("KR");

															rule.addOnParam = "DEP|I|EU|" + directEuList.join(",") + "||";
														} else if (!isPrevArrDirectEu && isDepDirectEu) {
															rule.arrOnlyArea.push("KR");

														} else {
															rule.arrOnlyArea.push("KR");
															rule.addOnParam = "DEP|I|EU|" + directEuList.join(",") + "||";
														}

													} else if (prevDepArea == "EU" && prevArrArea == "EU") {

														var isPrevDepDirectEu = _.indexOf(directEuList, prevDepAirport) >= 0;
														var isPrevArrDirectEu = _.indexOf(directEuList, prevArrAirport) >= 0;
														var isDepDirectEu = _.indexOf(directEuList, rule.depAirport) >= 0;

														if (isPrevDepDirectEu && !isPrevArrDirectEu) {
															rule.depOnlyArea.push("EU");

															if (isDepDirectEu) {
																rule.arrOnlyArea.push("KR");
															} else {
																rule.arrOnlyArea.push("KR");

																rule.addOnParam = "DEP|I|EU|" + directEuList.join(",") + "||";
															}

														} else if (!isPrevDepDirectEu && isPrevArrDirectEu) {
															rule.depOnlyAirport.push(prevArrAirport);

															rule.arrOnlyArea.push("KR");
														}
													} else if (prevDepArea == "EU" && prevArrArea == "KR") {
														rule.depOnlyAirport.push(prevArrAirport);

														rule.arrOnlyArea.push("KR");
														rule.addOnParam = "ARR|D|KR|||";
													}
													//---->> 유럽 구간 룰 정의 종료
													//CR4 추가수정 끝
													
													//CR4 수정건
													//출발지가 미주, 유럽이 아니거나 , 국내출발인 경우에 도착지역을 한국으로 한정한다.
													if (rule.depArea != "US" &&rule.depArea != "EU" && rule.depArea != "KR" && $jQ("#hid_MT_DepArea1").val() =="KR") {

														rule.arrOnlyArea.push("KR");
													}													
													//CR4 수정건 끝
												
												rule.depOnlyArea.push(prevArrArea);
												rule.depInitArea = prevArrArea;
												rule.depInitAirport = prevArrAirport;

											}

											return rule;
										};


										var setMultiSegmentDepArr = function(hid_MT_DepArea, hid_MT_DepAirport, txt_MT_DepAirport, hid_MT_ArrArea, hid_MT_ArrAirport, txt_MT_ArrAirport, btn_MT_DepAirport, btn_MT_ArrAirport) {
											var rule = initMultiSegRule(hid_MT_DepArea);

											// 출발 지역 load
											if (rule.rowSeqNo == 1) {

												//CR4 출발지 수정
												log("rule.rowSeqNo=" + rule.rowSeqNo);
												//loadAirport("D", rule.depAirportId, "REV", "DEP", "KR", rule.depInitAirport, "");
													
												loadAreaAirportCustom(
														true,
														"I",
														hid_MT_DepArea,
														hid_MT_DepAirport,
														txt_MT_DepAirport,
														"REV",
														"DEP",
														rule.depAirportId,
														"",
														rule.depInitAirport,
														"",
														"",
														"KR",
														rule.depOnlyAirport.join(","),
														rule.depExceptArea.join(","),
														rule.depExceptAirport.join(","),
														rule.addOnParam
													);
													//CR4 출발지 수정 end
												
												loadAreaAirportCustom(
														true,
														"I",
														hid_MT_ArrArea,
														hid_MT_ArrAirport,
														txt_MT_ArrAirport,
														"REV",
														"ARR",
														$jQ("#" + hid_MT_DepAirport).val(),
														"",
														rule.arrInitAirport,
														"",
														"",
														rule.arrOnlyArea.join(","),
														rule.arrOnlyAirport.join(","),
														rule.arrExceptArea.join(","),
														rule.arrExceptAirport.join(","),
														rule.addOnParam
													);
											} else {
												loadAreaAirportCustom(
														true,
														"I",
														hid_MT_DepArea,
														hid_MT_DepAirport,
														txt_MT_DepAirport,
														"REV",
														"DEP",
														"",
														"",
														rule.depInitAirport,
														"",
														"",
														rule.depOnlyArea.join(","),
														rule.depOnlyAirport.join(","),
														rule.depExceptArea.join(","),
														rule.depExceptAirport.join(","),
														rule.addOnParam
													);

												loadAreaAirportCustom(
													true,
													"I",
													hid_MT_ArrArea,
													hid_MT_ArrAirport,
													txt_MT_ArrAirport,
													"REV",
													"ARR",
													$jQ("#" + hid_MT_DepAirport).val(),
													"",
													"NONE",
													"",
													"",
													rule.arrOnlyArea.join(","),
													rule.arrOnlyAirport.join(","),
													rule.arrExceptArea.join(","),
													rule.arrExceptAirport.join(","),
													rule.addOnParam
												);
											}


											// 출발 지역의 찾기 버튼을 선택한 경우
											if (!isEmpty(btn_MT_DepAirport)) {
												$jQ("#" + btn_MT_DepAirport).click(function(e) {

													log("###### 다구간 출발지역 찾기선택 ########");
													log("btn_MT_DepAirport=" + btn_MT_DepAirport );
													
													var rule = initMultiSegRule(this.id);

													var areaAirportObj = new AreaAiportSearchObject();
													areaAirportObj.selectObj = $jQ(this);
													areaAirportObj.defaultAirport = rule.depAirport;
													areaAirportObj.domIntType = "I";
													areaAirportObj.bizType = "REV";
													areaAirportObj.depArrType = "DEP";
													areaAirportObj.area = rule.depArea;
													areaAirportObj.areaId = rule.depAreaId;
													areaAirportObj.airportNameId = txt_MT_DepAirport;
													areaAirportObj.airportId = rule.depAirportId;

													// areaAirportObj.depAirport 와 rule.depAirport 는 서로 의미가 다름.
													// areaAirportObj.depAirport 는 도착지에서만 쓰이는 값으로 출발지 공항에 따른 도착지 노선 정보를 가져오는데 사용함
													// rule.depAirport 는 출발지 값을 의미함. rule.arrAirport 의 반대 값을 의미함
													areaAirportObj.depAirport = "";
													areaAirportObj.isAreaChangeEvent = false;
													
													//CR4 변경코드 시작
													if (rule.rowSeqNo  !=1) {	//다구간 첫번재 여정만 대구간 전체 오픈시킴
														areaAirportObj.onlyArea = rule.depOnlyArea;		
													}
													//CR4 변경코드 끝
													
													areaAirportObj.onlyAirport = rule.depOnlyAirport;
													areaAirportObj.exceptArea = rule.depExceptArea;
													areaAirportObj.exceptAirport = rule.depExceptAirport;

													areaAirportObj.addOnParam = rule.addOnParam;

													areaAirportObj.isMultiCityCase = "Y";

													showAreaAirportSearch(areaAirportObj, e); // 공항 검색창을 호출한다.
												});
											}

											// 도착 지역의 찾기 버튼을 선택한 경우
											$jQ("#" + btn_MT_ArrAirport).click(function(e) {

												log("####### 다구간 도착지역 찾기클릭 ########");
												log("btn_MT_ArrAirport=" + btn_MT_ArrAirport  );
												
												var rule = initMultiSegRule(this.id);

												var areaAirportObj = new AreaAiportSearchObject();
												areaAirportObj.selectObj = $jQ(this);
												areaAirportObj.defaultAirport = rule.arrAirport;
												areaAirportObj.domIntType = "I";
												areaAirportObj.bizType = "REV";
												areaAirportObj.depArrType = "ARR";
												areaAirportObj.area = rule.arrArea;
												areaAirportObj.areaId = rule.arrAreaId;
												areaAirportObj.airportNameId = txt_MT_ArrAirport;
												areaAirportObj.airportId = hid_MT_ArrAirport;

												// areaAirportObj.depAirport 와 rule.depAirport 는 서로 의미가 다름.
												// areaAirportObj.depAirport 는 도착지에서만 쓰이는 값으로 출발지 공항에 따른 도착지 노선 정보를 가져오는데 사용함
												// rule.depAirport 는 출발지 값을 의미함. rule.arrAirport 의 반대 값을 의미함
												areaAirportObj.depAirport = rule.depAirport;
												areaAirportObj.isAreaChangeEvent = false;

												areaAirportObj.onlyArea = rule.arrOnlyArea;
												areaAirportObj.onlyAirport = rule.arrOnlyAirport;
												areaAirportObj.exceptArea = rule.arrExceptArea;
												areaAirportObj.exceptAirport = rule.arrExceptAirport;

												areaAirportObj.addOnParam = rule.addOnParam;

												areaAirportObj.isMultiCityCase = "Y";

												showAreaAirportSearch(areaAirportObj, e); // 공항 검색창을 호출한다.
											});

											// 첫 출발지는 html 기본 select 요소임
											if (rule.rowSeqNo == 9999) {			//CR4 수정건 입력컨트롤 변경으로 UI event처리 if 구문 필요없음
												// 출발 공항이 변경된 경우. 동일 Seg의 도착지를 변경해 줌
												$jQ("#"+hid_MT_DepAirport).on('change', function (event) {

													log("###### 다구간 첫 출발공항 변경 ########");
													log(hid_MT_DepAirport + "=" + $jQ("#"+hid_MT_DepAirport).val());
													
													$jQ("#SearchCityBox").hide();
													$jQ("#SearchCityBox").remove();

													var rule = initMultiSegRule(hid_MT_DepArea);
													loadAreaAirportCustom(
														true,
														"I",
														hid_MT_ArrArea,
														hid_MT_ArrAirport,
														txt_MT_ArrAirport,
														"REV",
														"ARR",
														rule.depAirport,
														"",
														"",
														"",
														"",
														rule.arrOnlyArea.join(","),
														rule.arrOnlyAirport.join(","),
														rule.arrExceptArea.join(","),
														rule.arrExceptAirport.join(","),
														rule.addOnParam
													); 

													$jQ("#" + rule.arrAirportId).trigger("textchange");
												});
											} else {
												// 출발 공항이 변경된 경우. 동일 Seg의 도착지를 변경해 줌
												
												$jQ("#"+hid_MT_DepAirport).on('textchange', function (event) {

													log("###### 다구간 출발공항 변경처리 ########");
													log(hid_MT_DepAirport + "=" + $jQ("#"+hid_MT_DepAirport).val());
													
													$jQ("#SearchCityBox").hide();
													$jQ("#SearchCityBox").remove();

													var rule = initMultiSegRule(hid_MT_DepArea);
													loadAreaAirportCustom(
														true,
														"I",
														hid_MT_ArrArea,
														hid_MT_ArrAirport,
														txt_MT_ArrAirport,
														"REV",
														"ARR",
														rule.depAirport,
														"",
														"",
														"",
														"",
														rule.arrOnlyArea.join(","),
														rule.arrOnlyAirport.join(","),
														rule.arrExceptArea.join(","),
														rule.arrExceptAirport.join(","),
														rule.addOnParam
													);

													$jQ("#" + rule.arrAirportId).trigger("textchange");
												});
											}

											// 도착 공항이 변경된 경우. 다음 Seg의 출발지를 변경해 줌
											$jQ("#"+hid_MT_ArrAirport).on('textchange', function (event) {

												log("###### 다구간 도착공항 변경 ########");
												log(hid_MT_ArrAirport + "=" + $jQ("#"+hid_MT_ArrAirport).val());
												
												$jQ("#SearchCityBox").hide();
												$jQ("#SearchCityBox").remove();

												var rowSeqNo = getRowSeqNo(this.id);

												var manyBoxLen = $jQ("div[id^=div_Multi_DepArr]").length;
												if (manyBoxLen == rowSeqNo) {
													return;
												}

												rowSeqNo++;

												var hid_MT_DepAreaNext = "hid_MT_DepArea" + rowSeqNo;
												var hid_MT_DepAirportNext = "hid_MT_DepAirport" + rowSeqNo;
												var txt_MT_DepAirportNext = "txt_MT_DepAirport" + rowSeqNo;

												var rule = initMultiSegRule(hid_MT_DepAreaNext);

												if (!rule.hasNextPhase) {
													alert("마지막 국내선 구간 이후로는 구간을 추가할 수 없습니다.");

													while (true) {
														var $lastManyBox = $jQ("div[id^=div_Multi_DepArr]").last();

														var lastDepAirportId = $lastManyBox.find("input[type=hidden][id^=hid_MT_DepAirport]").attr("id");

														$lastManyBox.find(".exemption a").trigger("click");

														if (lastDepAirportId == hid_MT_DepAirportNext) {
															return;
														}
													}
												}

												loadAreaAirportCustom(
														true,
														"I",
														hid_MT_DepAreaNext,
														hid_MT_DepAirportNext,
														txt_MT_DepAirportNext,
														"REV",
														"DEP",
														"",
														"",
														rule.depInitAirport,
														"",
														"",
														rule.depOnlyArea.join(","),
														rule.depOnlyAirport.join(","),
														rule.depExceptArea.join(","),
														rule.depExceptAirport.join(","),
														rule.addOnParam
												);
												$jQ("#" + hid_MT_DepAirportNext).trigger("textchange");
											});

											// 출발공항의 focus가 변경되는 경우 올바른 공항명을 입력하지 않은 경우 원래의 값을 설정한다.
											//CR4 수정건
// 											if (rule.rowSeqNo != 1) {
												$jQ(document.body).on('blur', '#' + txt_MT_DepAirport, function(e) {
													$jQ('#' + txt_MT_DepAirport).val($jQ('#' + hid_MT_DepAirport).attr("title"));
												});
// 											}

											// 도착공항의 focus가 변경되는 경우 올바른 공항명을 입력하지 않은 경우 원래의 값을 설정한다.
											$jQ(document.body).on('blur', '#' + txt_MT_ArrAirport, function(e) {
												$jQ('#' + txt_MT_ArrAirport).val($jQ('#' + hid_MT_ArrAirport).attr("title"));
											});
										};

										//**********************************************************************************************************************************************************
										// 달력을 선택한 경우
										// 동적으로 추가된 부분에 대한 달력을 제어하기 위해 현재 선택한 달력 버튼을 포함하는 element의 모든 요소 중 달력에 관여되는 요소를 가져오고
										// 이 요소를 이용하여 달력을 OPEN 하도록 한다.
										//**********************************************************************************************************************************************************
										$jQ(document).on('click', 'a[id^=calendarFocusOfMT]' , function(e) {
											var clickObj = e.currentTarget;
											var manyBox = $jQ(clickObj).parents('.manyBox');

											var idx = $jQ("a[id^=calendarFocusOfMT]").index(this);

											var calendarDefaultDate = "";
											if (idx == 0)
												calendarDefaultDate = '2014-07-29';
											else {
												calendarDefaultDate = $jQ('input[id=hid_depDateOfMT' + idx + ']').val();
											}

											var hid_depDateOfMT	 = manyBox.find('input[id^=hid_depDateOfMT]').attr('id');
											var viewDateOfMT		= manyBox.find('input[id^=viewDateOfMT]').attr('id');
											var sCalAreaOfMT		= manyBox.find('div[id^=sCalAreaOfMT]').attr('id');
											var CalendarBoxOfMT	 = manyBox.find('div[id^=CalendarBoxOfMT]').attr('id');
											var calendarFocusOfMT   = manyBox.find('a[id^=calendarFocusOfMT]').attr('id');

											// 기존 달력 닫기

											// 다구간 달력 OPEN
											_cal_open('2014-07-29', hid_depDateOfMT, viewDateOfMT, sCalAreaOfMT, CalendarBoxOfMT, 'CA', '날짜', 'CalendarBox1,CalendarBox2,CalendarBoxOfMT1,CalendarBoxOfMT2,CalendarBoxOfMT3,CalendarBoxOfMT4', calendarFocusOfMT, '', '', '', '', '', calendarDefaultDate.replace(/\-/g, ""));
										});

										// 달력 일자를 변경하는 경우
										$jQ(document).on('change', 'input[id^=hid_depDateOfMT]' , function(event) {

											var $currDepDateObj  = $jQ(this);
											var $currDepArrDiv   = $jQ(this).closest("div[id^=div_Multi_DepArr]");

											var currDepDate = stringToDate( $currDepDateObj.val() );

/*
											// 이전 일자를 체크하여 현재 선택한 일자보다 작은 경우는 통과. 아니면 이전 일자를 변경
											$currDepArrDiv.prevAll(".manyBox:not(#div_add_multi_segment)").each(function() {

												var $prevDepDateObj = $jQ(this).find("input[id^=hid_depDateOfMT]");
												var prevDepDate	= stringToDate( $prevDepDateObj.val() );

												if (prevDepDate > currDepDate) {
													$jQ(this).find("input[id^=hid_depDateOfMT]").val($currDepDateObj.val());
													$jQ(this).find("input[id^=viewDateOfMT]").val(_setStartDataView);

												}
											});
*/
											// 다음 일자를 현재 선택한 일자와 동일하게 만든다.
											$currDepArrDiv.nextAll("div[id^=div_Multi_DepArr]").each(function(){
												// 다음일자가 선택한일자보다 큰게 지정되어 있는 경우는 SKIP하고 다음일자가 선택한일자 보다 작거나 없는 경우 다음일자를 선택한일자로 지정한다.
												var $nextDepDateObj = $jQ(this).find("input[id^=hid_depDateOfMT]");
												var nextDepDate	= null;
												if($nextDepDateObj.val() != "") {
													nextDepDate	= stringToDate( $nextDepDateObj.val() );
												}

												if(isEmpty(nextDepDate) || nextDepDate < currDepDate) {
													$jQ(this).find("input[id^=hid_depDateOfMT]").val($currDepDateObj.val());
													$jQ(this).find("input[id^=viewDateOfMT]").val(_setStartDataView);
												}
											});
										});

										//**********************************************************************************************************************************************************
										// 여정구간 추가 버튼을 클릭한 경우
										// 다구간 여정 입력 BOX의 맨 마지막 ROW를 templete으로 이용하여 새로운 ROW를 만들어준다.
										// 이때, 새로 만들어지는 모든 요소의 ID, NAME 에 포함된 ROW NUMBER를 새로 추가된 ROW의 번호로 갱신한다.
										//**********************************************************************************************************************************************************
										$jQ("#btn_add_segment").click(function(addEvent) {

											var lastManyBox  = $jQ('div[id^=div_Multi_DepArr]').last();	// id가 div_Multi_DepArr 로 시작하는 모든 객체를 찾음.
											var cloneManyBox = $jQ(lastManyBox).clone();		// Deep copy
											var rowSeqNo     = $jQ(cloneManyBox).attr("rownum");

											// 마지막 여정이 한국 국내선 여정이라면 더이상 여정을 추가할 수 없다.
											var depArea = $jQ("#hid_MT_DepArea" + rowSeqNo).val();
											var arrArea = $jQ("#hid_MT_ArrArea" + rowSeqNo).val();


											var depAirport = $jQ("#hid_MT_DepAirport" + rowSeqNo).val();
											var arrAirport = $jQ("#hid_MT_ArrAirport" + rowSeqNo).val();

											//CR4 해외출발편 예외처리 추가
											if ($jQ("#hid_MT_DepArea1").val()!="KR" && rowSeqNo >= 4 ) {
												alert("해외출발 다구간 여정은 최대 4구간까지 가능합니다");
												return;												
											}
											//CR4 end of append
											
											//CR4 1st Seg 한국발인 경우조건 추가(해외발은 추가가능함.)
											if ($jQ("#hid_MT_DepArea1").val()=="KR" && depArea == "KR" && arrArea == "KR") {
												alert("마지막 국내선 구간 이후로는 구간을 추가할 수 없습니다.");
												return;
											}
											//CR4 end of modification

											
											//CR4-2 해외출발일때 이전 여정이 국제선 구간일 경우 여정이 종료됨 추가 불가
											if (($jQ("#hid_MT_DepArea1").val()!="KR" && arrArea != "KR") && rowSeqNo >= 2) {
												alert("마지막 국제선 구간 이후로는 구간을 추가할 수 없습니다");
												return;
											}
											
											
											if (isEmpty(depAirport) || isEmpty(arrAirport)) {
												alert("비어있는 구간이 존재할 경우 구간을 추가할 수 없습니다.");
												return;
											}

											$jQ(lastManyBox).find(".exemption").hide();


											log("rowSeqNo=>"+rowSeqNo);
											$jQ(lastManyBox).after( cloneManyBox );	// 기존행을 이용하여 한줄 추가.

											var newRowSeqNo = parseInt(rowSeqNo,10) + 1;
											lastManyBox   = $jQ('div[id^=div_Multi_DepArr]').last();	// 추가된 마지막 ROW를 다시 마지막 ELEMENT OBJECT로 가져온다.
											$jQ(lastManyBox).attr("rownum",newRowSeqNo);
											$jQ(lastManyBox).attr("id","div_Multi_DepArr"+newRowSeqNo);
											if ($jQ(lastManyBox).find("div.exemption").html() == undefined) {
												$jQ(lastManyBox).find("div.right").after("<div class=\"exemption\"><a href=\"#none\">구간제외</a></div>");
											}
											renumberOfMultiSeg();

											// 추가한 이후의 여정의 갯수가 6개인 경우 - '여정 추가 불가' div 구성
											if ($jQ('div[id^=div_Multi_DepArr]').length == 6) {
												$jQ('#div_add_multi_segment .addBox').css("display", "none");
												$jQ('#div_add_multi_segment .fullIntro').css("display", "");
											}

											// 새로 추가된 항목안의 모든요소를 반복 처리함.
											$jQ("*", lastManyBox).each(function() {
												if ($jQ(this).hasAttr('id') === true) {
													var id = $jQ(this).attr("id").replace(/[0-9]/g, '');
													$jQ(this).attr("id", id + newRowSeqNo);
												}
												if ($jQ(this).hasAttr('name') === true) {
													var name = $jQ(this).attr("name").replace(/[0-9]/g, '');
													$jQ(this).attr("name", name + newRowSeqNo);
												}
											});

											var hid_MT_DepArea = $jQ(lastManyBox).find('input[id^=hid_MT_DepArea]').attr("id");
											var txt_MT_DepAirport = $jQ(lastManyBox).find('input[id^=txt_MT_DepAirport]').attr("id");
											var hid_MT_DepAirport = $jQ(lastManyBox).find('input[id^=hid_MT_DepAirport]').attr("id");

											var hid_MT_ArrArea = $jQ(lastManyBox).find('input[id^=hid_MT_ArrArea]').attr("id");
											var txt_MT_ArrAirport = $jQ(lastManyBox).find('input[id^=txt_MT_ArrAirport]').attr("id");
											var hid_MT_ArrAirport = $jQ(lastManyBox).find('input[id^=hid_MT_ArrAirport]').attr("id");

											var btn_MT_DepAirport = $jQ(lastManyBox).find('input[id^=btn_MT_DepAirport]').attr("id");
											var btn_MT_ArrAirport = $jQ(lastManyBox).find('input[id^=btn_MT_ArrAirport]').attr("id");

											// 출/도착지 구성 - (이전 여정의 도착지를 출발지로 지정한다.)
											setMultiSegmentDepArr(hid_MT_DepArea, hid_MT_DepAirport, txt_MT_DepAirport, hid_MT_ArrArea, hid_MT_ArrAirport, txt_MT_ArrAirport, btn_MT_DepAirport, btn_MT_ArrAirport);
										});

										

									//]]>
									</script>
									<!-- 다구간 여정 처리 Script End -->




								  <div class="boxType01 reType03">
										<div class="personnelBox">
											<div class="tTitle">
												<strong>성인</strong>
												<div class="tripBox2 z1">
												
												</div>
											</div>
											<div class="selectBox2">
												<div  style="height: 28px;">
													<span class="span-select" style="height: 28px;">
													<select name="adultCount" id="adultCount" >
													  <option value="1">1명</option>
															<option value="2">2명</option>
															<option value="3">3명</option>
															<option value="4">4명</option>
															<option value="5">5명</option>
															<option value="6">6명</option>
															<option value="7">7명</option>
															<option value="8">8명</option>
															<option value="9">9명</option>
													</select>
												  </span>
											  </div>
												<!-- //layerPopup -->
											</div>

											<span class="cnT">(만 12세 이상)</span>
										</div>
										<div class="personnelBox">
											<div class="tTitle">
												<strong>소아</strong>
												<div class="tripBox2 z1">
												
												</div>
											</div>

											<div class="selectBox2">

												<div  style="height: 28px;">
													<span class="span-select" style="height: 28px;">
													<select name="childCount" title="소아 인원수" id="childCount" onchange="javascript:validateByValue('childCount', checkPaxCnt)">
													  <option value="0">0명</option>
															<option value="1">1명</option>
															<option value="2">2명</option>
															<option value="3">3명</option>
															<option value="4">4명</option>
															<option value="5">5명</option>
															<option value="6">6명</option>
															<option value="7">7명</option>
															<option value="8">8명</option>
															<option value="9">9명</option>
													</select>
													</span>
												</div>
												<!-- //layerPopup -->
											</div>

											<span class="cnT">(만 2세 ~ 12세 미만)</span>
										</div>
										<div class="personnelBox">
											<div class="tTitle">
												<strong>유아</strong>

											</div>

											<div class="selectBox2">
												<div style="height: 28px;">
													<span class="span-select" style="height: 28px;">
													<select name="infantCount" title="유아 인원수" id="infantCount" onchange="javascript:validateByValue('infantCount', checkPaxCnt)">
													  <option value="0">0명</option>
															<option value="1">1명</option>
															<option value="2">2명</option>
															<option value="3">3명</option>
															<option value="4">4명</option>
															<option value="5">5명</option>
															<option value="6">6명</option>
															<option value="7">7명</option>
															<option value="8">8명</option>
															<option value="9">9명</option>
													</select>
													</span>
												</div>
												<!-- //layerPopup -->
											</div>

											<span class="cnT">(만 2세 미만)</span>
										</div>
										<div class="personnelBox2">
											<p class="pText">* 좌석 점유 유아 탑승객은 소아<br> 좌석을 선택하시기 바랍니다.</p>
										</div>
								  </div>

									
									<dl class="itineraryKind line">
										<dt>클래스</dt>
										<dd>
											<input name="cabinClass" id="ra_class00" type="radio" checked="checked" value="T"> <label id="la_class00" for="ra_class00">트래블</label> <!--CR4-2 -->
											<input name="cabinClass" disabled="disabled" id="ra_class01" style="display: none;" type="radio" value="R"> <label id="la_class01" style="display: none;" for="ra_class01">트래블(할인운임)</label>
											<input name="cabinClass" id="ra_class02" type="radio" value="B"> <label for="ra_class02">비즈니스</label>
											<input name="cabinClass" id="ra_class03" type="radio" value="F"> <label for="ra_class03">퍼스트</label>
										</dd>
									</dl>
							  </div>
				</div>
							<!-- //여정을 선택하세요. -->
							<!-- //편도 다구간이용안내. -->
							<div class="foreignNotice" style="display: none;">
								<dl class="foreignNoticeInner">
									<dt><strong>편도/다구간 여정 이용 안내</strong></dt>
									<dd>편도 및 다구간 여정 시 국적에 따라 <span class="nPoint">경유지 및 목적지 출입국 시 비자를 소지하지 않을 경우에는 해당 국가로 출국이 거절될 수 있습니다. </span>무비자 입국이 가능한 나라일지라도 편도 입국은 불가하오니 반드시 해당 대사관을 통하여 확인하시기 바랍니다.</dd>
								</dl>
							</div>
							<ul class="btnBoxType01">
								<li><span ><a id="btnReset" href="javascript:;">다시 입력</a></span></li>
								<li class="right"><span ><a id="btnSendNext" href="javascript:;">조회하기</a></span></li>
							</ul>


							
  </div>
</form></div></div> <%@include file="../Common/footer.jsp" %></body>
</html>
<%@page import="Airline.DTO.Member"%>
<%@page import="Airline.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%


int adult = Integer.parseInt(request.getParameter("adult"));
int child = Integer.parseInt(request.getParameter("child"));
int infant = Integer.parseInt(request.getParameter("infant"));
int s_code = Integer.parseInt(request.getParameter("s_code"));
int s_code1 = Integer.parseInt(request.getParameter("s_code1"));
int agradeSum = Integer.parseInt(request.getParameter("agradeSum"));
int cgradeSum = Integer.parseInt(request.getParameter("cgradeSum"));
String seat_Class = request.getParameter("seat_Class");

String a_name = request.getParameter("a_name");
String an_name = request.getParameter("an_name");
String a_name1 = request.getParameter("a_name1");
String an_name1 = request.getParameter("an_name1");

String dep_city = request.getParameter("c_name");
String arr_city = request.getParameter("c_name1");

String arr_city1 = request.getParameter("c1_name1");
String dep_city1 = request.getParameter("c1_name");

String dep_day = request.getParameter("dep_day");
String arr_day = request.getParameter("arr_day");
String dep_time = request.getParameter("de_time");
String dep_time1 = request.getParameter("de_time1");

String f_time = request.getParameter("f_time");
String f_time1 = request.getParameter("f_time1");



%>


<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
  <script>
  function nextEdit() {
		document.frm.submit();
	};
  </script>
<link rel="stylesheet" type="text/css"
	href="/SwingFlow/Css/Common/Main.css" />
<style>
.cnt {
background: url("/SwingFlow/images/Airline/bl_hType01.gif") ;no-repeat 0 0;
width: 17px;
height: 17px;
text-align: center;
display: inline-block;
font-size: 11px;
color: #fff;
margin: 0 8px 0 0;
font-family: '돋움';
line-height: 20px;

-webkit-margin-before: 1.33em;
font-weight: bold;
}

.div_button
{
	margin-top:7px;
	width:700px;;
	text-align:center;
}

.bt_login
{
	width:80px;
	height:30px;
	font-size:12px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
		border:none;
	
}

#wrapper {
	width: 1200px;
}

#main_content {
	font-size:12px;
	font-family:Arial;
	width: 900px;
	float: left;
	margin-top: 25px;
	margin-left: 25px;
	
}

#main_content ul, #main_content ol {
	list-style-type: none;
	list-style-position: outside;
	list-style-image: none;
}

#main_content a {
	color: #000;
	text-decoration: none;
	cursor: pointer;
}

.hidden {
	width: 0px;
	height: 0px;
	line-height: 0;
	clear: both;
	visibility: hidden;
	position: absolute;
}

#skipCt {
	min-height: 650px;
}

.selectStyle {
	height: 30px;
	border-top-color: #999;
	border-right-color: #999;
	border-bottom-color: #999;
	border-left-color: #999;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	position: relative;
	z-index: 1;
	background-image: url("/images/select/bg_select_x.gif");
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
}

.selectStyle::after {
	clear: both;
	display: block;
	content: "";
}

.selectStyle * {
	vertical-align: top;
}

.selectStyle select {
	width: 115%;
	height: 20px;
	padding-top: 4px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	font-size: 12px;
	border-top-color: currentColor;
	border-right-color: currentColor;
	border-bottom-color: currentColor;
	border-left-color: currentColor;
	border-top-width: medium;
	border-right-width: medium;
	border-bottom-width: medium;
	border-left-width: medium;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.selectStyle span {
	width: 100%;
	height: 30px;
	overflow: hidden;
	display: block;
	position: relative;
}

.selectStyle span input[type='text'] {
	left: 0px;
	top: 0px;
	width: 100%;
	height: 30px;
	color: transparent;
	text-indent: -1500px;
	font-size: 12px;
	border-top-color: currentColor;
	border-right-color: currentColor;
	border-bottom-color: currentColor;
	border-left-color: currentColor;
	border-top-width: medium;
	border-right-width: medium;
	border-bottom-width: medium;
	border-left-width: medium;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
	position: absolute;
	z-index: -1;
	background-image: url("/images/select/arr_select.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 50%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.system_warning {
	color: #e32342;
	line-height: 20px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 21px;
	display: inline-block;
	background-image: url("/images/bl/blJ_noticeRed.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: left;
	background-position-y: 9px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnType02 {
	display: inline-block;
	background-image: url("/images/bg/bg_btnLeft2.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnType02 a {
	height: 22px;
	color: #4c4c4c;
	line-height: 22px;
	padding-top: 0px;
	padding-right: 29px;
	padding-bottom: 0px;
	padding-left: 13px;
	font-family: "돋움";
	font-size: 11px;
	display: block;
	background-image: url("/images/bg/bg_btnRight2.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnType06 {
	display: inline-block;
	background-image: url("/images/bg/bg_btnLeft6.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnType06 a {
	height: 22px;
	color: #4c4c4c;
	line-height: 22px;
	padding-top: 0px;
	padding-right: 35px;
	padding-bottom: 0px;
	padding-left: 8px;
	font-family: "돋움";
	font-size: 11px;
	display: block;
	background-image: url("/images/bg/bg_btnRight6.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnType14 {
	height: 23px;
	text-align: center;
	color: #333;
	line-height: 23px;
	padding-top: 0px;
	padding-right: 15px;
	padding-bottom: 0px;
	padding-left: 15px;
	border-top-color: #999;
	border-right-color: #999;
	border-bottom-color: #999;
	border-left-color: #999;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
	display: inline-block;
	background-image: url("/images/bg/bg_number.gif");
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.Bbtn_TType01_1 {
	display: inline-block;
	background-image: url("/images/bg/Bbtn_TTypeL01_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.Bbtn_TType01_1 a {
	height: 35px;
	color: #fff;
	line-height: 35px;
	padding-top: 0px;
	padding-right: 41px;
	padding-bottom: 0px;
	padding-left: 19px;
	font-size: 13px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/Bbtn_TTypeR01_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.btnBoxType01::after {
	clear: both;
	display: block;
	content: "";
}

.btnBoxType01 li {
	width: 48%;
	float: left;
}

.btnBoxType01 li.right {
	text-align: right;
	float: right;
}

#containerBox {
	background-image: url("/images/bg/bg_body1_1.jpg");
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: center;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

#containerBox #container {
	width: 956px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	position: relative;
}

#containerBox #container #containerBody {
	padding-top: 27px;
	padding-right: 0px;
	padding-bottom: 100px;
	padding-left: 50px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 195px;
	min-height: 780px;
}

#containerBox #container #containerBody h3.h3_type01 {
	color: #010101;
	line-height: 28px;
	font-family: "돋움";
	font-size: 24px;
	font-weight: normal;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 44px;
	margin-left: 0px;
}

.reservationBox#containerBox #container #containerBody {
	padding-top: 29px;
	padding-right: 40px;
	padding-bottom: 50px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 191px;
	margin-bottom: 0px;
	margin-left: 0px;
	min-height: 650px;
}

.reservationBox#containerBox #container #expandBox {
	top: 32px;
	width: 191px;
	right: -231px;
	position: absolute;
	z-index: 9;
}

.reservationBox#containerBox #container #expandBox .expandBoxTop {
	padding-top: 15px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 10px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_expandBoxTop.png");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox#containerBox #container #expandBox .expandInner {
	padding-top: 0px;
	padding-right: 20px;
	padding-bottom: 0px;
	padding-left: 0px;
	background-image: url("/images/bg/bg_expandBoxBottom.png");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
}

.reservationBox .rv_stepBox {
	width: 956px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}

.reservationBox .rv_stepBox::after {
	clear: both;
	display: block;
	content: "";
}

.reservationBox .rv_stepBox li {
	height: 30px;
	color: #808080;
	line-height: 12px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 9px;
	margin-left: -2px;
	float: left;
}

.reservationBox .rv_stepBox li.step01_end {
	width: 161px;
	color: #5d6067;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 18px;
	font-weight: normal;
	margin-left: -1px;
	background-image: url("/images/bg/bg_rvStep01_end.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .rv_stepBox li.step02_end {
	width: 179px;
	color: #5d6067;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 18px;
	font-weight: normal;
	margin-left: -2px;
	background-image: url("/images/bg/bg_rvStep02_end.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .rv_stepBox li.step03_on {
	width: 154px;
	color: #5d6067;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 43px;
	font-weight: bold;
	background-image: url("/images/bg/bg_rvStep03_on.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .rv_stepBox li.step04_off {
	width: 184px;
	color: #5d6067;
	font-weight: normal;
	background-image: url("/images/bg/bg_rvStep04_off.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .rv_stepBox li.step05_off {
	width: 189px;
	color: #5d6067;
	font-weight: normal;
	margin-left: -3px;
	background-image: url("/images/bg/bg_rvStep05_off.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .helpOp {
	text-align: right;
	margin-top: 0px;
	margin-right: -231px;
	margin-bottom: 19px;
	margin-left: 0px;
}

.reservationBox .helpOp .btnType06 a {
	padding-right: 41px;
}

.reservationBox .Sqna {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 11px;
	padding-left: 14px;
}

.reservationBox .Sqna dt {
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 15px;
	margin-left: 0px;
}

.reservationBox .Sqna dd {
	line-height: 18px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 26px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 8px;
	margin-left: 0px;
	background-image: url("/images/bl/bl_q.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 2px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .Sqna dd.btnEtc {
	padding-top: 17px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.notice_container {
	width: auto;
	padding-top: 9px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	background-image: url("/images/bg/bg_noticeTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.mrType01.notice_container {
	margin-top: 10px;
	margin-bottom: 11px;
}

.notice_container .notice_Inner {
	width: 725px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 14px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 100px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_noticeBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.notice_container .innerType01.notice_Inner {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 6px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}

.notice_container .innerType01.notice_Inner .notice li {
	line-height: 21px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 4px;
	padding-left: 39px;
}

.notice_container .notice_Inner .notice li {
	line-height: 24px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 39px;
	background-image: url("/images/bl/bl_notice.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 14px;
	background-position-y: 3px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .itineraryBoxPs {
	position: relative;
}

.reservationBox .errorBox {
	width: 966px;
	padding-top: 14px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: -11px;
	margin-right: 0px;
	margin-bottom: 18px;
	margin-left: -10px;
	background-image: url("/images/bg/bg_errorBoxTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .errorBox .errorInner {
	color: #333;
	padding-top: 0px;
	padding-right: 35px;
	padding-bottom: 23px;
	padding-left: 106px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bg/bg_errorBoxBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .errorBox .errorInner .noticeBl {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 2px;
	padding-left: 67px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: -69px;
	min-height: 52px;
	background-image: url("/images/bg/bg_noticeBlType01.png");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 6px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .errorBox .errorInner .noticeBl p {
	line-height: 26px;
	font-size: 13px;
}

.reservationBox .errorBox .errorInner .noticeBl span {
	line-height: 15px;
}

.reservationBox#containerBox #container .fareBox.itineraryBoxPs #expandBox
	{
	top: 0px;
}

.reservationBox .fareBox.itineraryBoxPs {
	position: relative;
	z-index: 10;
}

.reservationBox .selectITbox3 {
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 10px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_selectItineraryTop2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 16px;
	padding-left: 0px;
	background-image: url("/images/bg/bg_selectItineraryBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
}

.reservationBox .selectITbox3 .selectITinner3 ul::after {
	clear: both;
	display: block;
	content: "";
}

.reservationBox .selectITbox3 .selectITinner3 li.liType01 {
	padding-top: 14px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	font-family: "돋움";
	font-size: 11px;
	float: left;
	background-image: url("/images/bg/bg_line2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 .sTitle {
	color: #581cb4;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 {
	width: 287px;
	padding-left: 20px;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD
	{
	line-height: 19px;
	margin-top: 9px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: -1px;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD::after
	{
	clear: both;
	display: block;
	content: "";
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD strong
	{
	font-family: "돋움";
	font-size: 16px;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD strong
	{
	font-family: "돋움";
	font-size: 16px;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD .start,
	.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD .end
	{
	font-size: 12px;
	float: left;
	min-width: 86px;
}

.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD .end
	{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 33px;
	background-image: url("/images/bg/bg_arrow5.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 3px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 {
	line-height: 18px;
	font-family: "굴림";
	font-size: 12px;
	margin-top: 6px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 span * {
	vertical-align: middle;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 span a {
	font-family: "돋움";
	font-size: 11px;
	text-decoration: underline;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi {
	display: inline-block;
	position: relative;
	z-index: 10;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2
	{
	left: 0px;
	top: 0px;
	width: 310px;
	text-align: left;
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	display: none;
	position: absolute;
	z-index: 100;
	background-image: url("/images/bg/bg_abroadTop10.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .abroadInner
	{
	padding-top: 0px;
	padding-right: 1px;
	padding-bottom: 17px;
	padding-left: 1px;
	background-image: url("/images/bg/bg_abroadBottom10.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .abroadInner .aTitle
	{
	line-height: 19px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 13px;
	margin-top: 0px;
	margin-right: 5px;
	margin-bottom: 18px;
	margin-left: 5px;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(232, 232, 247);
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .abroadInner .aTitle p strong
	{
	color: #201cb4;
	font-family: "돋움";
	font-size: 11px;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .abroadInner .abroadCt
	{
	color: #201cb4;
	line-height: 15px;
	padding-top: 7px;
	padding-right: 20px;
	padding-bottom: 0px;
	padding-left: 20px;
	font-family: "돋움";
	font-size: 11px;
	border-top-color: #d2d2f0;
	border-top-width: 1px;
	border-top-style: solid;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .abroadInner .abroadCt a
	{
	color: #201cb4;
	font-family: "돋움";
	font-size: 11px;
	text-decoration: underline;
}

.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi .abroadBox2 .btn_close
	{
	top: 10px;
	right: 11px;
	position: absolute;
}

.reservationBox .selectITbox3 .selectITinner3 li.selectStart.liType01 {
	width: 144px;
	padding-left: 6px;
}

.reservationBox .selectITbox3 .selectITinner3 li.selectEnd.liType01 {
	width: 143px;
	padding-left: 6px;
}

.reservationBox .selectITbox3 .selectITinner3 li.selectSeat.liType01 {
	width: 109px;
	padding-left: 6px;
}

.reservationBox .passengerBox {
	margin-top: 30px;
	position: relative;
}

.reservationBox .z1.passengerBox {
	z-index: 5;
}

.reservationBox .z2.passengerBox {
	z-index: 4;
}

.reservationBox .z3.passengerBox {
	margin-bottom: 30px;
	z-index: 3;
}

.reservationBox .mB11.passengerBox {
	margin-top: 30px;
	margin-right: 0px;
	margin-bottom: 11px;
	margin-left: 0px;
}

.reservationBox .passengerBox .h4_type01 {
	height: 17px;
	text-align: left;
	color: #581cb4;
	line-height: 17px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 27px;
	font-size: 14px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 16px;
	margin-left: 0px;
	background-image: url("/images/bl/bl_hType01.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: center;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner {
	margin-top: -1px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	border-top-color: #5c5f66;
	border-bottom-color: #adafb2;
	border-top-width: 1px;
	border-bottom-width: 1px;
	border-top-style: solid;
	border-bottom-style: solid;
	position: relative;
	width: 725px;
}

.reservationBox .passengerInner .essentialText {
	top: -23px;
	right: 9px;
	color: #666;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 10px;
	font-family: "돋움";
	font-size: 11px;
	position: absolute;
	background-image: url("/images/bl/bl_arrow4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: center;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .sTitle {
	text-align: left;
	color: #581cb4;
	line-height: 33px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 9px;
	font-size: 13px;
	border-bottom-color: #5c5f66;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}

.reservationBox .passengerInner .passengerBody {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 99px;
	position: relative;
	background-image: url("/images/bg/bg_tableBox.gif");
	background-attachment: scroll;
	background-repeat: repeat-y;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .pCnt {
	left: 9px;
	top: 10px;
	width: 25px;
	height: 24px;
	text-align: center;
	color: #581cb4;
	line-height: 25px;
	display: block;
	position: absolute;
	background-image: url("/images/bg/bg_cnt3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph {
	border-bottom-color: #d9d9d9;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}

.reservationBox .passengerInner .passengerBody .entryBox .bB0.paragraph
	{
	border-bottom-color: currentColor;
	border-bottom-width: medium;
	border-bottom-style: none;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph::after
	{
	clear: both;
	display: block;
	content: "";
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph * {
	vertical-align: middle;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .text,
	.reservationBox .passengerInner .passengerBody .entryBox .paragraph .entry
	{
	line-height: 23px;
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 0px;
	float: left;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox
	{
	left: 152px;
	top: -4000px;
	width: 553px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	position: absolute;
	z-index: 105;
	background-image: url("/images/bg/bg_hoverBoxTop4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .ffpLayer.hoverBox
	{
	left: 429px;
	width: 248px;
	background-image: url("/images/bg/bg_hoverBoxTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .ffpLayer.hoverBox .hoverInner
	{
	background-image: url("/images/bg/bg_hoverBoxBody.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .ffpLayer.hoverBox .hoverInner .hoverCt
	{
	background-image: url("/images/bg/bg_hoverBoxBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner
	{
	background-image: url("/images/bg/bg_hoverBoxBody4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripTitle,
	.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripSubT,
	.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .dType
	{
	font-family: "돋움";
	font-size: 11px;
	margin-top: 0px;
	margin-right: 6px;
	margin-bottom: 0px;
	margin-left: 16px;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripTitle
	{
	color: #581cb4;
	line-height: 19px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 12px;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(232, 232, 247);
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripTitle strong
	{
	font-family: "돋움";
	font-size: 11px;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripSubT
	{
	color: #333;
	line-height: 16px;
	padding-top: 6px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 12px;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .hoverCt
	{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 20px;
	padding-left: 0px;
	background-image: url("/images/bg/bg_hoverBoxBottom4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .text
	{
	width: 155px;
	position: relative;
	z-index: 103;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .text .essentialImg
	{
	left: -10px;
	top: 14px;
	position: absolute;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .entry
	{
	width: 471px;
	position: relative;
	min-height: 17px;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .z1.entry
	{
	z-index: 105;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .z2.entry
	{
	z-index: 104;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .z3.entry
	{
	z-index: 103;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .z4.entry
	{
	z-index: 102;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .rdType.entry label
	{
	margin-top: 0px;
	margin-right: 28px;
	margin-bottom: 0px;
	margin-left: 0px;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .entry .text01
	{
	width: 175px;
	height: 23px;
	line-height: 23px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 3px;
	border-top-color: #999;
	border-right-color: #999;
	border-bottom-color: #999;
	border-left-color: #999;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
}

.reservationBox .passengerInner .passengerBody .entryBox .paragraph .entry .ffp
	{
	top: 2px;
	color: #5e14cc;
	font-family: "돋움";
	font-size: 11px;
	position: relative;
}

.reservationBox .passengerInner .passengerBody .entryBox .double.paragraph .gap-1.text
	{
	width: 155px;
}

.reservationBox .passengerInner .passengerBody .entryBox .double.paragraph .gap-2.text
	{
	width: 100px;
}

.reservationBox .passengerInner .passengerBody .entryBox .double.paragraph .entry
	{
	width: 184px;
}

.reservationBox .passengerInner .passengerCt {
	border-bottom-color: #d9d9d9;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}

.reservationBox .passengerInner .bB0.passengerCt {
	border-bottom-color: currentColor;
	border-bottom-width: medium;
	border-bottom-style: none;
}

.reservationBox .passengerInner .passengerCt::after {
	clear: both;
	display: block;
	content: "";
}

.reservationBox .passengerInner .passengerCt .text {
	width: 100px;
	padding-top: 10px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	float: left;
}

.reservationBox .passengerInner .passengerCt .text strong {
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 10px;
	background-image: url("/images/bl/bl_arrow4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 3px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerCt .text strong.noBG {
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .passengerInner .passengerCt .entry {
	width: 620px;
	float: left;
}

.reservationBox .passengerInner .passengerCt .entry div {
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 0px;
}

.reservationBox .passengerInner .passengerCt .entry div * {
	vertical-align: middle;
}

.reservationBox .passengerInner .passengerCt .entry div .text01 {
	height: 23px;
	color: #808080;
	line-height: 23px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 3px;
	border-top-color: #999;
	border-right-color: #999;
	border-bottom-color: #999;
	border-left-color: #999;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-left-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	border-left-style: solid;
}

.reservationBox .passengerInner .passengerCt .entry div .number {
	width: 47px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 11px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: -5px;
}

.reservationBox .noticeList li {
	color: #666;
	line-height: 18px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 14px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bl/bl_ck.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: -1px;
	background-position-y: 5px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

#containerBox {
	background-image: url("/images/bg/bg_body1_1.jpg");
	background-attachment: scroll;
	background-repeat: repeat-x;
	background-position-x: center;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
</style>
</head>
<body id="ALPI">
	<form name="frm" action="R5_FareComfirm.jsp">
		<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	
		
		
		<div id="wrapper">

			<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

			<div id="main_content">



				<div id="wrap_container">
					<section id="main_container">
					<div class="reservationBox" id="containerBox">
						<div id="container">

							<div id="skipCt">


								<!-- section -->

								<section id="containerBody">

		
<p><span class="cnt"></span><strong style="color:#5e14cc"> 탑승자 확인</strong></p>


								<div class="itineraryBoxPs fareBox">


									<div class="fareInner">

<input type="hidden" value="<%=s_code%>" name="s_code">
<input type="hidden" value="<%=s_code1%>" name="s_code1">
<input type="hidden" value="<%=agradeSum%>" name="agradeSum">
<input type="hidden" value="<%=cgradeSum%>" name="cgradeSum">
<input type="hidden" value="<%=seat_Class%>" name="seat_Class">

<input type="hidden" value="<%=adult%>" name="adult">
<input type="hidden" value="<%=child%>" name="child">
<input type="hidden" value="<%=infant%>" name="infant">
<input type="hidden" value="<%=a_name%>" name="a_name">
<input type="hidden" value="<%=an_name%>" name="an_name">

<input type="hidden" value="<%=a_name1%>" name="a_name1">
<input type="hidden" value="<%=an_name1%>" name="an_name1">
<input type="hidden" value="<%=dep_city%>" name="dep_city">
<input type="hidden" value="<%=arr_city%>" name="arr_city">
<input type="hidden" value="<%=dep_city1%>" name="arr_city1">

<input type="hidden" value="<%=dep_day%>" name="dep_day">
<input type="hidden" value="<%=arr_day%>" name="arr_day">
<input type="hidden" value="<%=dep_time%>" name="dep_time">
<input type="hidden" value="<%=arr_city%>" name="arr_city">
<input type="hidden" value="<%=dep_time1%>" name="dep_time1">

<input type="hidden" value="<%=f_time%>" name="f_time">
<input type="hidden" value="<%=f_time1%>" name="f_time1">


										<!-- selectITbox3 -->
										

										<!-- //selectITbox3 -->




										<!-- notice_container -->


										


										<!-- //notice_container -->

	
<%
		String mid = (String)session.getAttribute("MemberId");
		ClientDAO dao = ClientDAO.getInstance();
Member dto = new Member();
dto = dao.memberSel(mid);
// int gcode = dto.getScode();
// if(gcode==1){
	
	
// }

%>

										<div class="passengerBox z1" style="z-index: 200;">


											<h4 class="h4_type01">탑승자 정보</h4>
											<div class="passengerInner" style="z-index: 90;">

												<p class="sTitle">
													<strong>성인</strong>
												</p>


												<div class="passengerBody">

													<span class="hidden">탑승자</span><strong class="pCnt"><%=1 %></strong><span
														class="hidden">성인</span> <input name="paxType1"
														type="hidden" value="ADT" />

													<div class="entryBox">



														<div class="paragraph double">


															<div class="text gap-1">
																<label for="tt_name1_1"><strong>이름</strong>
																	</label>
															</div>


															<div class="entry z2">
<!-- 패밀리 라스트네임 ==========================================================================================-->
																<input name="lName" class="text01"
																	id="familyName1"
																	style="width: 153px; text-transform: uppercase; ime-mode: disabled;"
																	 type="text"
																	value="<%=dto.getMname()%>" />

															</div>





														</div>




														<div class="paragraph">


															<div class="text">
																<strong>성별</strong>
															</div>


															<div class="entry z3">
                                                               <% if(dto.getScode()==1){ %>
																<input name="gender" id="paxGender1" type="radio"
																	checked="checked" value="M" /> <label for="paxGender1">남</label>
																<input name="gender" id="paxGender2" type="radio"
																	value="F" /> <label for="paxGender2">여</label>
																<%}else{%>
																<input name="gender" id="paxGender1" type="radio"
																	 value="M" /> <label for="paxGender1">남</label>
																<input name="gender" id="paxGender2" type="radio"
																	value="F" checked="checked" /> <label for="paxGender2">여</label>
																<% } %>
															</div>


														</div>



														<div class="paragraph bB0">


															<div class="text">

																<strong>회원번호</strong>
																<!-- hover -->


																<div class="hoverBox IDhoverOpen">


																	<div class="hoverInner">


																		<div class="hoverCt">


																			<p class="tripTitle">
																				<strong>마일리지 적립항공사</strong>
																			</p>


																			<p class="tripSubT">

																				* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br /> *
																				마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
																				* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다.

																			</p>


																		</div>


																	</div>


																</div>


																<!-- //hover -->


															</div>


															<div class="entry">

<!--  여권 번호 ====================================================================================-->
																<input name="mNo" title="회원번호"
																	class="text01 inputFocusin01" id="ffpNo1"
																	 type="text"
																	maxlength="9" value="000<%=dto.getMno() %>" /> <span class="ffp"></span>
																<!-- hover -->
																<span class="system_warning" id="warningffpNo1"
																	style="display: none;">회원번호 오류</span>

																<!-- //hover -->


															</div>


														</div>


													</div>


												</div>


											</div>

<%

for(int i=1; i < adult;i++){
	
%>
<!-- 성인 START===============================================================-->

											<div class="passengerInner" style="z-index: 90;">

												<p class="sTitle">
													<strong>성인</strong>
												</p>


												<div class="passengerBody">

													<span class="hidden">탑승자</span><strong class="pCnt"><%=i+1 %></strong><span
														class="hidden">성인</span> <input name="paxType1"
														type="hidden" value="ADT" />

													<div class="entryBox">



														<div class="paragraph double">


															<div class="text gap-1">
																<label for="tt_name1_1"><strong>이름</strong>
																</label>
															</div>


															<div class="entry z2">
<!-- 패밀리 라스트네임 ==========================================================================================-->
																<input name="lName" class="text01"
																	id="familyName1"
																	style="width: 153px; text-transform: uppercase; ime-mode: disabled;"
																	 type="text"
																	value="" placeholder="이름"/>

															</div>





														</div>




														<div class="paragraph">


															<div class="text">
																<strong>성별</strong>
															</div>


															<div class="entry z3">
                                                                    
																<input name="gender" id="paxGender1" type="radio"
																	checked="" value="M" /> <label for="paxGender1">남</label>
																<input name="gender" id="paxGender2" type="radio"
																	value="F" /> <label for="paxGender2">여</label>

															</div>


														</div>



														<div class="paragraph bB0">


															<div class="text">

																<strong>회원번호</strong>
																<!-- hover -->


																<div class="hoverBox IDhoverOpen">


																	<div class="hoverInner">


																		<div class="hoverCt">


																			<p class="tripTitle">
																				<strong>마일리지 적립항공사</strong>
																			</p>


																			<p class="tripSubT">

																				* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br /> *
																				마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
																				* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다.

																			</p>


																		</div>


																	</div>


																</div>


																<!-- //hover -->


															</div>


															<div class="entry">

<!--  여권 번호 ====================================================================================-->
																<input name="passport" title="회원번호"
																	class="text01 inputFocusin01" id="ffpNo1"
																	 type="text"
																	maxlength="9" value="" placeholder="회원인 경우 입력" /> <span class="ffp"></span>
																<!-- hover -->
																<span class="system_warning" id="warningffpNo1"
																	style="display: none;">회원번호 오류</span>

																<!-- //hover -->


															</div>


														</div>


													</div>


												</div>


											</div> <%} %>
<!-- 성인 END ===============================================================-->
<%

for(int i=0; i < child;i++){
	
%>
											<div class="passengerInner" style="z-index: 90;">

												<p class="sTitle">
													<strong>소아</strong>
												</p>


												<div class="passengerBody">

													<span class="hidden">탑승자</span><strong class="pCnt"><%=i+1 %></strong><span
														class="hidden">성인</span> <input name="paxType1"
														type="hidden" value="ADT" />

													<div class="entryBox">



														<div class="paragraph double">


															<div class="text gap-1">
																<label for="tt_name1_1"><strong>이름</strong>
																	</label>
															</div>


															<div class="entry z2">
<!-- 패밀리 라스트네임 ==========================================================================================-->
																<input name="child_lName" class="text01"
																	id="familyName1"
																	style="width: 153px; text-transform: uppercase; ime-mode: disabled;"
																	 type="text"
																	value="" placeholder="이름"/>

															</div>




														</div>




														<div class="paragraph">


															<div class="text">
																<strong>성별</strong>
															</div>


															<div class="entry z3">

																<input name="child_gender" id="paxGender1" type="radio"
																	checked="checked" value="M" /> <label for="paxGender1">남</label>
																<input name="child_gender" id="paxGender2" type="radio"
																	value="F" /> <label for="paxGender2">여</label>

															</div>


														</div>



														<div class="paragraph bB0">


															<div class="text">

																<strong>회원번호</strong>
																<!-- hover -->


																<div class="hoverBox IDhoverOpen">


																	<div class="hoverInner">


																		<div class="hoverCt">


																			<p class="tripTitle">
																				<strong>마일리지 적립항공사</strong>
																			</p>


																			<p class="tripSubT">

																				* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br /> *
																				마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
																				* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다.

																			</p>


																		</div>


																	</div>


																</div>


																<!-- //hover -->


															</div>


															<div class="entry">

<!--  여권 번호 ====================================================================================-->
																<input name="child_passport" title="회원번호"
																	class="text01 inputFocusin01" id="ffpNo1"
																	 type="text"
																	maxlength="9" value="" placeholder="회원인 경우 입력"/> <span class="ffp"></span>
																<!-- hover -->
																<span class="system_warning" id="warningffpNo1"
																	style="display: none;">회원번호 오류</span>

																<!-- //hover -->


															</div>


														</div>


													</div>


												</div>


											</div> <%} %>
<!-- 소아 END ===============================================================-->
<%
for(int i=0; i<infant; i++){
	
%>
											<div class="passengerInner" style="z-index: 90;">

												<p class="sTitle">
													<strong>유아</strong>
												</p>


												<div class="passengerBody">

													<span class="hidden">탑승자</span><strong class="pCnt"><%=i+1 %></strong><span
														class="hidden">성인</span> <input name="paxType1"
														type="hidden" value="ADT" />

													<div class="entryBox">



														<div class="paragraph double">


															<div class="text gap-1">
																<label for="tt_name1_1"><strong>성</strong>(family
																	name)</label>
															</div>


															<div class="entry z2">
<!-- 패밀리 라스트네임 ==========================================================================================-->
																<input name="infant_lName" class="text01"
																	id="familyName1"
																	style="width: 153px; text-transform: uppercase; ime-mode: disabled;"
																	 type="text"
																	value="" placeholder="이름" />

															</div>



														</div>




														<div class="paragraph">


															<div class="text">
																<strong>성별</strong>
															</div>


															<div class="entry z3">

																<input name="infant_gender" id="paxGender1" type="radio"
																	checked="" value="M" /> <label for="paxGender1">남</label>
																<input name="infant_gender" id="paxGender2" type="radio"
																	value="F" /> <label for="paxGender2">여</label>

															</div>


														</div>



														<div class="paragraph bB0">


															<div class="text">

																<strong>회원번호</strong>
																<!-- hover -->


																<div class="hoverBox IDhoverOpen">


																	<div class="hoverInner">


																		<div class="hoverCt">


																			<p class="tripTitle">
																				<strong>마일리지 적립항공사</strong>
																			</p>


																			<p class="tripSubT">

																				* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br /> *
																				마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
																				* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다.

																			</p>


																		</div>


																	</div>


																</div>


																<!-- //hover -->


															</div>


															<div class="entry">

<!--  여권 번호 ====================================================================================-->
																<input name="infant_passport" title="회원번호"
																	class="text01 inputFocusin01" id="ffpNo1"
																	 type="text"
																	maxlength="9" value="" placeholder="회원인 경우 입력"/> <span class="ffp"></span>
																<!-- hover -->
																<span class="system_warning" id="warningffpNo1"
																	style="display: none;">회원번호 오류</span>

																<!-- //hover -->


															</div>


														</div>


													</div>


												</div>


											</div> <%} %>
<!-- 유아 END ===============================================================-->

							<p>&nbsp;</p>
<div>
    <div class="div_button">
	<input type="submit" value="이전단계" class="bt_login"/>
	
  	<input type="button" value="계속하기" id="FareComfirm" class="bt_login" onClick="nextEdit();"/>
</div>
</div>							


						</div>
					</div>
					</section>
				</div>
			</div>
		</div>
		</section>
		</div>
		</div>
		</div>
		<jsp:include page="/Category/Common/footer.jsp"></jsp:include>


	</form>
</body>
</html>
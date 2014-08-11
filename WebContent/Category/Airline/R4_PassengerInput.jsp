<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
body, table, input, textarea, select, button
{
	font-size: 12px;
}
header, section, article, footer, nav, aside
{
	display: block;
}
*
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
body, input, textarea, select, table, button
{
	line-height: normal;
	font-family: gulim, helvetica, sans-serif;
	font-size: 12px;
	font-style: normal;
	font-variant: normal;
	font-weight: normal;
	font-size-adjust: none;
	font-stretch: normal;
}
caption, legend, #accessibility, .hidden
{
	line-height: 0;
	text-indent: -5000px;
	font-size: 0px;
}
input
{
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-right-radius: 0px;
	border-bottom-left-radius: 0px;
}
img, fieldset, iframe
{
	vertical-align: top;
	border-top-color: currentColor;
	border-right-color: currentColor;
	border-bottom-color: currentColor;
	border-left-color: currentColor;
	border-top-width: 0px;
	border-right-width: 0px;
	border-bottom-width: 0px;
	border-left-width: 0px;
	border-top-style: none;
	border-right-style: none;
	border-bottom-style: none;
	border-left-style: none;
}
ul, ol
{
	list-style-type: none;
	list-style-position: outside;
	list-style-image: none;
}
a
{
	color: #000;
	text-decoration: none;
	cursor: pointer;
}
.hidden
{
	width: 0px;
	height: 0px;
	line-height: 0;
	clear: both;
	visibility: hidden;
	position: absolute;
}
#skipCt
{
	min-height: 650px;
}
.selectStyle
{
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
.selectStyle::after
{
	clear: both;
	display: block;
	content: "";
}
.selectStyle *
{
	vertical-align: top;
}
.selectStyle select
{
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
.selectStyle span
{
	width: 100%;
	height: 30px;
	overflow: hidden;
	display: block;
	position: relative;
}
.selectStyle span input[type='text']
{
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
.system_warning
{
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
.btnType02
{
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
.btnType02 a
{
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
.btnType06
{
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
.btnType06 a
{
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
.btnType14
{
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
.Bbtn_TType01_1
{
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
.Bbtn_TType01_1 a
{
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
.btnBoxType01::after
{
	clear: both;
	display: block;
	content: "";
}
.btnBoxType01 li
{
	width: 48%;
	float: left;
}
.btnBoxType01 li.right
{
	text-align: right;
	float: right;
}
#containerBox
{
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
#containerBox #container
{
	width: 956px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 0px;
	margin-left: auto;
	position: relative;
}
#containerBox #container #containerBody
{
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
#containerBox #container #containerBody h3.h3_type01
{
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
.reservationBox#containerBox #container #containerBody
{
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
.reservationBox#containerBox #container #expandBox
{
	top: 32px;
	width: 191px;
	right: -231px;
	position: absolute;
	z-index: 9;
}
.reservationBox#containerBox #container #expandBox .expandBoxTop
{
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
.reservationBox#containerBox #container #expandBox .expandInner
{
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
.reservationBox .rv_stepBox
{
	width: 956px;
	margin-top: 0px;
	margin-right: auto;
	margin-bottom: 10px;
	margin-left: auto;
}
.reservationBox .rv_stepBox::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .rv_stepBox li
{
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
.reservationBox .rv_stepBox li.step01_end
{
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
.reservationBox .rv_stepBox li.step02_end
{
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
.reservationBox .rv_stepBox li.step03_on
{
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
.reservationBox .rv_stepBox li.step04_off
{
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
.reservationBox .rv_stepBox li.step05_off
{
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
.reservationBox .helpOp
{
	text-align: right;
	margin-top: 0px;
	margin-right: -231px;
	margin-bottom: 19px;
	margin-left: 0px;
}
.reservationBox .helpOp .btnType06 a
{
	padding-right: 41px;
}
.reservationBox .Sqna
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 11px;
	padding-left: 14px;
}
.reservationBox .Sqna dt
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 15px;
	margin-left: 0px;
}
.reservationBox .Sqna dd
{
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
.reservationBox .Sqna dd.btnEtc
{
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
.notice_container
{
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
.mrType01.notice_container
{
	margin-top: 10px;
	margin-bottom: 11px;
}
.notice_container .notice_Inner
{
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
.notice_container .innerType01.notice_Inner
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 6px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.notice_container .innerType01.notice_Inner .notice li
{
	line-height: 21px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 4px;
	padding-left: 39px;
}
.notice_container .notice_Inner .notice li
{
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
.reservationBox .itineraryBoxPs
{
	position: relative;
}
.reservationBox .errorBox
{
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
.reservationBox .errorBox .errorInner
{
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
.reservationBox .errorBox .errorInner .noticeBl
{
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
.reservationBox .errorBox .errorInner .noticeBl p
{
	line-height: 26px;
	font-size: 13px;
}
.reservationBox .errorBox .errorInner .noticeBl span
{
	line-height: 15px;
}
.reservationBox#containerBox #container .fareBox.itineraryBoxPs #expandBox
{
	top: 0px;
}
.reservationBox .fareBox.itineraryBoxPs
{
	position: relative;
	z-index: 10;
}
.reservationBox .selectITbox3
{
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
.reservationBox .selectITbox3 .selectITinner3
{
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
.reservationBox .selectITbox3 .selectITinner3 ul::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .selectITbox3 .selectITinner3 li.liType01
{
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
.reservationBox .selectITbox3 .selectITinner3 .sTitle
{
	color: #581cb4;
}
.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01
{
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
.reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD .start, .reservationBox .selectITbox3 .selectITinner3 li.totalIntro.liType01 .tBoxD .end
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
.reservationBox .selectITbox3 .selectITinner3 .pType01
{
	line-height: 18px;
	font-family: "굴림";
	font-size: 12px;
	margin-top: 6px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .selectITbox3 .selectITinner3 .pType01 span *
{
	vertical-align: middle;
}
.reservationBox .selectITbox3 .selectITinner3 .pType01 span a
{
	font-family: "돋움";
	font-size: 11px;
	text-decoration: underline;
}
.reservationBox .selectITbox3 .selectITinner3 .pType01 .abPosi
{
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
.reservationBox .selectITbox3 .selectITinner3 li.selectStart.liType01
{
	width: 144px;
	padding-left: 6px;
}
.reservationBox .selectITbox3 .selectITinner3 li.selectEnd.liType01
{
	width: 143px;
	padding-left: 6px;
}
.reservationBox .selectITbox3 .selectITinner3 li.selectSeat.liType01
{
	width: 109px;
	padding-left: 6px;
}
.reservationBox .passengerBox
{
	margin-top: 30px;
	position: relative;
}
.reservationBox .z1.passengerBox
{
	z-index: 5;
}
.reservationBox .z2.passengerBox
{
	z-index: 4;
}
.reservationBox .z3.passengerBox
{
	margin-bottom: 30px;
	z-index: 3;
}
.reservationBox .mB11.passengerBox
{
	margin-top: 30px;
	margin-right: 0px;
	margin-bottom: 11px;
	margin-left: 0px;
}
.reservationBox .passengerBox .h4_type01
{
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
.reservationBox .passengerInner
{
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
}
.reservationBox .passengerInner .essentialText
{
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
.reservationBox .passengerInner .sTitle
{
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
.reservationBox .passengerInner .passengerBody
{
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
.reservationBox .passengerInner .passengerBody .pCnt
{
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
.reservationBox .passengerInner .passengerBody .entryBox .paragraph
{
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
.reservationBox .passengerInner .passengerBody .entryBox .paragraph *
{
	vertical-align: middle;
}
.reservationBox .passengerInner .passengerBody .entryBox .paragraph .text, .reservationBox .passengerInner .passengerBody .entryBox .paragraph .entry
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
.reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripTitle, .reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .tripSubT, .reservationBox .passengerInner .passengerBody .entryBox .paragraph .hoverBox .hoverInner .dType
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
.reservationBox .passengerInner .passengerCt
{
	border-bottom-color: #d9d9d9;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}
.reservationBox .passengerInner .bB0.passengerCt
{
	border-bottom-color: currentColor;
	border-bottom-width: medium;
	border-bottom-style: none;
}
.reservationBox .passengerInner .passengerCt::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .passengerInner .passengerCt .text
{
	width: 100px;
	padding-top: 10px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	float: left;
}
.reservationBox .passengerInner .passengerCt .text strong
{
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
.reservationBox .passengerInner .passengerCt .text strong.noBG
{
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
.reservationBox .passengerInner .passengerCt .entry
{
	width: 620px;
	float: left;
}
.reservationBox .passengerInner .passengerCt .entry div
{
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 5px;
	padding-left: 0px;
}
.reservationBox .passengerInner .passengerCt .entry div *
{
	vertical-align: middle;
}
.reservationBox .passengerInner .passengerCt .entry div .text01
{
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
.reservationBox .passengerInner .passengerCt .entry div .number
{
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
.reservationBox .noticeList li
{
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
#containerBox
{
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

</style></head>
<body id="ALPI"><form id="frm" method="post"><div id="wrap_container"><section id="main_container"><div class="reservationBox" id="containerBox"><div id="container">

<div id="skipCt">
 
 					
 <!-- section -->
 
 					<section id="containerBody">
 						
 <h3 class="h3_type01">
  국제선 예매
 </h3>
 
 						
 <ul class="rv_stepBox">
   <li class="step03_on">
     <p class="hidden">
       현재
       </p>
     3. 여정/탑승자 확인
   </li>
 </ul>
 
 						
 <div class="itineraryBoxPs fareBox">
  
  							
  <div class="fareInner">
   
   							
   								
   <!-- selectITbox3 -->
   
   								<table width="556" height="154" border="1" cellpadding="0" cellspacing="0">
  <tr>
    <td width="66" height="53">인천 </td>
    <td width="35">&lt;=&gt;</td>
    <td width="207"> 도쿄/나리타</td>
    <td width="95">가는 날</td>
    <td width="95">오는 날</td>
    <td width="44">좌석</td>
  </tr>
  <tr>
    <td height="62">(인천,ICN)</td>
    <td>&nbsp;</td>
    <td>(도쿄/나리타,NRT) </td>
    <td>2014/08/10/일 <br />
09:00 출발</td>
    <td>2014/08/10/일 <br />
      09:00 출발</td>
    <td>트래블</td>
  </tr>
  <tr>
    <td height="37">&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>OZ102 </td>
    <td>OZ102 </td>
    <td>&nbsp;</td>
  </tr>
</table>
   								
   <!-- //selectITbox3 -->
   
   
   
   								
   <!-- notice_container -->
   
   								
   <div class="notice_container">
    
    									
    <div class="notice_Inner innerType01">
     
     										
     <ul class="notice">
      
      											
      <li>
       항공권 탑승자 성명과 여권의 영문 성명이 상이한 경우 탑승이 거절될 수 있으니 유의하시기 바랍니다. (아시아나클럽 회원 정보와 여권정보가 다른 경우 반드시 예약일 전에 문의하시기 바랍니다. 문의처: 아시아나클럽 1588-8180)
      </li>
      
      											
      <li>
       아시아나항공 마일리지 적립 시, 아시아나클럽 회원 이름, 회원번호를 정확하게 기재하시기 바랍니다. 
      </li>
      
      											
      <li>
       전자항공권의 클래스에 따라 마일리지 적립이 불가하거나 적립율이 상이할 수 있으며, 실제 운항하는 항공사의 적립율에 의해 적립이 이루어집니다.
      </li>
      
      											
      										
     </ul>
     
     									
    </div>
    
    								
   </div>
   
   								
   <!-- //notice_container -->
   
   							
   								
   <div class="passengerBox z1" style="z-index: 200;">
    
    									
    <h4 class="h4_type01">
     탑승자 정보
    </h4>
    
    																			
    										
    <div class="passengerInner" style="z-index: 90;">
     
     									
     										<span class="essentialText">필수 입력</span>
     										
     										
     <p class="sTitle">
      <strong>성인</strong>
     </p>
     
     										
     <div class="passengerBody">
      										
      											<span class="hidden">탑승자</span><strong class="pCnt">1</strong><span class="hidden">성인</span>
      											<input name="paxType1" type="hidden" value="ADT" />																	
      											
      <div class="entryBox">
       
       												
       												
       <div class="paragraph double">
        
        													
        <div class="text gap-1">
         <label for="tt_name1_1"><strong>성</strong>(family name)</label>
        </div>
        
        													
        <div class="entry z2">
         
         														<input name="familyName1" class="text01" id="familyName1" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
         													
        </div>
        
        													
        <div class="text gap-2">
         <label for="tt_name1_2"><strong>이름</strong>(first name)</label>
        </div>
        
        													
        <div class="entry z2">
         
         														<input name="givenName1" class="text01" id="givenName1" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
         													
        </div>
        
        												
       </div>
       
       												
       												
       												
       <div class="paragraph">
        
        													
        <div class="text">
         <strong>성별</strong></div>
        
        														
        <div class="entry z3">
         
         														<input name="paxGender1" id="paxGender1" type="radio" checked="" value="M" /> <label for="paxGender1">남</label>
         														<input name="paxGender1" id="paxGender2" type="radio" value="F" /> <label for="paxGender2">여</label>
         													
        </div>
        
        												
       </div>
       										
       
       												
       <div class="paragraph bB0">
        
        													
        <div class="text">
         
         														<strong>항공사 회원번호</strong><!-- hover -->
         
         														
         <div class="hoverBox IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br />
             																		* 마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
             																		* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														
         <!-- //hover -->
         
         													
        </div>
        
        													
        <div class="entry">
         
         														
         <!-- select 수정 -->
         
         														

          
          			
          																<select name="carrierCode1" title="선택하세요" id="carrierCode1" >
          															
          																		<option value="OZ" idx="1">아시아나항공</option>
          															
          																		<option value="JP" idx="1">아드리아항공</option>
          															
          																		<option value="A3" idx="1">에게안항공</option>
          															
          																		<option value="AC" idx="1">에어 캐나다</option>
          															
          																		<option value="CA" idx="1">에어 차이나</option>
          															
          																		<option value="NZ" idx="1">에어 뉴질랜드</option>
          															
          																		<option value="NH" idx="1">ANA 항공</option>
          															
          																		<option value="OS" idx="1">오스트리아항공</option>
          															
          																		<option value="AV" idx="1">아비앙카항공</option>
          															
          																		<option value="SN" idx="1">브뤼셀항공</option>
          															
          																		<option value="CM" idx="1">코파항공</option>
          															
          																		<option value="OU" idx="1">크로아티아항공</option>
          															
          																		<option value="MS" idx="1">이집트항공</option>
          															
          																		<option value="ET" idx="1">에티오피아항공</option>
          															
          																		<option value="BR" idx="1">에바항공</option>
          															
          																		<option value="LO" idx="1">폴란드항공</option>
          															
          																		<option value="LH" idx="1">루프트한자</option>
          															
          																		<option value="SK" idx="1">스칸디나비아항공</option>
          															
          																		<option value="ZH" idx="1">심천항공</option>
          															
          																		<option value="SQ" idx="1">싱가포르항공</option>
          															
          																		<option value="SA" idx="1">남아프리카항공</option>
          															
          																		<option value="LX" idx="1">스위스항공</option>
          															
          																		<option value="JJ" idx="1">탐항공</option>
          															
          																		<option value="TP" idx="1">탑포르투갈</option>
          															
          																		<option value="TG" idx="1">타이항공</option>
          															
          																		<option value="TK" idx="1">터키항공</option>
          															
          																		<option value="UA" idx="1">유나이티드항공</option>
          															

          																		<option value="US" idx="1">US 에어웨이</option>
          															
          																		<option value="AI" idx="1">에어인디아</option>
          															
          																</select>

         
         														
         <!-- //select 수정 -->
         
         														<input name="ffpNo1" title="회원번호" class="text01 inputFocusin01" id="ffpNo1" onclick="javascript:clear_ffp_comment(this);" onblur="javascript:set_ffp_comment(this);" type="text" maxlength="9" value="회원인 경우 입력" />																									
         														<span class="ffp">FFP</span><!-- hover -->
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>
        
        												
       </div>
       
       											
      </div>
      
      										
     </div>
     
     									
    </div>
    
    										
    										
    <div class="passengerInner" style="z-index: 89;">
     
     										
     										

     
     										
     <div class="passengerInner" style="z-index: 90;">
     
     									
     										<span class="essentialText">필수 입력</span>
     										
     										
     <p class="sTitle">
      <strong>성인</strong>
     </p>
     
     										
     <div class="passengerBody">
      										
      											<span class="hidden">탑승자</span><strong class="pCnt">2</strong><span class="hidden">성인</span>
      											<input name="paxType1" type="hidden" value="ADT" />																	
      											
      <div class="entryBox">
       
       												
       												
       <div class="paragraph double">
        
        													
        <div class="text gap-1">
         <label for="tt_name1_1"><strong>성</strong>(family name)</label>
        </div>
        
        													
        <div class="entry z2">
         
         														<input name="familyName1" class="text01" id="familyName1" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
         													
        </div>
        
        													
        <div class="text gap-2">
         <label for="tt_name1_2"><strong>이름</strong>(first name)</label>
        </div>
        
        													
        <div class="entry z2">
         
         														<input name="givenName1" class="text01" id="givenName1" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
         													
        </div>
        
        												
       </div>
       
       												
       												
       												
       <div class="paragraph">
        
        													
        <div class="text">
         <strong>성별</strong></div>
        
        														
        <div class="entry z3">
         
         														<input name="paxGender1" id="paxGender1" type="radio" checked="" value="M" /> <label for="paxGender1">남</label>
         														<input name="paxGender1" id="paxGender2" type="radio" value="F" /> <label for="paxGender2">여</label>
         													
        </div>
        
        												
       </div>
       										
       
       												
       <div class="paragraph bB0">
        
        													
        <div class="text">
         
         														<strong>항공사 회원번호</strong><!-- hover -->
         
         														
         <div class="hoverBox IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br />
             																		* 마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
             																		* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														
         <!-- //hover -->
         
         													
        </div>
        
        													
        <div class="entry">
         
         														
         <!-- select 수정 -->
         
         														

          
          			
          																<select name="carrierCode1" title="선택하세요" id="carrierCode1" >
          															
          																		<option value="OZ" idx="1">아시아나항공</option>
          															
          																		<option value="JP" idx="1">아드리아항공</option>
          															
          																		<option value="A3" idx="1">에게안항공</option>
          															
          																		<option value="AC" idx="1">에어 캐나다</option>
          															
          																		<option value="CA" idx="1">에어 차이나</option>
          															
          																		<option value="NZ" idx="1">에어 뉴질랜드</option>
          															
          																		<option value="NH" idx="1">ANA 항공</option>
          															
          																		<option value="OS" idx="1">오스트리아항공</option>
          															
          																		<option value="AV" idx="1">아비앙카항공</option>
          															
          																		<option value="SN" idx="1">브뤼셀항공</option>
          															
          																		<option value="CM" idx="1">코파항공</option>
          															
          																		<option value="OU" idx="1">크로아티아항공</option>
          															
          																		<option value="MS" idx="1">이집트항공</option>
          															
          																		<option value="ET" idx="1">에티오피아항공</option>
          															
          																		<option value="BR" idx="1">에바항공</option>
          															
          																		<option value="LO" idx="1">폴란드항공</option>
          															
          																		<option value="LH" idx="1">루프트한자</option>
          															
          																		<option value="SK" idx="1">스칸디나비아항공</option>
          															
          																		<option value="ZH" idx="1">심천항공</option>
          															
          																		<option value="SQ" idx="1">싱가포르항공</option>
          															
          																		<option value="SA" idx="1">남아프리카항공</option>
          															
          																		<option value="LX" idx="1">스위스항공</option>
          															
          																		<option value="JJ" idx="1">탐항공</option>
          															
          																		<option value="TP" idx="1">탑포르투갈</option>
          															
          																		<option value="TG" idx="1">타이항공</option>
          															
          																		<option value="TK" idx="1">터키항공</option>
          															
          																		<option value="UA" idx="1">유나이티드항공</option>
          															

          																		<option value="US" idx="1">US 에어웨이</option>
          															
          																		<option value="AI" idx="1">에어인디아</option>
          															
          																</select>

         
         														
         <!-- //select 수정 -->
         
         														<input name="ffpNo1" title="회원번호" class="text01 inputFocusin01" id="ffpNo1" onclick="javascript:clear_ffp_comment(this);" onblur="javascript:set_ffp_comment(this);" type="text" maxlength="9" value="회원인 경우 입력" />																									
         														<span class="ffp">FFP</span><!-- hover -->
         
         														
         <div class="hoverBox ffpLayer IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 전자항공권의 클래스에 따라 마일리지 적립이 불가하거나 적립율이 상이할 수 있으며, 실제 운항하는 항공사의 적립율에 의해 적립이 이루어집니다. <br />
             																		* 실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나 클럽 계좌로 사후 적립만 가능합니다 <br />
             																		* 해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에 해당되면 회원번호를 입력하셔도 적립이 되지 않습니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>
        
        												
       </div>
       
       											
      </div>
      
      										
     </div>
     
     									
    </div>
     
     									
    </div>
    
    
    								
   </div>
   
   
   								
   <!-- notice_container -->
   
   								
   <div class="notice_container mrType01">
    
    									
    <div class="notice_Inner innerType01">
     
     										
     <ul class="notice">
      
      											
      <li>
       소아, 유아 동반하시는 경우 여행 당일 공항에서 나이를 확인할 수 있는 서류를 지참하시기 바랍니다.
      </li>
      
      										
     </ul>
     
     									
    </div>
    
    								
   </div>
   
   								
   <!-- //notice_container -->
   
   
   								
   		
   								
   <div class="passengerInner" style="z-index: 86;">
    
    									
    <p class="sTitle">
     <strong>소아</strong>
    </p>
    
    									
    <div class="passengerBody">
     
     										<strong class="pCnt">3</strong>
     										<input name="paxType2" type="hidden" value="CHD" />	
     										
     <div class="entryBox">
      
      											
      <!-- 리뷰 수정 -->
      
      											
      <div class="paragraph double">
       
       												
       <div class="text gap-1">
        <label for="tt_name1_1"><strong>성</strong>(family name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="familyName2" class="text01" id="familyName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       												
       <div class="text gap-2">
        <label for="tt_name1_2"><strong>이름</strong>(first name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="givenName2" class="text01" id="givenName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       											
      </div>
      
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>성별</strong></div>
       
       												
       <div class="entry z3">
        
        													<input name="paxGender2" id="paxGender1" type="radio" checked="" value="M" /> <label for="paxGender1">남</label>
        													<input name="paxGender2" id="paxGender2" type="radio" value="F" /> <label for="paxGender2">여</label>
        												
       </div>
       

       											
      </div>
      
      											
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>생년월일</strong></div>
       
       												
       <div class="entry z4">
        
        													
        <!-- select 수정 -->
        
        													
<select name="ageCalYear2" title="선택" id="ageCalYear2" style="width: 130px !important; margin-top: -5px;">
         														
																  <option value="2014">2014년</option>
         														
         																	<option value="2013">2013년</option>
         														
         																	<option value="2012" selected="">2012년</option>
         														
         																	<option value="2011">2011년</option>
         														
         																	<option value="2010">2010년</option>
         														
         																	<option value="2009">2009년</option>
         														
         																	<option value="2008">2008년</option>
         														
         																	<option value="2007">2007년</option>
         														
         																	<option value="2006">2006년</option>
         														
         																	<option value="2005">2005년</option>
         														
         																	<option value="2004">2004년</option>
         														
         																	<option value="2003">2003년</option>
         														
         																	<option value="2002">2002년</option>
         														
						</select>

        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													
  <select name="ageCalMonth2" title="선택" id="ageCalMonth2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1월</option>
         														
         																	<option value="2">2월</option>
         														
         																	<option value="3">3월</option>
         														
         																	<option value="4">4월</option>
         														
         																	<option value="5">5월</option>
         														
         																	<option value="6">6월</option>
         														
         																	<option value="7">7월</option>
         														
         																	<option value="8">8월</option>
         														
         																	<option value="9">9월</option>
         														
         																	<option value="10">10월</option>
         														
         																	<option value="11">11월</option>
         														
         																	<option value="12">12월</option>
         														
						</select>

        
        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													

         														<select name="ageCalDay2" title="선택" id="ageCalDay2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1일</option>
         														
         																	<option value="2">2일</option>
         														
         																	<option value="3">3일</option>
         														
         																	<option value="4">4일</option>
         														
         																	<option value="5">5일</option>
         														
         																	<option value="6">6일</option>
         														
         																	<option value="7">7일</option>
         														
         																	<option value="8">8일</option>
         														
         																	<option value="9">9일</option>
         														
         																	<option value="10">10일</option>
         														
         																	<option value="11">11일</option>
         														
         																	<option value="12">12일</option>
         														
         																	<option value="13">13일</option>
         														
         																	<option value="14">14일</option>
         														
         																	<option value="15">15일</option>
         														
         																	<option value="16">16일</option>
         														
         																	<option value="17">17일</option>
         														
         																	<option value="18">18일</option>
         														
         																	<option value="19">19일</option>
         														
         																	<option value="20">20일</option>
         														
         																	<option value="21">21일</option>
         														
         																	<option value="22">22일</option>
         														
         																	<option value="23">23일</option>
         														
         																	<option value="24">24일</option>
         														
         																	<option value="25">25일</option>
         														
         																	<option value="26">26일</option>
         														
         																	<option value="27">27일</option>
         														
         																	<option value="28">28일</option>
         														
         																	<option value="29">29일</option>
         														
         																	<option value="30">30일</option>
         														
         																	<option value="31">31일</option>
         														
       															</select>
							  </span>
         													
        </div>
    <div class="text">
         
         														<strong>항공사 회원번호</strong><!-- hover -->
         
         														
         <div class="hoverBox IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br />
             																		* 마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
             																		* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														
         <!-- //hover -->
         
         													
        </div>
<div class="entry">
         
         														
         <!-- select 수정 -->
         
         														

          
          			
          																<select name="carrierCode1" title="선택하세요" id="carrierCode1" >
          															
          																		<option value="OZ" idx="1">아시아나항공</option>
          															
          																		<option value="JP" idx="1">아드리아항공</option>
          															
          																		<option value="A3" idx="1">에게안항공</option>
          															
          																		<option value="AC" idx="1">에어 캐나다</option>
          															
          																		<option value="CA" idx="1">에어 차이나</option>
          															
          																		<option value="NZ" idx="1">에어 뉴질랜드</option>
          															
          																		<option value="NH" idx="1">ANA 항공</option>
          															
          																		<option value="OS" idx="1">오스트리아항공</option>
          															
          																		<option value="AV" idx="1">아비앙카항공</option>
          															
          																		<option value="SN" idx="1">브뤼셀항공</option>
          															
          																		<option value="CM" idx="1">코파항공</option>
          															
          																		<option value="OU" idx="1">크로아티아항공</option>
          															
          																		<option value="MS" idx="1">이집트항공</option>
          															
          																		<option value="ET" idx="1">에티오피아항공</option>
          															
          																		<option value="BR" idx="1">에바항공</option>
          															
          																		<option value="LO" idx="1">폴란드항공</option>
          															
          																		<option value="LH" idx="1">루프트한자</option>
          															
          																		<option value="SK" idx="1">스칸디나비아항공</option>
          															
          																		<option value="ZH" idx="1">심천항공</option>
          															
          																		<option value="SQ" idx="1">싱가포르항공</option>
          															
          																		<option value="SA" idx="1">남아프리카항공</option>
          															
          																		<option value="LX" idx="1">스위스항공</option>
          															
          																		<option value="JJ" idx="1">탐항공</option>
          															
          																		<option value="TP" idx="1">탑포르투갈</option>
          															
          																		<option value="TG" idx="1">타이항공</option>
          															
          																		<option value="TK" idx="1">터키항공</option>
          															
          																		<option value="UA" idx="1">유나이티드항공</option>
          															

          																		<option value="US" idx="1">US 에어웨이</option>
          															
          																		<option value="AI" idx="1">에어인디아</option>
          															
          																</select>

         
         														
         <!-- //select 수정 -->
         
         														<input name="ffpNo1" title="회원번호" class="text01 inputFocusin01" id="ffpNo1" onclick="javascript:clear_ffp_comment(this);" onblur="javascript:set_ffp_comment(this);" type="text" maxlength="9" value="회원인 경우 입력" />																									
         														<span class="ffp">FFP</span><!-- hover -->
         
         														
         <div class="hoverBox ffpLayer IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 전자항공권의 클래스에 따라 마일리지 적립이 불가하거나 적립율이 상이할 수 있으며, 실제 운항하는 항공사의 적립율에 의해 적립이 이루어집니다. <br />
             																		* 실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나 클럽 계좌로 사후 적립만 가능합니다 <br />
             																		* 해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에 해당되면 회원번호를 입력하셔도 적립이 되지 않습니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>








        
        													
        <!-- //select 수정 -->
        
        												
       </div>
       
       											
      </div>
      	
      											
      											
      <div class="paragraph bB0">
        <div class="entry" style="padding-bottom:15px">
         
         														
         <!-- select 수정 --><!-- hover --></div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>
        
        													
        <!-- //select 수정 -->
        
        													</span>
        													
        <!-- //hover -->
        
        												
       </div>
       
       											
      </div>
      										
      										
     </div>
     
     									
    </div>
    
    								
   </div>
   
   								
   <div class="passengerInner" style="z-index: 86;">
    
    									
    <p class="sTitle">
     <strong>소아</strong>
    </p>
    
    									
    <div class="passengerBody">
     
     										<strong class="pCnt">4</strong>
     										<input name="paxType2" type="hidden" value="CHD" />	
     										
     <div class="entryBox">
      
      											
      <!-- 리뷰 수정 -->
      
      											
      <div class="paragraph double">
       
       												
       <div class="text gap-1">
        <label for="tt_name1_1"><strong>성</strong>(family name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="familyName2" class="text01" id="familyName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       												
       <div class="text gap-2">
        <label for="tt_name1_2"><strong>이름</strong>(first name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="givenName2" class="text01" id="givenName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       											
      </div>
      
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>성별</strong></div>
       
       												
       <div class="entry z3">
        
        													<input name="paxGender2" id="paxGender1" type="radio" checked="" value="M" /> <label for="paxGender1">남</label>
        													<input name="paxGender2" id="paxGender2" type="radio" value="F" /> <label for="paxGender2">여</label>
        												
       </div>
       

       											
      </div>
      
      											
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>생년월일</strong></div>
       
       												
       <div class="entry z4">
        
        													
        <!-- select 수정 -->
        
        													
<select name="ageCalYear2" title="선택" id="ageCalYear2" style="width: 130px !important; margin-top: -5px;">
         														
																  <option value="2014">2014년</option>
         														
         																	<option value="2013">2013년</option>
         														
         																	<option value="2012" selected="">2012년</option>
         														
         																	<option value="2011">2011년</option>
         														
         																	<option value="2010">2010년</option>
         														
         																	<option value="2009">2009년</option>
         														
         																	<option value="2008">2008년</option>
         														
         																	<option value="2007">2007년</option>
         														
         																	<option value="2006">2006년</option>
         														
         																	<option value="2005">2005년</option>
         														
         																	<option value="2004">2004년</option>
         														
         																	<option value="2003">2003년</option>
         														
         																	<option value="2002">2002년</option>
         														
						</select>

        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													
  <select name="ageCalMonth2" title="선택" id="ageCalMonth2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1월</option>
         														
         																	<option value="2">2월</option>
         														
         																	<option value="3">3월</option>
         														
         																	<option value="4">4월</option>
         														
         																	<option value="5">5월</option>
         														
         																	<option value="6">6월</option>
         														
         																	<option value="7">7월</option>
         														
         																	<option value="8">8월</option>
         														
         																	<option value="9">9월</option>
         														
         																	<option value="10">10월</option>
         														
         																	<option value="11">11월</option>
         														
         																	<option value="12">12월</option>
         														
						</select>

        
        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													

         														<select name="ageCalDay2" title="선택" id="ageCalDay2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1일</option>
         														
         																	<option value="2">2일</option>
         														
         																	<option value="3">3일</option>
         														
         																	<option value="4">4일</option>
         														
         																	<option value="5">5일</option>
         														
         																	<option value="6">6일</option>
         														
         																	<option value="7">7일</option>
         														
         																	<option value="8">8일</option>
         														
         																	<option value="9">9일</option>
         														
         																	<option value="10">10일</option>
         														
         																	<option value="11">11일</option>
         														
         																	<option value="12">12일</option>
         														
         																	<option value="13">13일</option>
         														
         																	<option value="14">14일</option>
         														
         																	<option value="15">15일</option>
         														
         																	<option value="16">16일</option>
         														
         																	<option value="17">17일</option>
         														
         																	<option value="18">18일</option>
         														
         																	<option value="19">19일</option>
         														
         																	<option value="20">20일</option>
         														
         																	<option value="21">21일</option>
         														
         																	<option value="22">22일</option>
         														
         																	<option value="23">23일</option>
         														
         																	<option value="24">24일</option>
         														
         																	<option value="25">25일</option>
         														
         																	<option value="26">26일</option>
         														
         																	<option value="27">27일</option>
         														
         																	<option value="28">28일</option>
         														
         																	<option value="29">29일</option>
         														
         																	<option value="30">30일</option>
         														
         																	<option value="31">31일</option>
         														
       															</select>
							  </span>
         													
        </div>
    <div class="text">
         
         														<strong>항공사 회원번호</strong><!-- hover -->
         
         														
         <div class="hoverBox IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br />
             																		* 마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
             																		* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														
         <!-- //hover -->
         
         													
        </div>
<div class="entry">
         
         														
         <!-- select 수정 -->
         
         														

          
          			
          																<select name="carrierCode1" title="선택하세요" id="carrierCode1" >
          															
          																		<option value="OZ" idx="1">아시아나항공</option>
          															
          																		<option value="JP" idx="1">아드리아항공</option>
          															
          																		<option value="A3" idx="1">에게안항공</option>
          															
          																		<option value="AC" idx="1">에어 캐나다</option>
          															
          																		<option value="CA" idx="1">에어 차이나</option>
          															
          																		<option value="NZ" idx="1">에어 뉴질랜드</option>
          															
          																		<option value="NH" idx="1">ANA 항공</option>
          															
          																		<option value="OS" idx="1">오스트리아항공</option>
          															
          																		<option value="AV" idx="1">아비앙카항공</option>
          															
          																		<option value="SN" idx="1">브뤼셀항공</option>
          															
          																		<option value="CM" idx="1">코파항공</option>
          															
          																		<option value="OU" idx="1">크로아티아항공</option>
          															
          																		<option value="MS" idx="1">이집트항공</option>
          															
          																		<option value="ET" idx="1">에티오피아항공</option>
          															
          																		<option value="BR" idx="1">에바항공</option>
          															
          																		<option value="LO" idx="1">폴란드항공</option>
          															
          																		<option value="LH" idx="1">루프트한자</option>
          															
          																		<option value="SK" idx="1">스칸디나비아항공</option>
          															
          																		<option value="ZH" idx="1">심천항공</option>
          															
          																		<option value="SQ" idx="1">싱가포르항공</option>
          															
          																		<option value="SA" idx="1">남아프리카항공</option>
          															
          																		<option value="LX" idx="1">스위스항공</option>
          															
          																		<option value="JJ" idx="1">탐항공</option>
          															
          																		<option value="TP" idx="1">탑포르투갈</option>
          															
          																		<option value="TG" idx="1">타이항공</option>
          															
          																		<option value="TK" idx="1">터키항공</option>
          															
          																		<option value="UA" idx="1">유나이티드항공</option>
          															

          																		<option value="US" idx="1">US 에어웨이</option>
          															
          																		<option value="AI" idx="1">에어인디아</option>
          															
          																</select>

         
         														
         <!-- //select 수정 -->
         
         														<input name="ffpNo1" title="회원번호" class="text01 inputFocusin01" id="ffpNo1" onclick="javascript:clear_ffp_comment(this);" onblur="javascript:set_ffp_comment(this);" type="text" maxlength="9" value="회원인 경우 입력" />																									
         														<span class="ffp">FFP</span><!-- hover -->
         
         														
         <div class="hoverBox ffpLayer IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 전자항공권의 클래스에 따라 마일리지 적립이 불가하거나 적립율이 상이할 수 있으며, 실제 운항하는 항공사의 적립율에 의해 적립이 이루어집니다. <br />
             																		* 실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나 클럽 계좌로 사후 적립만 가능합니다 <br />
             																		* 해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에 해당되면 회원번호를 입력하셔도 적립이 되지 않습니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>








        
        													
        <!-- //select 수정 -->
        
        												
       </div>
       
       											
      </div>
      	
      											
      											
      <div class="paragraph bB0">
        <div class="entry" style="padding-bottom:15px">
         
         														
         <!-- select 수정 --><!-- hover --></div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>
        
        													
        <!-- //select 수정 -->
        
        													</span>
        													
        <!-- //hover -->
        
        												
       </div>
       
       											
      </div>
   
   								
   <div class="passengerInner" style="z-index: 86;">
    
    									
    <p class="sTitle">
     <strong>유아</strong>
    </p>
    
    									
    <div class="passengerBody">
     
     										<strong class="pCnt">3</strong>
     										<input name="paxType2" type="hidden" value="CHD" />	
     										
     <div class="entryBox">
      
      											
      <!-- 리뷰 수정 -->
      
      											
      <div class="paragraph double">
       
       												
       <div class="text gap-1">
        <label for="tt_name1_1"><strong>성</strong>(family name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="familyName2" class="text01" id="familyName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       												
       <div class="text gap-2">
        <label for="tt_name1_2"><strong>이름</strong>(first name)</label>
       </div>
       
       												
       <div class="entry z2">
        
        													<input name="givenName2" class="text01" id="givenName2" style="width: 153px; text-transform: uppercase; ime-mode: disabled;" onclick="javascript:clear_name_comment(this);" onblur="javascript:set_name_comment(this);" type="text" value="영문으로 입력" />
        												
       </div>
       
       											
      </div>
      
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>성별</strong></div>
       
       												
       <div class="entry z3">
        
        													<input name="paxGender2" id="paxGender1" type="radio" checked="" value="M" /> <label for="paxGender1">남</label>
        													<input name="paxGender2" id="paxGender2" type="radio" value="F" /> <label for="paxGender2">여</label>
        												
       </div>
       

       											
      </div>
      
      											
      											
      <div class="paragraph">
       
       												
       <div class="text">
        <strong>생년월일</strong></div>
       
       												
       <div class="entry z4">
        
        													
        <!-- select 수정 -->
        
        													
<select name="ageCalYear2" title="선택" id="ageCalYear2" style="width: 130px !important; margin-top: -5px;">
         														
																  <option value="2014">2014년</option>
         														
         																	<option value="2013">2013년</option>
         														
         																	<option value="2012" selected="">2012년</option>
         														
         																	<option value="2011">2011년</option>
         														
         																	<option value="2010">2010년</option>
         														
         																	<option value="2009">2009년</option>
         														
         																	<option value="2008">2008년</option>
         														
         																	<option value="2007">2007년</option>
         														
         																	<option value="2006">2006년</option>
         														
         																	<option value="2005">2005년</option>
         														
         																	<option value="2004">2004년</option>
         														
         																	<option value="2003">2003년</option>
         														
         																	<option value="2002">2002년</option>
         														
						</select>

        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													
  <select name="ageCalMonth2" title="선택" id="ageCalMonth2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1월</option>
         														
         																	<option value="2">2월</option>
         														
         																	<option value="3">3월</option>
         														
         																	<option value="4">4월</option>
         														
         																	<option value="5">5월</option>
         														
         																	<option value="6">6월</option>
         														
         																	<option value="7">7월</option>
         														
         																	<option value="8">8월</option>
         														
         																	<option value="9">9월</option>
         														
         																	<option value="10">10월</option>
         														
         																	<option value="11">11월</option>
         														
         																	<option value="12">12월</option>
         														
						</select>

        
        													
        <!-- //select 수정 -->
        
        													
        <!-- select 수정 -->
        
        													

         														<select name="ageCalDay2" title="선택" id="ageCalDay2" style="width: 120px !important; margin-top: -5px;">
         														
																  <option value="1" selected="">1일</option>
         														
         																	<option value="2">2일</option>
         														
         																	<option value="3">3일</option>
         														
         																	<option value="4">4일</option>
         														
         																	<option value="5">5일</option>
         														
         																	<option value="6">6일</option>
         														
         																	<option value="7">7일</option>
         														
         																	<option value="8">8일</option>
         														
         																	<option value="9">9일</option>
         														
         																	<option value="10">10일</option>
         														
         																	<option value="11">11일</option>
         														
         																	<option value="12">12일</option>
         														
         																	<option value="13">13일</option>
         														
         																	<option value="14">14일</option>
         														
         																	<option value="15">15일</option>
         														
         																	<option value="16">16일</option>
         														
         																	<option value="17">17일</option>
         														
         																	<option value="18">18일</option>
         														
         																	<option value="19">19일</option>
         														
         																	<option value="20">20일</option>
         														
         																	<option value="21">21일</option>
         														
         																	<option value="22">22일</option>
         														
         																	<option value="23">23일</option>
         														
         																	<option value="24">24일</option>
         														
         																	<option value="25">25일</option>
         														
         																	<option value="26">26일</option>
         														
         																	<option value="27">27일</option>
         														
         																	<option value="28">28일</option>
         														
         																	<option value="29">29일</option>
         														
         																	<option value="30">30일</option>
         														
         																	<option value="31">31일</option>
         														
       															</select>
							  </span>
         													
        </div>
    <div class="text">
         
         														<strong>항공사 회원번호</strong><!-- hover -->
         
         														
         <div class="hoverBox IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 아시아나항공, 스타얼라이언스 회원사에 대한 마일리지 적립이 가능합니다. <br />
             																		* 마일리지는 탑승 완료 후 적립되며, 항공사마다 적립 시기에 차이가 있을 수 있습니다. <br />
             																		* 아시아나클럽 회원이 아니신 경우, 탑승 전 회원 가입을 해주셔야 적립이 가능합니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														
         <!-- //hover -->
         
         													
        </div>
<div class="entry">
         
         														
         <!-- select 수정 -->
         
         														

          
          			
          																<select name="carrierCode1" title="선택하세요" id="carrierCode1" >
          															
          																		<option value="OZ" idx="1">아시아나항공</option>
          															
          																		<option value="JP" idx="1">아드리아항공</option>
          															
          																		<option value="A3" idx="1">에게안항공</option>
          															
          																		<option value="AC" idx="1">에어 캐나다</option>
          															
          																		<option value="CA" idx="1">에어 차이나</option>
          															
          																		<option value="NZ" idx="1">에어 뉴질랜드</option>
          															
          																		<option value="NH" idx="1">ANA 항공</option>
          															
          																		<option value="OS" idx="1">오스트리아항공</option>
          															
          																		<option value="AV" idx="1">아비앙카항공</option>
          															
          																		<option value="SN" idx="1">브뤼셀항공</option>
          															
          																		<option value="CM" idx="1">코파항공</option>
          															
          																		<option value="OU" idx="1">크로아티아항공</option>
          															
          																		<option value="MS" idx="1">이집트항공</option>
          															
          																		<option value="ET" idx="1">에티오피아항공</option>
          															
          																		<option value="BR" idx="1">에바항공</option>
          															
          																		<option value="LO" idx="1">폴란드항공</option>
          															
          																		<option value="LH" idx="1">루프트한자</option>
          															
          																		<option value="SK" idx="1">스칸디나비아항공</option>
          															
          																		<option value="ZH" idx="1">심천항공</option>
          															
          																		<option value="SQ" idx="1">싱가포르항공</option>
          															
          																		<option value="SA" idx="1">남아프리카항공</option>
          															
          																		<option value="LX" idx="1">스위스항공</option>
          															
          																		<option value="JJ" idx="1">탐항공</option>
          															
          																		<option value="TP" idx="1">탑포르투갈</option>
          															
          																		<option value="TG" idx="1">타이항공</option>
          															
          																		<option value="TK" idx="1">터키항공</option>
          															
          																		<option value="UA" idx="1">유나이티드항공</option>
          															

          																		<option value="US" idx="1">US 에어웨이</option>
          															
          																		<option value="AI" idx="1">에어인디아</option>
          															
          																</select>

         
         														
         <!-- //select 수정 -->
         
         														<input name="ffpNo1" title="회원번호" class="text01 inputFocusin01" id="ffpNo1" onclick="javascript:clear_ffp_comment(this);" onblur="javascript:set_ffp_comment(this);" type="text" maxlength="9" value="회원인 경우 입력" />																									
         														<span class="ffp">FFP</span><!-- hover -->
         
         														
         <div class="hoverBox ffpLayer IDhoverOpen">
          
          															
          <div class="hoverInner">
           
           																
           <div class="hoverCt">
            
            																	
            <p class="tripTitle">
             <strong>마일리지 적립항공사</strong>
            </p>
            
            																	
            <p class="tripSubT">
             
             																		* 전자항공권의 클래스에 따라 마일리지 적립이 불가하거나 적립율이 상이할 수 있으며, 실제 운항하는 항공사의 적립율에 의해 적립이 이루어집니다. <br />
             																		* 실제 운항항공사가 스타얼라이언스 및 마일리지 제휴항공사가 아닌 공동운항편은 아시아나 클럽 계좌로 사후 적립만 가능합니다 <br />
             																		* 해당 항공사 마일리지 적립 규정상 적립이 불가한 경우에 해당되면 회원번호를 입력하셔도 적립이 되지 않습니다. 
             																	
            </p>
            
            																
           </div>
           
           															
          </div>
          
          														
         </div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>








        
        													
        <!-- //select 수정 -->
        
        												
       </div>
       
       											
      </div>
      	
      											
      											
      <div class="paragraph bB0">
        <div class="entry" style="padding-bottom:15px">
         
         														
         <!-- select 수정 --><!-- hover --></div>
         
         														<span class="system_warning" id="warningffpNo1" style="display: none;">회원번호 오류</span>
         														
         <!-- //hover -->
         
         													
        </div>
        
        													
        <!-- //select 수정 -->
        
        													</span>
        													
        <!-- //hover -->
        
        												
       </div>
       
       											
      </div>
   
   															
   								
   <div class="passengerBox mB11 z2">
    
    									
    <h4 class="h4_type01">
     예약정보 수신 연락처
    </h4>
    
    									
    <div class="passengerInner">
     
     										<span class="essentialText">필수 입력</span>
     										
     <div class="passengerCt">
      
      											
      <div class="text">
       <label for="tt_phoneRsv"><strong>휴대전화</strong></label>
      </div>
      
      											
      <div class="entry">
       
       												
       <div>
  										
        													<input name="phoneNo1" title="휴대전화 앞번호" class="text01" id="phoneNo1" style="width: 95px;" onkeypress="keyNumber()" type="text" maxlength="4" /> -
        													<input name="phoneNo2" title="가운데번호" class="text01" id="phoneNo2" style="width: 95px;" onkeypress="keyNumber()" type="text" maxlength="4" /> -
        													<input name="phoneNo3" title="끝번호" class="text01" id="phoneNo3" style="width: 95px;" onkeypress="keyNumber()" type="text" maxlength="4" />												
        												
       </div>
       
       											
      </div>
      
      										
     </div>
     
     										
     <div class="passengerCt  bB0">
      
      											
      <div class="text">
       <strong><label for="tt_email">이메일주소</label></strong>
      </div>
      
      											
      <div class="entry">
       
       												
       <div>
        
        													<input name="tt_email" class="text01" id="tt_email" style="width: 480px;" type="text" />
        												
       </div>
       
       <!-- 												<div class="ckBox" id="ck_agreementBox"> -->
       
       <!-- 													<input type="checkbox" id="ck_agreement" name="ck_agreement"> <label for="ck_agreement">휴대전화와 이메일 주소를 회원정보에 업데이트합니다.</label> -->
       
       <!-- 												</div> -->
       
       											
      </div>
      
      										
     </div>
     
     									
    </div>
    
    								
   </div>
   
   								
   								
   <ul class="noticeList">
    
    									
    <li>
     휴대전화번호 입력 시 SMS로 결제 정보 및 항공편 변경 정보를 확인하실 수 있습니다. 
    </li>
    
    									
    <li>
     예약정보 수신 연락처에 작성하신 이메일로 구매 결과와 여정안내서를 전송해드립니다. 
    </li>
    
    								
   </ul>
              <p>&nbsp;</p>
              <div ><span style="margin-left:50px;">
                <a id="" href="R2_FlightSelect.jsp">이전단계</a></span>
                <span style="margin-left:700px;"><a id="" href="#">계속하기</a></span>
              </div>
   		
   							
  </div>
</div></section></div></div></div></section></div></form></body></html>
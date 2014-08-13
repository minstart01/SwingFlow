<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="/resources/demos/style.css">
<link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css">

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>

  <script>
  $(function(){
	  $('#FareComfirm').click(function(e){
		  $('#dvResult').empty();
		  $('#dvResult').load("R3_FareComfirm.jsp");
	  });
  });
  
  </script>
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
table
{
	border-collapse: collapse;
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
.btnType11
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
.btnType11 a
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
	background-image: url("/images/bg/bg_btnRight11.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.btnType19 a
{
	width: 113px;
	height: 26px;
	text-align: center;
	color: #5e14cc;
	line-height: 26px;
	font-size: 13px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/bg_btnCenter1.png");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.btnType19 a.on
{
	width: 113px;
	height: 26px;
	text-align: center;
	color: #fff;
	line-height: 26px;
	font-size: 13px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/bg_btnCenter1On.png");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
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
.Sbtn_TType04_1
{
	display: inline-block;
	background-image: url("/images/bg/Sbtn_TTypeL04_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType04_1 a
{
	height: 25px;
	line-height: 25px;
	padding-top: 0px;
	padding-right: 15px;
	padding-bottom: 0px;
	padding-left: 35px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/Sbtn_TTypeR04_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType06_1
{
	display: inline-block;
	background-image: url("/images/bg/Sbtn_TTypeL06_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType06_1 a
{
	height: 25px;
	color: #666;
	line-height: 25px;
	padding-top: 0px;
	padding-right: 11px;
	padding-bottom: 0px;
	padding-left: 27px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/Sbtn_TTypeR06_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType07_3
{
	display: inline-block;
	background-image: url("/images/bg/Sbtn_TTypeL07_3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType07_3 a
{
	height: 22px;
	color: #000;
	line-height: 22px;
	padding-top: 0px;
	padding-right: 11px;
	padding-bottom: 0px;
	padding-left: 11px;
	font-family: "돋움";
	font-size: 11px;
	display: block;
	background-image: url("/images/bg/Sbtn_TTypeR07_3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType07_4
{
	display: inline-block;
	background-image: url("/images/bg/Sbtn_TTypeL07_4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.Sbtn_TType07_4 a
{
	height: 22px;
	color: #fff;
	line-height: 22px;
	padding-top: 0px;
	padding-right: 11px;
	padding-bottom: 0px;
	padding-left: 11px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: bold;
	display: block;
	background-image: url("/images/bg/Sbtn_TTypeR07_4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.selectType04
{
	width: 100%;
	display: inline-block;
	background-image: url("/images/bg/bg_selectLeft4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.selectType04 a
{
	height: 25px;
	color: #666;
	line-height: 25px;
	overflow: hidden;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 10px;
	font-size: 12px;
	display: block;
	background-image: url("/images/bg/bg_selectRight4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.selectType04 *
{
	vertical-align: middle;
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
.reservationBox .rv_stepBox li.step02_on
{
	width: 154px;
	color: #5d6067;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 43px;
	font-weight: bold;
	background-image: url("/images/bg/bg_rvStep02_on.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .rv_stepBox li.step03_off
{
	width: 188px;
	color: #5d6067;
	font-weight: normal;
	background-image: url("/images/bg/bg_rvStep03_off.gif");
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
.reservationBox .itineraryBoxPs
{
	position: relative;
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
.reservationBox .fareBox.itineraryBoxPs .selectITbox
{
	padding-top: 16px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 30px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_selectItineraryTop_2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .posi.selectITbox
{
	left: -600px;
	top: -18px;
	width: 725px;
	position: absolute;
	z-index: 100;
}
.reservationBox .fareBox.itineraryBoxPs .posi.selectITbox .btn_close
{
	top: 7px;
	right: 11px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner
{
	background-image: url("/images/bg/bg_selectItineraryBottom_2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .h4_type01
{
	color: #2e2f33;
	padding-top: 0px;
	padding-right: 19px;
	padding-bottom: 6px;
	padding-left: 19px;
	font-size: 14px;
	margin-top: 0px;
	margin-right: 1px;
	margin-bottom: 0px;
	margin-left: 1px;
	border-bottom-color: #cecfd1;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .h4_type01 span.cnt
{
	color: #000;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .h4_type01 span.cnt strong, .reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .h4_type01 span.cnt span
{
	color: #5e14cc;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox
{
	padding-top: 8px;
	padding-right: 0px;
	padding-bottom: 19px;
	padding-left: 19px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox .btn-type-1
{
	text-align: right;
	margin-top: 15px;
	margin-right: 21px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox
{
	margin-top: 0px;
	margin-right: 5px;
	margin-bottom: 0px;
	margin-left: 0px;
	float: left;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox *
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox .input-type-1
{
	width: 104px;
	height: 23px;
	color: #808080;
	line-height: 23px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 3px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 24px;
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
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li strong.Ttitle
{
	line-height: 21px;
	display: block;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .btn_etc
{
	left: 0px;
	bottom: 0px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.list01
{
	width: 220px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.list02
{
	width: 199px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.list03, .reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.list04
{
	width: 134px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .selectBox
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 24px;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .selectBox *
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .selectBox .selectType04
{
	width: 172px;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li
{
	float: left;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox .tripBox2
{
	left: 49px;
	top: 2px;
	display: inline;
	position: absolute;
	z-index: 101;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox .tripBox2 .cdBox
{
	left: 21px;
	top: -100000px;
	width: 204px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 1px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	position: absolute;
	z-index: 100;
	background-image: url("/images/bg/bg_hoverBoxTop3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox .tripBox2 .cdBox .cdInner
{
	color: #333;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bg/bg_hoverBoxBody3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li.Libox .tripBox2 .cdBox .cdInner .cdBody
{
	line-height: 17px;
	padding-top: 0px;
	padding-right: 10px;
	padding-bottom: 9px;
	padding-left: 20px;
	background-image: url("/images/bg/bg_hoverBoxBottom3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox
{
	left: 0px;
	top: 21px;
	width: 367px;
	border-bottom-color: #312cce;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	display: none;
	position: absolute;
	z-index: 100;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox .CalendarInner
{
	width: 335px;
	padding-top: 5px;
	padding-right: 0px;
	padding-bottom: 9px;
	padding-left: 33px;
	float: left;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox .CalendarInner::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox .bg_start.CalendarInner
{
	background-image: url("/images/bg/bg_startCalendar.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox .bg_arrival.CalendarInner
{
	width: 335px;
	background-image: url("/images/bg/bg_arrivalCalendar.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .selectITbox .selectITinner .dayBox ul.dayBoxUl li .CalendarBox .btn_close2
{
	top: 8px;
	right: 10px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 13px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableTopBorder01
{
	margin-top: 8px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	border-top-color: #5c5f66;
	border-top-width: 1px;
	border-top-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .h4_type01
{
	color: #5e14cc;
	line-height: 20px;
	font-size: 14px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .h4_type01 span.cnt
{
	width: 17px;
	height: 17px;
	text-align: center;
	color: #fff;
	font-family: "돋움";
	font-size: 11px;
	margin-top: 0px;
	margin-right: 8px;
	margin-bottom: 0px;
	margin-left: 0px;
	display: inline-block;
	background-image: url("/images/bg/bg_cnt.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .selectBox
{
	text-align: right;
	margin-top: -18px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .selectBox *
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .selectBox select
{
	height: 20px;
	color: #010000;
	line-height: 20px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 9px;
	font-family: "돋움";
	font-size: 11px;
	min-width: 151px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01
{
	width: 100%;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 th
{
	text-align: left;
	color: #6a655d;
	line-height: 17px;
	padding-top: 10px;
	padding-right: 0px;
	padding-bottom: 7px;
	padding-left: 10px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
	vertical-align: top;
	border-right-color: #dfdfdf;
	border-bottom-color: #a4a4a4;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(248, 248, 248);
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 th strong
{
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 th a
{
	color: #6a655d;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 th a img
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 5px;
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 td
{
	line-height: 15px;
	padding-top: 9px;
	padding-right: 0px;
	padding-bottom: 12px;
	padding-left: 8px;
	vertical-align: top;
	border-right-color: #e4e4e4;
	border-bottom-color: #cecfd1;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 th.last-th
{
	border-right-color: currentColor;
	border-right-width: medium;
	border-right-style: none;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 td.last-td
{
	border-right-color: currentColor;
	border-right-width: medium;
	border-right-style: none;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 .tripBox2
{
	display: inline;
	position: relative;
	z-index: 99;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 .tripBox2 .cdBox
{
	left: 21px;
	top: -100000px;
	width: 204px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	position: absolute;
	z-index: 100;
	background-image: url("/images/bg/bg_hoverBoxTop3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 .tripBox2 .cdBox .cdInner
{
	color: #333;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bg/bg_hoverBoxBody3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox01 .tableType01 .tripBox2 .cdBox .cdInner .cdBody
{
	line-height: 17px;
	padding-top: 0px;
	padding-right: 10px;
	padding-bottom: 9px;
	padding-left: 20px;
	background-image: url("/images/bg/bg_hoverBoxBottom3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.tableType01 tr.hoverTrOut td
{
	border-top-color: #cecfd1;
	border-right-color: #cecfd1;
	border-bottom-color: #cecfd1;
	border-top-width: 1px;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-top-style: solid;
	border-right-style: solid;
	border-bottom-style: solid;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 255, 255);
}
.tableType01 tr.hoverTrOut td.last-td
{
	border-right-color: currentColor;
	border-right-width: medium;
	border-right-style: none;
}
.tableType01 tr.hoverTrInC td
{
	border-right-color: #e4d162 !important;
	border-right-width: 1px !important;
	border-right-style: solid !important;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(255, 229, 70);
}
.tableType01 tr.hoverTrInC td.last-td
{
	border-right-color: #581cb4;
	border-right-width: 1px;
	border-right-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 13px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .h4_type01
{
	color: #5e14cc;
	line-height: 20px;
	font-size: 14px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .h4_type01 span.cnt
{
	width: 17px;
	height: 17px;
	text-align: center;
	color: #fff;
	font-family: "돋움";
	font-size: 11px;
	margin-top: 0px;
	margin-right: 8px;
	margin-bottom: 0px;
	margin-left: 0px;
	display: inline-block;
	background-image: url("/images/bg/bg_cnt.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox
{
	text-align: right;
	margin-top: -18px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox *
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox select
{
	height: 20px;
	color: #010000;
	line-height: 20px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 9px;
	font-family: "돋움";
	font-size: 11px;
	min-width: 151px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox span
{
	height: 13px;
	color: #666;
	line-height: 13px;
	padding-top: 0px;
	padding-right: 12px;
	padding-bottom: 0px;
	padding-left: 12px;
	font-family: "돋움";
	font-size: 11px;
	display: inline-block;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox span.minimum
{
	background-image: url("/images/bg/bg_minimum.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 1px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox span.class
{
	padding-left: 15px;
	background-image: url("/images/bg/bgP_sweetie.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .selectBox span.communal
{
	background-image: url("/images/bg/bg_communal2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .itineraryBoxPs .tableBox02 .inner-table
{
	overflow: auto;
	overflow-x: hidden;
	max-height: 321px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01
{
	width: 100%;
	margin-top: 8px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .mT0.tableType01
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 th
{
	text-align: left;
	color: #6a655d;
	line-height: 17px;
	padding-top: 10px;
	padding-right: 0px;
	padding-bottom: 7px;
	padding-left: 10px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
	vertical-align: top;
	border-right-color: #dfdfdf;
	border-bottom-color: #a4a4a4;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
	background-image: none;
	background-attachment: scroll;
	background-repeat: repeat;
	background-position-x: 0%;
	background-position-y: 0%;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(248, 248, 248);
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 th strong
{
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 th a
{
	color: #6a655d;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 th a img
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 5px;
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td
{
	line-height: 15px;
	vertical-align: top;
	border-right-color: #e4e4e4;
	border-bottom-color: #cecfd1;
	border-right-width: 1px;
	border-bottom-width: 1px;
	border-right-style: solid;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td span.box
{
	line-height: 18px;
	padding-top: 9px;
	padding-right: 0px;
	padding-bottom: 9px;
	padding-left: 8px;
	display: block;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td span.box .day, .reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td span.box .loc
{
	font-family: "돋움";
	font-size: 11px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 th.last-th
{
	border-right-color: currentColor;
	border-right-width: medium;
	border-right-style: none;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td.last-td
{
	border-right-color: currentColor;
	border-right-width: medium;
	border-right-style: none;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td .bg_minimum
{
	left: 0px;
	top: 0px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .tripBox2
{
	top: -2px;
	display: inline;
	position: relative;
	z-index: 90;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .tripBox2 .cdBox
{
	left: 21px;
	top: -100000px;
	width: 204px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	position: absolute;
	z-index: 100;
	background-image: url("/images/bg/bg_hoverBoxTop3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .tripBox2 .cdBox .cdInner
{
	color: #333;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bg/bg_hoverBoxBody3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .tripBox2 .cdBox .cdInner .cdBody
{
	line-height: 17px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 9px;
	padding-left: 20px;
	background-image: url("/images/bg/bg_hoverBoxBottom3.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .Sbtn_TType07_3, .reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 .Sbtn_TType07_4
{
	margin-top: 12px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 10px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .startAr
{
	line-height: 35px;
	padding-top: 8px;
	padding-right: 0px;
	padding-bottom: 11px;
	padding-left: 106px;
	font-size: 14px;
	font-weight: bold;
	margin-top: 8px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	border-top-color: #5c5f66;
	border-top-width: 1px;
	border-top-style: solid;
	background-image: url("/images/bg/bg_startAr.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 32px;
	background-position-y: 28px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(222, 223, 224);
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .startAr strong
{
	color: #4c4c4c;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	display: block;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .startAr .day
{
	color: #333;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
	margin-top: -9px;
	display: block;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .comingAr
{
	line-height: 35px;
	padding-top: 8px;
	padding-right: 0px;
	padding-bottom: 11px;
	padding-left: 106px;
	font-size: 14px;
	font-weight: bold;
	margin-top: 15px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	border-top-color: #5c5f66;
	border-top-width: 1px;
	border-top-style: solid;
	background-image: url("/images/bg/bg_comingAr.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 32px;
	background-position-y: 28px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgb(222, 223, 224);
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .comingAr strong
{
	color: #4c4c4c;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	display: block;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .comingAr .day
{
	color: #333;
	line-height: 20px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
	margin-top: -9px;
	display: block;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td a.bl_go
{
	font-family: "돋움";
	font-size: 11px;
	text-decoration: underline;
	margin-top: 0px;
	margin-right: 5px;
	margin-bottom: 0px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableBox02 .tableType01 td img
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox
{
	width: 725px;
	padding-top: 12px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	background-image: url("/images/bg/bg_priceTotalTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner
{
	padding-top: 0px;
	padding-right: 2px;
	padding-bottom: 20px;
	padding-left: 2px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 30px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_priceTotalBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .h4_type01Box
{
	height: 30px;
	line-height: 30px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 17px;
	border-bottom-color: #cdbae8;
	border-bottom-width: 1px;
	border-bottom-style: solid;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .h4_type01Box h4
{
	color: #2e2f33;
	font-size: 14px;
	display: inline;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .h4_type01Box .btnType06
{
	top: 4px;
	right: 19px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4
{
	top: -130px;
	width: 365px;
	text-align: left;
	right: 2px;
	padding-top: 7px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	display: none;
	position: absolute;
	z-index: 100;
	background-image: url("/images/bg/bg_abroadTop16.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .reCy.abroadBox4
{
	width: 245px;
	background-image: url("/images/bg/bg_abroadTop16_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .reCy.abroadBox4 .abroadInner
{
	background-image: url("/images/bg/bg_abroadBottom16_1.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner
{
	padding-top: 0px;
	padding-right: 1px;
	padding-bottom: 25px;
	padding-left: 1px;
	background-image: url("/images/bg/bg_abroadBottom16.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .aTitle
{
	line-height: 20px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 12px;
	margin-top: 0px;
	margin-right: 5px;
	margin-bottom: 19px;
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .aTitle p strong
{
	color: #201cb4;
	font-size: 13px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt
{
	height: 200px;
	color: #333;
	line-height: 15px;
	overflow: auto;
	padding-top: 20px;
	padding-right: 19px;
	padding-bottom: 0px;
	padding-left: 19px;
	border-top-color: #d2d2f0;
	border-top-width: 1px;
	border-top-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box
{
	border-top-color: #808080;
	border-top-width: 1px;
	border-top-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1
{
	width: 100%;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 thead th, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 thead td
{
	text-align: right;
	color: #5c5f66;
	padding-top: 9px;
	padding-right: 0px;
	padding-bottom: 7px;
	padding-left: 0px;
	font-family: "돋움";
	font-size: 11px;
	border-bottom-color: #bfbfbf;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tfoot td
{
	text-align: right;
	padding-top: 9px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tfoot td .ttText
{
	font-size: 13px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tfoot td .pcTotel
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 51px;
	font-family: Arial;
	font-size: 20px;
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .reCy.abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tfoot td .pcTotel
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 50px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 td .sm
{
	color: #333;
	font-family: "돋움";
	font-size: 11px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .btn_close
{
	top: 12px;
	right: 10px;
	position: absolute;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt
{
	padding-top: 22px;
	padding-right: 15px;
	padding-bottom: 0px;
	padding-left: 18px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox
{
	width: 480px;
	padding-top: 8px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	float: left;
	background-image: url("/images/bg/bg_priceInnerTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner
{
	padding-top: 7px;
	padding-right: 15px;
	padding-bottom: 15px;
	padding-left: 15px;
	min-height: 116px;
	background-image: url("/images/bg/bg_priceInnerBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr
{
	width: 170px;
	text-align: right;
	margin-top: 4px;
	margin-right: 0px;
	margin-bottom: 0px;
	margin-left: 0px;
	float: right;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr ul
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 21px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr .totalPrice
{
	color: #5e14cc;
	line-height: 30px;
	font-family: "돋움";
	font-size: 16px;
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr .priceArZ
{
	display: inline;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .tableNotice
{
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 25px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .tableNotice li
{
	color: #666;
	line-height: 19px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 16px;
	font-family: "돋움";
	font-size: 11px;
	background-image: url("/images/bl/bl_ck.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 5px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .noticeEtc
{
	width: 725px;
	padding-top: 13px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 13px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_noticeEtcTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .noticeEtc ul
{
	padding-top: 0px;
	padding-right: 15px;
	padding-bottom: 15px;
	padding-left: 15px;
	background-image: url("/images/bg/bg_noticeEtcBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .noticeEtc ul li
{
	line-height: 16px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 24px;
	background-image: url("/images/bl/bl_notice.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .width685.noticeEtc
{
	width: 685px;
	background-image: url("/images/bg/bg_noticeEtcTop_2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .width685.noticeEtc ul
{
	background-image: url("/images/bg/bg_noticeEtcBottom_2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .selectITbox4
{
	padding-top: 14px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 27px;
	margin-left: 0px;
	background-image: url("/images/bg/bg_selectItineraryTop.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .selectITbox4 .selectITinner4
{
	padding-top: 0px;
	padding-right: 14px;
	padding-bottom: 16px;
	padding-left: 23px;
	background-image: url("/images/bg/bg_selectItineraryBottom.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: bottom;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .selectITbox4 .selectITinner4::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .selectITbox4 .selectITinner4 *
{
	vertical-align: middle;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft
{
	width: 575px;
	float: left;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft ul
{
	margin-top: 4px;
	margin-right: 0px;

	margin-bottom: 10px;
	margin-left: 0px;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft ul::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft .start
{
	padding-top: 0px;
	padding-right: 29px;
	padding-bottom: 0px;
	padding-left: 0px;
	min-width: 78px;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft .start, .reservationBox .selectITbox4 .selectITinner4 .sLeft .end
{
	float: left;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft .end
{
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 56px;
	background-image: url("/images/bg/bg_join.jpg");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 25px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}

.reservationBox .selectITbox4 .selectITinner4 .sLeft .day
{
	line-height: 16px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 7px;
	margin-left: 0px;
	display: block;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft .local
{
	line-height: 16px;
	font-family: "돋움";
	font-size: 16px;
	font-weight: bold;
}
.reservationBox .selectITbox4 .selectITinner4 .sLeft .cnt
{
	color: #581cb4;
	line-height: 16px;
	font-family: "돋움";
	font-size: 11px;
}
.reservationBox .selectITbox4 .selectITinner4 .sRight
{
	width: 108px;
	margin-top: 4px;
	margin-right: 3px;
	margin-bottom: 0px;
	margin-left: 0px;
	float: right;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 thead td
{
	text-align: right;
	color: #5c5f66;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	font-size: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 thead th
{
	text-align: right;
	color: #5c5f66;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 0px;
	font-size: 0px;
}
.selectType04
{
	width: 100%;
	display: inline-block;
	background-image: url("/star_images/bg/bg_selectLeft4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 0px;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgba(0, 0, 0, 0);
}
.selectType04 a
{
	height: 25px;
	color: #666;
	line-height: 25px;
	overflow: hidden;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 10px;
	font-size: 12px;
	display: block;
	background-image: url("/star_images/bg/bg_selectRight4.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: right;
	background-position-y: 0px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: rgba(0, 0, 0, 0);
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

</style>
</head>
<body id="FDFF"><form name="frmUpsell" id="frmUpsell" method="post"><div id="wrap_container"><section id="main_container"><div class="reservationBox" id="containerBox"><div id="container"><div id="skipCt">

<section id="containerBody">
						
<h3 class="h3_type01"> 국제선 예매</h3>
					
<ul class="rv_stepBox">
  <li class="step02_on">
    <p class="hidden">
      현재
      </p>
    2. 운임/항공편 선택
  </li>
</ul>



						
<div class="itineraryBoxPs fareBox">
 
 							
 <div class="fareInner">
  
  								
  								
  <!-- 선택한 여정 -->
  
  								
  <div class="selectITbox4">
   
   									
   <div class="selectITinner4">

    
    										
    <div class="sLeft">
     
     											
     <ul>
      
      												
      <li class="start">
       
       													<span class="day">2014/08/09/토										</span>
       													<span class="local">인천(ICN)</span>
       												
      </li>
      
      												
      <li class="end">
       
       													<span class="day">2014/08/18/월</span>
       													<span class="local">도쿄/나리타(NRT)</span>
       												
      </li>
      
      											
     </ul>
     
     											
     <p class="cnt">
      ( <strong>탑승객 4명 : </strong><span>성인&nbsp;1명</span>&nbsp;<span>:&nbsp;소아&nbsp;2명</span>&nbsp;<span>:&nbsp;유아&nbsp;1명</span> )
     </p>
     
     										
    </div>
   </div>
   
   								
  </div>
<div class="tableBox02">
    
    
    <h4 class="h4_type01">
    <span class="cnt">2</span>&gt; 항공편을 선택하세요.   </h4>
    <p class="startAr">
      <strong>가는 항공편</strong> (인천 → 도쿄/나리타 ) <span class="day">2014/08/09/토</span>
    </p>
   
   									
   <div class="inner-table" style="border-bottom-color: #ccc; border-bottom-width: 1px; border-bottom-style: solid; max-height: 640px;">
    
    										
    <table class="tableType01 mT0" id="tdFlightList0" style="position: relative;" summary="가는 항공편 또는 오는 항공편 테이블이며 선택, 편명, 출발, 도착, 좌석, 항공사/기종, 시간, 경유/환승 등의 정보로 구성되어 있음." name="tdFlightList" segindex="0">
     
     											<caption>항공편</caption>
     											<colgroup>
     												<col width="13%" />
     												<col width="22%" />
     												<col width="21%" />
     												<col width="9%" />
     												<col width="10%" />
     												<col width="10%" />
     												<col width="6%" />
     												<col width="*" />
     											</colgroup>
     											
     <thead>
      
      												
      <tr>
       
       													
       <th scope="col">
        <strong>편명</strong>
       </th>
       
       													
       <th scope="col">
        <strong>출발</strong>
       </th>
       
       													
       <th scope="col">
        
							<strong>도착</strong></th>
       
       													
       <th scope="col">
        <strong>기종</strong>
       </th>
       
       													
       <th scope="col">
        <strong>비행시간</strong>
       </th>
       
       													
       <th scope="col">
        <strong>경유/환승</strong>
       </th>
       
       													
       <th scope="col">
        <strong>좌석</strong>
       </th>
       
       													
       <th class="last-th" scope="col">
        <strong>선택</strong>
       </th>
       
       												
      </tr>
      
      											
     </thead>
     
     											
     <tbody>
      
      
      												
      <tr class="hoverTrOut" name="fltRows" itineraryidx="0" totalflyingtime="0210" iscodeshare="" fltid="0" fltno="102">
       
       													
       <td>
        <span class="box" style="height: 0px;"><img class="bg_minimum" alt="최저운임 항공편" src="/images/bg/bg_minimum.gif" /></span><span class="box">OZ102  </span>
       </td>
       
       													
       <td>
        <span class="box"><label for="ra_start0_0"><strong>인천</strong> (ICN)<br /><strong>09:00</strong></label></span>
       </td>
       
       													
       <td>
        <span class="box"><strong>도쿄/나리타</strong> (NRT)<br /><strong>11:10</strong></span>
       </td>
       
       													
       <td>
        <span class="box"><a class="bl_go" id="searchFlightInfo" fltno="102" fltcrrcd="OZ" fltdate="20140809090000" fltdepairport="ICN" herf="#none">A388</a><img alt="" src="/images/bl/bl_go.gif" /></span>
       </td>
       
       													
       <td>
        <span class="box"><span class="loc">02시간10분</span></span>
       </td>
        
       <!-- 비행시간 -->
       
       													
       <td>
        
        														<span class="box"><span class="loc">직항</span></span> 
        <!-- 직항 or 경유 -->
        
        
        													
       </td>
       
       													
       <td>
        <span class="box" name="seatSpan">9석</span>
       </td>
        
       <!-- 좌석 -->
       
       													
       <td class="last-td last-child">
        <span class="Sbtn_TType07_3"><a name="radioFlight0" href="#none">선택</a></span>
       </td>
       
       												
      </tr>
      
      
      												
      <tr class="" name="fltRows" itineraryidx="0" totalflyingtime="0220" iscodeshare="" fltid="2" fltno="106">
       
       													
       <td>
        <span class="box" style="height: 0px;"><img class="bg_minimum" alt="최저운임 항공편" src="/images/bg/bg_minimum.gif" /></span><span class="box">OZ106  </span>
       </td>
       
       													
       <td>
        <span class="box"><label for="ra_start0_1"><strong>인천</strong> (ICN)<br /><strong>15:10</strong></label></span>
       </td>
       
       													
       <td>
        <span class="box"><strong>도쿄/나리타</strong> (NRT)<br /><strong>17:30</strong></span>
       </td>
       
       													
       <td>
        <span class="box"><a class="bl_go" id="searchFlightInfo" fltno="106" fltcrrcd="OZ" fltdate="20140809151000" fltdepairport="ICN" herf="#none">B74E</a><img alt="" src="/images/bl/bl_go.gif" /></span>
       </td>
       
       													
       <td>
        <span class="box"><span class="loc">02시간20분</span></span>
       </td>
        
       <!-- 비행시간 -->
       
       													
       <td>
        
        														<span class="box"><span class="loc">직항</span></span> 
        <!-- 직항 or 경유 -->
        
        
        													
       </td>
       
       													
       <td>
        <span class="box" name="seatSpan">6석</span>
       </td>
        
       <!-- 좌석 -->
       
       													
       <td class="last-td last-child">
        <span class="Sbtn_TType07_3"><a name="radioFlight0" href="#none">선택</a></span>
       </td>
       
       												
      </tr>
      
      
      												
      <tr class="" name="fltRows" itineraryidx="0" totalflyingtime="0210" iscodeshare="" fltid="1" fltno="108">
       
       													
       <td>
        <span class="box" style="height: 0px;"><img class="bg_minimum" alt="최저운임 항공편" src="/images/bg/bg_minimum.gif" /></span><span class="box">OZ108  </span>
       </td>
       
       													
       <td>
        <span class="box"><label for="ra_start0_2"><strong>인천</strong> (ICN)<br /><strong>18:10</strong></label></span>
       </td>
       
       													
       <td>
        <span class="box"><strong>도쿄/나리타</strong> (NRT)<br /><strong>20:20</strong></span>
       </td>
       
       													
       <td>
        <span class="box"><a class="bl_go" id="searchFlightInfo" fltno="108" fltcrrcd="OZ" fltdate="20140809181000" fltdepairport="ICN" herf="#none">A321</a><img alt="" src="/images/bl/bl_go.gif" /></span>
       </td>
       
       													
       <td>
        <span class="box"><span class="loc">02시간10분</span></span>
       </td>
        
       <!-- 비행시간 -->
       
       													
       <td>
        
        														<span class="box"><span class="loc">직항</span></span> 
        <!-- 직항 or 경유 -->
        
        
        													
       </td>
       
       													
       <td>
        <span class="box" name="seatSpan">9석</span>
       </td>
        
       <!-- 좌석 -->
       
       													
       <td class="last-td">
        <span class="Sbtn_TType07_3"><a name="radioFlight0" href="#none">선택</a></span>
       </td>
       
       												
      </tr>
      
      
      											
     </tbody>
     
     										
    </table>
    
    									
   </div>
   
   
   									
   <p class="comingAr">
    <strong>오는 항공편</strong> (도쿄/나리타 → 인천 ) <span class="day">2014/08/18/월</span>
   </p>
   
   									
   <div class="inner-table" style="border-bottom-color: #ccc; border-bottom-width: 1px; border-bottom-style: solid; max-height: 640px;">
    
    										
    <table class="tableType01 mT0" id="tdFlightList1" style="position: relative;" summary="가는 항공편 또는 오는 항공편 테이블이며 선택, 편명, 출발, 도착, 좌석, 항공사/기종, 시간, 경유/환승 등의 정보로 구성되어 있음." name="tdFlightList" segindex="1">
     
     											<caption>항공편</caption>
     											<colgroup>
     												<col width="13%" />
     												<col width="22%" />
     												<col width="21%" />
     												<col width="9%" />
     												<col width="10%" />
     												<col width="10%" />
     												<col width="6%" />
     												<col width="*" />
     											</colgroup>
     											
     <thead>
      
      												
      <tr>
       
       													
       <th scope="col">
        <strong>편명</strong>
       </th>
       
       													
       <th scope="col">
        <strong>출발</strong>
       </th>
       
       													
       <th scope="col">
        
							<strong>도착</strong></th>
       
       													
       <th scope="col">
        <strong>기종</strong>
       </th>
       
       													
       <th scope="col">
        <strong>비행시간</strong>
       </th>
       
       													
       <th scope="col">
        <strong>경유/환승</strong>
       </th>
       
       													
       <th scope="col">
        <strong>좌석</strong>
       </th>
       
       													
       <th class="last-th" scope="col">
        <strong>선택</strong>
       </th>
       
       												
      </tr>
      
      											
     </thead>
     
     											
     <tbody>
      
      
      												
      <tr class="" name="fltRows" itineraryidx="1" totalflyingtime="0230" iscodeshare="" fltid="0" fltno="101">
       
       													
       <td>
        <span class="box" style="height: 0px;"><img class="bg_minimum" alt="최저운임 항공편" src="/images/bg/bg_minimum.gif" /></span><span class="box">OZ101  </span>
       </td>
       
       													
       <td>
        <span class="box"><label for="ra_start1_0"><strong>도쿄/나리타</strong> (NRT)<br /><strong>13:10</strong></label></span>
       </td>
       
       													
       <td>
        <span class="box"><strong>인천</strong> (ICN)<br /><strong>15:40</strong></span>
       </td>
       
       													
       <td>
        <span class="box"><a class="bl_go" id="searchFlightInfo" fltno="101" fltcrrcd="OZ" fltdate="20140818131000" fltdepairport="NRT" herf="#none">A388</a><img alt="" src="/images/bl/bl_go.gif" /></span>
       </td>
       
       													
       <td>
        <span class="box"><span class="loc">02시간30분</span></span>
       </td>
        
       <!-- 비행시간 -->
       
       													
       <td>
        
        														<span class="box"><span class="loc">직항</span></span> 
        <!-- 직항 or 경유 -->
        
        
        													
       </td>
       
       													
       <td>
        <span class="box" name="seatSpan">9석</span>
       </td>
        
       <!-- 좌석 -->
       
       													
       <td class="last-td">
        <span class="Sbtn_TType07_3"><a name="radioFlight1" href="#none">선택</a></span>
       </td>
       
       												
      </tr>
      
      
      												
      <tr class="" name="fltRows" itineraryidx="1" totalflyingtime="0230" iscodeshare="" fltid="1" fltno="105">
       
       													
       <td>
        <span class="box" style="height: 0px;"><img class="bg_minimum" alt="최저운임 항공편" src="/images/bg/bg_minimum.gif" /></span><span class="box">OZ105  </span>
       </td>
       
       													
       <td>
        <span class="box"><label for="ra_start1_1"><strong>도쿄/나리타</strong> (NRT)<br /><strong>19:00</strong></label></span>
       </td>
       
       													
       <td>
        <span class="box"><strong>인천</strong> (ICN)<br /><strong>21:30</strong></span>
       </td>
       
       													
       <td>
        <span class="box"><a class="bl_go" id="searchFlightInfo" fltno="105" fltcrrcd="OZ" fltdate="20140818190000" fltdepairport="NRT" herf="#none">B74E</a><img alt="" src="/images/bl/bl_go.gif" /></span>
       </td>
       
       													
       <td>
        <span class="box"><span class="loc">02시간30분</span></span>
       </td>
        
       <!-- 비행시간 -->
       
       													
       <td>
        
        														<span class="box"><span class="loc">직항</span></span> 
        <!-- 직항 or 경유 -->
        
        
        													
       </td>
       
       													
       <td>
        <span class="box" name="seatSpan">9석</span>
       </td>
        
       <!-- 좌석 -->
       
       													
       <td class="last-td">
        <span class="Sbtn_TType07_3"><a name="radioFlight1" href="#none">선택</a></span>
       </td>
       
       												
      </tr>
      
      
      											
     </tbody>
     
     										
    </table>
    
    									
   </div>
   
   
   							
</div>
  
  							
  <ul class="tableNotice">
   
   								
   <li>
    [+1] : 출발 다음날
   </li>
   
   								
   <li>
    예약 가능석은 실시간으로 변동되며, 결제 및 발권이 완료 되어야 좌석이 확약됩니다.
   </li>
   
   								
   <li>
    운항편이 만석인 경우 항공편이 표시되지 않을 수 있습니다.
   </li>
   
   							
  </ul>
  
  							
  <div class="priceBox" id="totalPriceBox" style="display: none;">
   
   								
   <div class="priceInner">
    
    									
    <div class="listCt">
     
     
     										
     <div class="listBox">
      
      											
      <div class="listInner">
       
       												
       <ul id="itineraryList">
        
        												
       </ul>
       
       											
      </div>
      
      										
     </div>
     
     
     										
     <div class="priceAr">
      
      											<input id="hidTotalPrice" type="hidden" value="" />
      											<input id="hidCurrency" type="hidden" value="" />
      											
      <ul id="paxPriceArea">
       
       												
       <!--
       												<li>
       													<span class="leftCnt"><strong>성인 1</strong></span>
       													<span class="RightPrice">\ 461,000</span>
       												</li>
       												-->
       
       											
      </ul>
      
      											
      <p class="totalPrice" id="totalPrice"></p>
      
      
      											
      <!-- 예상 금액 자세히 보기 START -->
      
      											
      <div class="priceArZ">
       
       												<span class="btnType11 btn_CpopupLayer"><a href="#none">예상 금액 자세히 보기</a></span>
       												
       <!-- 왕복 일 경우 class="reCy" -->
       
       												
       <div class="abroadBox4 BoxClose reCy" layerpopup="true">
        
        													
        <div class="abroadInner">
         
         														
         <div class="aTitle">
          
          															
          <p>
           
           																<strong>예상 총액 운임 자세히 보기</strong>
           															
          </p>
          
          														
         </div>
         
         														
         <div class="abroadCt">
          
          															
          <div class="tableType1Box">
           
           																
           <table class="tableType1_1" summary="예상 금액 자세히 보기 테이블이며 왕복 등의 정보로 구성되어 있음.">
            
            																	<caption>예상 총액 운임 자세히 보기</caption>
            																	<colgroup>
            																		<col width="55%" />
            																		<col width="*" />
            																	</colgroup>
            																	
            <thead>
             
             																		
             <tr>
              
              																			
              <td></td>
              
              																			
              <th id="go" scope="col">
               <strong><span id="tripType">왕복</span></strong>
              </th>
              
              																		
             </tr>
             
             																	
            </thead>
            
            																	
            <tfoot>
             
             																		
             <tr>
              
              																			
              <td colspan="2">
               <strong class="ttText">총액 운임</strong> <strong class="pcTotel" id="totalAmountId">0</strong> <span class="sm" id="currencySymbol"></span>
              </td>
              
              																		
             </tr>
             
             																	
            </tfoot>
            
            																	
            <tbody id="paxPriceDetailArea"></tbody>
            
            																
           </table>
           
           															
          </div>
          
          														
         </div>
         
         													
        </div>
        
        													<a class="btn_close" href="#none"><img alt="예상 금액 자세히 보기 팝업 닫기" src="/images/btn/btn_close.gif" /></a>
        												
       </div>
       
       											
      </div>
      
      											
      <!-- 예상 금액 자세히 보기 END -->
      
      										
     </div>
     
     									
    </div>
    
    								
   </div>
   
   							
  </div>
  
  
  							
  <ul class="btnBoxType01">
   
   								
   <li>
    <span ><a href="javascript:;">이전 단계</a></span>
   </li>
   
   								
   <li class="right" id="FareComfirm">
    <span ><a>운임확인</a></span>
   </li>
   
   							
  </ul>						
 </div>
</div>
<div id="dvResult"></div>
</section></div></div></div></section></div></form></body></html>
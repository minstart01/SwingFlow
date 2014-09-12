<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>

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
	
}



#main_container ul, #main_container ol{
	list-style-type: none;
	list-style-position: outside;
	list-style-image: none;
}
#main_container a{
	color: #000;
	text-decoration: none;
	cursor: pointer;
}


/* body, table, input, textarea, select, button
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
} */

#skipCt
{
	min-height: 650px;
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
.reservationBox .itineraryBoxPs
{
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs
{
	position: relative;
	z-index: 10;
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody th, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody td
{
	line-height: 19px;
	font-family: "돋움";
	font-size: 11px;
	font-weight: normal;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody th strong, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody td strong
{
	color: #333;
	font-size: 12px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody td
{
	text-align: right;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.onemTotal th, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.onemTotal td
{
	padding-bottom: 3px;
	border-bottom-color: #bfbfbf;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.onemTotal th strong, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.onemTotal td strong
{
	color: #201cb4;
	font-size: 13px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.tr_price th, .reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .abroadBox4 .abroadInner .abroadCt .tableType1Box .tableType1_1 tbody tr.tr_price td
{
	padding-top: 6px;
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li
{
	line-height: 24px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 0px;
	padding-left: 15px;
	background-image: url("/images/bl/bl_black2.gif");
	background-attachment: scroll;
	background-repeat: no-repeat;
	background-position-x: 6px;
	background-position-y: 9px;
	background-size: auto;
	background-origin: padding-box;
	background-clip: border-box;
	background-color: transparent;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li div.box-intro
{
	line-height: 21px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: -3px;
	margin-left: 0px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li a
{
	text-decoration: underline;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li img
{
	vertical-align: middle;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi
{
	display: inline-block;
	position: relative;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .abroadInner
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .abroadInner .aTitle
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .abroadInner .aTitle p strong
{
	color: #201cb4;
	font-family: "돋움";
	font-size: 11px;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .abroadInner .abroadCt
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .abroadInner .abroadCt a
{
	color: #201cb4;
	font-family: "돋움";
	font-size: 11px;
	text-decoration: underline;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .listBox .listInner li .abPosi .abroadBox2 .btn_close2
{
	top: 4px;
	right: 11px;
	position: absolute;
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
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr ul li
{
	line-height: 18px;
	border-bottom-color: #adafb2;
	border-bottom-width: 1px;
	border-bottom-style: solid;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr ul li::after
{
	clear: both;
	display: block;
	content: "";
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr ul li .leftCnt
{
	width: 78px;
	color: #333;
	float: left;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr ul li .RightPrice
{
	width: 92px;
	color: #5e14cc;
	float: left;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr .totalPrice
{
	color: #5e14cc;
	line-height: 30px;
	font-family: "돋움";
	font-size: 16px;
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr .totalPrice strong
{
	font-family: Arial;
	font-size: 24px;
	font-weight: bold;
}
.reservationBox .fareBox.itineraryBoxPs .priceBox .priceInner .listCt .priceAr .priceArZ
{
	display: inline;
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
<body id="FDFF"><form name="frmUpsell" id="frmUpsell" method="post"><div id="wrap_container">
<%-- <jsp:include page="/Category/Common/top.jsp"></jsp:include> --%>



<section id="main_container"><div class="reservationBox" id="containerBox"><div id="container">
  <div id="skipCt"><section id="containerBody"><div class="itineraryBoxPs fareBox" style="border:1px solid black;border-radius:20px; height:280px" ;><div class="fareInner">

<div class="priceBox" id="totalPriceBox" style="display: block;">
 
 								
 <div class="priceInner">
  
  									
  <div class="h4_type01Box">
   
   										
   <h4>
    예상 총액 운임
   </h4>
   									
  </div>
  
  									
  <div class="listCt">
   
   
   										
   <div class="listBox">
    
    											
    <div class="listInner">
     
     												
     <ul id="itineraryList">
      <li>
        
       <div class="box-intro">
         	<strong>2014/09/12/금 09:00 </strong> 	
        <div class="abPosi">
          		<span class="btn_CpopupLayer"><strong>(<a href="#none">OZ108</a>)</strong></span> 		
         <div class="abroadBox2 BoxClose">
           			
          <div class="abroadInner">
            				
           <div class="aTitle">
             					
            <p>
              						<strong>OZ108 안내</strong> 					
            </p>
             				
           </div>
            				
           <div class="abroadCt">
             					<strong>출발</strong> : 2014/09/12/금 09:00, 인천<br /> 					
             					<strong>도착</strong> : 2014/09/30/화 11:10, 도쿄/나리타<br /> 					<strong>운항</strong> : 아시아나항공<br /> 					<strong>기종</strong> : 321 <a id="searchFlightInfo" href="#none" fltno="108" fltcrrcd="OZ" fltdate="20140811181000" fltdepairport="ICN" opcode="">[좌석배치도 보기]</a><br /> 				
           </div>
            			
          </div>
           			<a class="btn_close2" href="#none"><img alt="OZ108 안내 팝업 닫기" src="/images/btn/btn_close.gif" /></a> 		
         </div>
          	
        </div>
         
       </div>
        인천 -  도쿄/나리타
      </li>
      <li>
        
       <div class="box-intro">
         	<strong>2014/09/30/화 12:30 </strong> 	
        <div class="abPosi">
          		<span class="btn_CpopupLayer"><strong>(<a href="#none">OZ105</a>)</strong></span> 		
         <div class="abroadBox2 BoxClose">
           			
          <div class="abroadInner">
            				
           <div class="aTitle">
             					
            <p>
              						<strong>OZ105 안내</strong> 					
            </p>
             				
           </div>
            				
           <div class="abroadCt">
             					<strong>출발</strong> : 2014/09/12/금 09:00, 도쿄/나리타<br /> 					<strong>도착</strong> : 2014/09/30/화 11:10, 인천<br /> 					<strong>운항</strong> : 아시아나항공<br /> 					<strong>기종</strong> : 74E <a id="searchFlightInfo" href="#none" fltno="105" fltcrrcd="OZ" fltdate="20140816190000" fltdepairport="NRT" opcode="">[좌석배치도 보기]</a><br /> 				
           </div>
            			
          </div>
           			<a class="btn_close2" href="#none"><img alt="OZ105 안내 팝업 닫기" src="/images/btn/btn_close.gif" /></a> 		
         </div>
          	
        </div>
         
       </div>
        도쿄/나리타 -  인천
      </li>
     </ul>
     
     											
    </div>
    
    										
   </div>
   
   
   										
   <div class="priceAr">
    
    											<input id="hidTotalPrice" type="hidden" value="2287900" />
    											<input id="hidCurrency" type="hidden" value="KRW" />
    											
    <ul id="paxPriceArea">
     <li>
      	<span class="leftCnt"><strong>성인 2</strong></span>	<span class="RightPrice">1,259,600 원</span>
     </li>
     <li>
      	<span class="leftCnt"><strong>소아 2</strong></span>	<span class="RightPrice">975,800 원</span>
     </li>
     <li>
      	<span class="leftCnt"><strong>유아 1</strong></span>	<span class="RightPrice">52,500 원</span>
     </li>
    </ul>
    
    											
    <p class="totalPrice" id="totalPrice">
     <strong>2,287,900 원</strong>
    </p>
    
    
    											
    <!-- 예상 금액 자세히 보기 START -->
    
    											
    <div class="priceArZ">
     

     												
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
             <strong class="ttText">총액 운임</strong> <strong class="pcTotel" id="totalAmountId">2,287,900</strong> <span class="sm" id="currencySymbol">원</span>
            </td>
            
            																		
           </tr>
           
           																	
          </tfoot>
          
          																	
          <tbody id="paxPriceDetailArea">
           <tr class="tr_price">
            	
            <th id="fare01" scope="row">
             <strong>성인 운임</strong>
            </th>
            	
            <td headers="go fare01">
             <strong>525,000</strong> <span class="sm">원</span>
            </td>
           </tr>
           <tr>
            	
            <th id="oil01" scope="row">
             유류할증료
            </th>
            	
            <td headers="go oil01">
             50,200 원
            </td>
           </tr>
           <tr>
            	
            <th id="tax01" scope="row">
             세금/제반요금
            </th>
            	
            <td headers="go tax01">
             54,600 원
            </td>
           </tr>
           <tr>
            	
            <th id="number01" scope="row">
             인원수
            </th>
            	
            <td headers="go number01">
             2 명
            </td>
           </tr>
           																		
           <tr class="onemTotal">
            	
            <th id="eachTotal01" scope="row">
             <strong>합계</strong>
            </th>
            	
            <td headers="go eachTotal01">
             <strong>1,259,600</strong> <span class="sm">원</span>
            </td>

           </tr>
           <tr class="tr_price">
            	
            <th id="fare01" scope="row">
             <strong>소아 운임</strong>
            </th>
            	
            <td headers="go fare01">
             <strong>393,700</strong> <span class="sm">원</span>
            </td>
           </tr>
           <tr>
            	
            <th id="oil01" scope="row">
             유류할증료
            </th>
            	
            <td headers="go oil01">
             50,200 원
            </td>
           </tr>
           <tr>
            	
            <th id="tax01" scope="row">
             세금/제반요금
            </th>
            	
            <td headers="go tax01">
             44,000 원
            </td>
           </tr>
           <tr>
            	
            <th id="number01" scope="row">
             인원수
            </th>
            	
            <td headers="go number01">
             2 명
            </td>
           </tr>
           																		
           <tr class="onemTotal">
            	
            <th id="eachTotal01" scope="row">
             <strong>합계</strong>
            </th>
            	
            <td headers="go eachTotal01">
             <strong>975,800</strong> <span class="sm">원</span>
            </td>
           </tr>
           <tr class="tr_price">
            	
            <th id="fare01" scope="row">
             <strong>유아 운임</strong>
            </th>
            	
            <td headers="go fare01">
             <strong>52,500</strong> <span class="sm">원</span>
            </td>
           </tr>
           <tr>
            	
            <th id="oil01" scope="row">
             유류할증료
            </th>
            	
            <td headers="go oil01">
             0 원
            </td>
           </tr>
           <tr>
            	
            <th id="tax01" scope="row">
             세금/제반요금
            </th>
            	
            <td headers="go tax01">
             0 원
            </td>
           </tr>
           <tr>
            	
            <th id="number01" scope="row">
             인원수
            </th>
            	
            <td headers="go number01">
             1 명
            </td>
           </tr>
           																		
           <tr class="onemTotal">
            	
            <th id="eachTotal01" scope="row">
             <strong>합계</strong>
            </th>
            	
            <td headers="go eachTotal01">
             <strong>52,500</strong> <span class="sm">원</span>
            </td>
           </tr>
          </tbody>
          
          																
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

</div></div>
              <p>&nbsp;</p>
<div ><span class="bt_a" style="margin-left:50px;">
                <a  id="" href="R2_.jsp.jsp">이전단계</a></span>
                <span style="margin-left:500px;"><a id="" href="R4_PassengerInput.jsp">계속하기</a></span>
</div>
              

</section></div></div></div></section></div>


</form></body></html>
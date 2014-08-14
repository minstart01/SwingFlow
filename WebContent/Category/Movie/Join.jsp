<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
.join_form
{	
	
	width:780px;
	padding-top: 120px;
	margin-bottom: 200px;	
}
.join_table{
	font-size:17px;	
	font-weight:bold;	
	font-family:돋움;
}
.first_td{
	text-align:right;
	
}
.sl
{
	margin-top:10px;	
}
.over_button, .zipcode_bt{
	font-size:17px;	
	height:35px;
	margin-left:10px;	
	width:100px;
	font-weight:bold;	
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
}
.text1{
	padding-left:7px;
	height:28px;
	width:240px;
	font-weight:bold;	
}
.zipcode{
	padding-left:7px;
	height:28px;
	width:104px;
	font-weight:bold;	
}
.text{
	height:28px;
	width:350px;
	font-size:15px;
	padding-left:7px;
	font-weight:bold;	
}
.bt_box
{	
	margin-top:20px;
	
}
.bt_box input{
	font-size:17px;	
	width:150px;
	height:35px;	
	font-weight:bold;	
		background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	
}
.submit{
	margin-right:15px;	
}





/* 생년월일 */
.year_div
{
	border:1px solid gray;
	width:65px; 
	height:28px; 
	cursor:pointer;	
	float:left;
}
.month_div, .day_div
{
	border:1px solid gray;
	width:50px; 
	height:28px; 
	cursor:pointer;	
	float:left;
}

/* 공통 */
.font_span
{
	float:left;	
	margin:7px 3px 0 3px;
}
.select_span
{	
	float:left; 
	padding:5px 0 0 4px;
}
.img_span
{
	padding:5px 3px 0 0; 
	float:right;
}
.select_year
{	
	border:1px solid d4e7f5; 
	width:65px;
	height:200px;
	overflow:auto;
	margin:0px;
	padding:0px;
	position:relative;
	top:5px;
	z-index:9999;
	background:white;
	display:none;
	overflow-x:hidden;
}
.select_month
{
	border:1px solid #d4e7f5;
	width:50px;
	height:200px;
	overflow:auto;
	margin:0px;
	padding:0px;
	position:relative;
	top:4px;
	z-index:9999;
	background:white;
	display:none;
	overflow-x:hidden;
}
.select_day{
	border:1px solid #d4e7f5;
	width:50px;
	height:200px;
	overflow:auto;
	margin:0px;
	padding:0px;
	position:relative;
	top:4px;
	z-index:9999;
	background:white;
	display:none;
	overflow-x:hidden;
}
.select_div ul
{
	list-style:none; 
	margin:0; 
	padding:0px; 
	text-align:center;
}
.select_div ul li
{	
	display:block; 
	border-bottom:1px solid #d4e7f5; 
	padding:5px 0 5px 0; 
}
.select_div ul li a
{
	text-decoration:none;
	color:black;
	display: block;
}
.select_div ul li:hover{
	background:#f0f8fd;	
}
</style>
<script src="jquery-2.1.1.js"></script>
<script>
/* 아이디 중복확인 */
function idChk(check){
 var id = $("#id").val();
 if(id==check){
  alert("아이디가 중복됩니다");
 }
}

/* 비밀번호 길이 */
function pwdLength(){
	var chk1 = /\d/;
	var chk2 = /[a-z]/i;
	var pwd = $("#pwd").val();

	
	if($("#id").val()==""){
		alert("아이디를 입력하세요");
		$("#id").focus();
		
	}
	
	if(pwd.length < 6){
		$("#pwdlength").css({"font-size":"13px","color":"red"});
		$("#pwdlength").text("");
		$("#pwdlength").append("비밀번호는 6자리 이상으로 입력해주세요.");
	}else if(pwd.length >= 6){
		$("#pwdlength").text("");
		if (chk1.test(pwd) && chk2.test(pwd)){
	 }else{
		 $("#pwdlength").text("비밀번호는 영문과 숫자 모두 포함되어야 합니다.");
	 }
	}

}


/* 비밀번호 확인 */
function pwdChk(){
 var pwd = $("#pwd").val();
 var pwd2 = $("#pwd2").val();
	if(pwd2 ==""){
		$("#pwdcheck").css({"font-size":"13px","color":"red"});
		
		$("#pwdcheck").text("");
		$("#pwdcheck").append("비밀번호 미입력");	
	}
 
 	if (pwd2.length>0 && pwd != pwd2) {
		$("#pwdcheck").css({"font-size":"13px","color":"red"});
		
		$("#pwdcheck").text("");
		$("#pwdcheck").append("비밀번호 불일치");
	}else if(pwd ==pwd2){
		$("#pwdcheck").css({"font-size":"13px","color":"#49ba7c"});
		
		$("#pwdcheck").text("");
		$("#pwdcheck").append("비밀번호 일치");	
	}
}



/ * 아이디 검사 */
function regChk(){
 var id = $("#id").val();
 var regx = /^[a-z0-9-_]*$/;
  if (!regx.test(id) || id.length<6){
 	$("#idcheck").css("color","red");
 }else{
	$("#idcheck").css("color","black");
 }

}



function date(date){
	if(date=="year"){
		$(".select_" + date).show();
		$(".select_month").hide();
		$(".select_day").hide();
		$("." + date + "_div").attr("onclick","date('off')");
			
	} else if(date=="month"){
		$(".select_" + date).show();
		$(".select_year").hide();
		$(".select_day").hide();
		$("." + date + "_div").attr("onclick","date('off')");
	}else if(date=="day"){
		$(".select_" + date).show();
		$(".select_month").hide();
		$(".select_year").hide();
		$("." + date + "_div").attr("onclick","date('off')");
	}else if(date=="off"){
		$(".select_year").hide();
		$(".year_div").attr("onclick","date('year')");
		$(".select_month").hide();
		$(".month_div").attr("onclick","date('month')");
		$(".select_day").hide();
		$(".day_div").attr("onclick","date('day')");
	}
}

function select(date,no){
	$(".select_" + date).hide();
	$(".span_" + date).text($(".sel_" + date + no).text());
	
}

function popup(url,width,height){
	
	
	window.open(url,"popup","width=" + width + ", height=" + height + ",left=400,top=200");
	
}
</script>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>

<center><div class="join_form">

<div align="center" style="margin-bottom:30px; width:100%;" >
<div style="float:left; margin-left: 25px;"><h1>회원가입</h1></div>
<hr style="width:720px; border:1px solid #d9d9d9;" />
</div>
	<table class="join_table" cellpadding="6"  >
    	<tr>
        	<td class="first_td"><label for="id">아이디</label></td>
            <td><input type="text" class="text1" id="id" name="id" onkeyup="regChk();" /><input type="button" value="중복확인" class="over_button"/></td>
            <td width="155"><span id="idcheck" style="font-size:13px;">영문소문자,숫자 조합 6~40자(-,_사용가능)</span></td>
        </tr>
      	<tr>
        	<td class="first_td"><label for="password">비밀번호</label></td>
            <td><input type="password" class="text" id="pwd" name="pwd" onkeyup="pwdLength();"/></td>
            <td width="155"><span id="pwdlength"></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="repassword">비밀번호 확인</label></td>
            <td><input type="password" class="text" id="pwd2" onkeyup="pwdChk();"/></td>
            <td><span id="pwdcheck"></span></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="name">이름</label></td>
            <td><input type="text" class="text" id="name" name="name"/></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="sex">성별</label></td>
            <td><input type="radio" class="sex" name="sex"/>남자<input type="radio" class="sex" name="sex" />여자</td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="birth">생년월일</label></td>
            <td>
            
            <div class="year_div" onclick="date('year');">
            <span class="span_year select_span">년도</span><span class="img_span"><img src="button.png" /></span>
             <div class="select_div select_year">
            	<ul>
              		<li><a href="javascript:select('year',0);" class="sel_year0">년도</a></li>
                	<li><a href="javascript:select('year',1);" class="sel_year1">2014</a></li>
                 	<li><a href="javascript:select('year',2);" class="sel_year2">2013</a></li>
                    <li><a href="javascript:select('year',3);" class="sel_year3">2012</a></li>
                    <li><a href="javascript:select('year',4);" class="sel_year4">2011</a></li>
                    <li><a href="javascript:select('year',5);" class="sel_year5">2010</a></li>
                    <li><a href="javascript:select('year',6);" class="sel_year6">2009</a></li>
                    <li><a href="javascript:select('year',7);" class="sel_year7">2008</a></li>
                    <li><a href="javascript:select('year',8);" class="sel_year8">2007</a></li>
                    <li><a href="javascript:select('year',9);" class="sel_year9">2006</a></li>
                </ul>
            	
            </div>

             </div>
                        <span class="font_span">년</span>
            <div class="month_div" onclick="date('month');">
            <span class="span_month select_span">월</span><span class="img_span"><img src="button.png" /></span>
              <div class="select_div select_month">
            	<ul>
                	<li><a href="javascript:select('month',0);" class="sel_month0">월</a></li>
                	<li><a href="javascript:select('month',1);" class="sel_month1">1</a></li>
                 	<li><a href="javascript:select('month',2);" class="sel_month2">2</a></li>
                	<li><a href="javascript:select('month',3);" class="sel_month3">3</a></li>
                    <li><a href="javascript:select('month',4);" class="sel_month4">4</a></li>
                	<li><a href="javascript:select('month',5);" class="sel_month5">5</a></li>
                    <li><a href="javascript:select('month',6);" class="sel_month6">6</a></li>
                	<li><a href="javascript:select('month',7);" class="sel_month7">7</a></li>
                    <li><a href="javascript:select('month',8);" class="sel_month8">8</a></li>
                	<li><a href="javascript:select('month',9);" class="sel_month9">9</a></li>
                    <li><a href="javascript:select('month',10);" class="sel_month10">10</a></li>
                	<li><a href="javascript:select('month',11);" class="sel_month11">11</a></li>
                </ul>
            	
            </div>
             </div>
          
            
            <span class="font_span">월</span>
           <div class="day_div" onclick="date('day');">
            <span class="span_day select_span">일</span><span class="img_span"><img src="button.png" /></span>
            <div class="select_div select_day">
            	<ul>
               		<li><a href="javascript:select('day',0);" class="sel_day0">일</a></li>
                	<li><a href="javascript:select('day',1);" class="sel_day1">1</a></li>
                    <li><a href="javascript:select('day',2);" class="sel_day2">2</a></li>
                    <li><a href="javascript:select('day',3);" class="sel_day3">3</a></li>
                    <li><a href="javascript:select('day',4);" class="sel_day4">4</a></li>
                    <li><a href="javascript:select('day',5);" class="sel_day5">5</a></li>
                    <li><a href="javascript:select('day',6);" class="sel_day6">6</a></li>
                    <li><a href="javascript:select('day',7);" class="sel_day7">7</a></li>
                    <li><a href="javascript:select('day',8);" class="sel_day8">8</a></li>
                    <li><a href="javascript:select('day',9);" class="sel_day9">9</a></li>
                    <li><a href="javascript:select('day',10);" class="sel_day10">10</a></li>
                    <li><a href="javascript:select('day',11);" class="sel_day11">11</a></li>
                    <li><a href="javascript:select('day',12);" class="sel_day12">12</a></li>
                    <li><a href="javascript:select('day',13);" class="sel_day13">13</a></li>
                    <li><a href="javascript:select('day',14);" class="sel_day14">14</a></li>
                 	
                </ul>
            	
            </div>
             </div>
            
            <span class="font_span">일</span>
            <input type="radio" name="sl" class="sl" />양력<input type="radio" name="sl" class="sl" />음력</td>
            
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="zipcode">우편번호</label></td>
        	<td><input type="text" class="zipcode">&nbsp;-&nbsp;<input type="text" class="zipcode"><input type="button" value="검색" class="zipcode_bt" onclick="popup('ZipcodeSearch.jsp','440','360');"></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="address">주소</label></td>
        	<td><input type="text" class="text"/></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="detailaddress">상세주소</label></td>
        	<td><input type="text" class="text" />
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일</label></td>
            <td><input type="text" class="text" /></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일수신</label></td>
            <td><input type="radio" name="emailcheck" checked="checked"/>수신함<input type="radio" name="emailcheck"/>수신안함</td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="phone">휴대폰</label></td>
            <td><input type="text" class="text" /></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">SMS수신</label></td>
            <td><input type="radio" name="smscheck" checked="checked"/>수신함<input type="radio" name="smscheck"/>수신안함</td>
            <td></td>
        </tr>
    </table>
	<div align="center" style="margin-top:30px; width:100%;" >
  <hr style="width:720px; border:1px solid #d9d9d9;" />
</div>
<div class="bt_box" align="center">
	<input type="button" class="submit" value="가입하기"/><input type="button" value="다시입력" />
</div>
</div>

</center>
 <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
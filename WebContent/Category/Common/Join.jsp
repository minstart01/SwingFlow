<%@page import="Common.DAO.MemberDAO"%>
<%@page import="Common.DTO.Member"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Join.css" />

<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>


$(function (){
	/* 아이디 중복확인 */
	$(".over_button").click(function (e){

		
		var id = $("#id").val();
		
				
		$("#idcheck").load("IdCheck.jsp?mId=" + id);
		
		
		/* $.ajax({
			url : 'IdCheck.jsp',
			type : 'GET',
			data : {
				mId : encodeURI(id),
			},
			success : overcheck
		}); */
	});
	
	/* 항목 입력 */
	$(".submit").click(function (e){
		var id = $("#id").val();
		var pwd = $("#pwd").val();
		var pwd2 = $("#pwd2").val();
		var name = $("#name").val();
		var sex = $(':radio[name="sCode"]:checked').val();
		var year = $(".span_year").text();
		var month = $(".span_month").text();
		var day = $(".span_day").text();
		var sl = $(':radio[name="bCode"]:checked').val();
		var zipcode = $(".zipcode1").val();
		var zipcode2 = $(".zipcode1").val();
		var addrtest = $(".addrtext").val();
		var addrdetail = $(".addrdetail").val();
		var email = $(".email").val();
		var phone = $(".phone").val();
				
		if(id == ""){
			alert("아이디를 입력하세요.")
		}
		if(pwd == "" || pwd2 == ""){
			alert("비밀번호를 입력하세요.");
		}
		if(name == ""){
			alert("이름을 입력하세요.");
		}
		if(sex == null){
			alert("성별을 체크하세요.");
		}
		if(year == "년도"){
			alert("년도를 입력하세요.");
		}
		if(month == "월"){
			alert("월을 입력하세요.");
		}
		if(day == "일"){
			alert("일을 입력하세요.");
		}
		if(sl == null){
			alert("양력/음력을 체크하세요");
		}
		if(zipcode == "" || zipcode2 =="" || addrtest == ""){
			alert("주소를 입력하세요");
		}
		if(addrdetail == ""){
			alert("상세 주소를 입력하세요");
		}
		if(email == ""){
			alert("이메일을 입력하세요");
		}
		if(phone == ""){
			alert("핸드폰을 입력하세요");
		}
		if(id != "" && pwd != "" && pwd2 != "" && name != "" && sex != null && year != "년도" && month != "월" && day != "일" && sl != null && zipcode != "" && zipcode2 != "" && addrtest != "" && addrdetail != "" && email != "" && phone != ""){
			$(".mBirth").val($(".myear").val() + $(".mmonth").val() + $(".mday").val());
			document.frm.submit();
		}
		
	});
});





/* 비밀번호 길이 */
function pwdLength(){
	var chk1 = /\d/;
	var chk2 = /[a-z]/i;
	var pwd = $("#pwd").val();
	 var pwd2 = $("#pwd2").val();
	
	 if (pwd2.length>0 && pwd != pwd2) {
			$("#pwdcheck").css({"font-size":"13px","color":"red"});
			
			$("#pwdcheck").text("");
			$("#pwdcheck").append("비밀번호 불일치");
	 }
	 
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

/* 핸드폰 번호 체크 */
function phone_check(txt)
{
     var num = "0123456789";
     var check = 0;
     var str = txt.value;
     var len = txt.value.length;

    for(var i=0; i<len; i++)
    	if(num.indexOf(str.substring(i,i+1)) >= 0) 
    		check++;
    	
     if(check != len){
            alert('숫자만 입력이 가능합니다')
            txt.value=''
     }
}


/* 아이디 검사 */
function regChk(){
 var id = $("#id").val();
 var regx = /^[a-z0-9-_]*$/;
  if (!regx.test(id) || id.length<6){
 	$("#idcheck").css("color","red");
 	$("#idcheck").text("영문소문자,숫자 조합 6~40자(-,_사용가능)");
 }else{
	$("#idcheck").css("color","black");
	$("#idcheck").text("영문소문자,숫자 조합 6~40자(-,_사용가능)");
 }
  

}

/* 생년월일 */
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
	if((date == "month" || date == "day") && no<10){
		$(".m" + date).val("0" + $(".sel_" + date + no).text());
	}else{
		$(".m" + date).val($(".sel_" + date + no).text());
	}
}

/* 팝업창 */
function popup(url,width,height){
	
	var iwidth = ($("body").innerWidth()/2) - (width/2);
	var iheight = ($("body").innerHeight()/2) - height;
	/* alert(iwidth);
	alert(iheight); */
	window.open(url,"popup","width=" + width + ", height=" + height + ",left=" + iwidth + ",top=" + iheight);
}

/* 회원가입 버튼 */
/* function Join(){
	$(".mBirth").val($(".myear").val() + $(".mmonth").val() + $(".mday").val());
	document.frm.submit();
}
 */

/* 우편번호 */
function setChildValue(seq, zipcode, sido, gugun, dong, ri, bunji){
	
	$(".aCode").val(seq);
	var zipcode1 = zipcode.substring(0,3);
	var zipcode2 = zipcode.substring(4,7);
	
	$(".zipcode1").val(zipcode1);
	$(".zipcode2").val(zipcode2);
	
	$(".addrtext").val(sido + " " + gugun + " " + dong + " " + ri);
	$(".addrdetail").val(bunji + " ");
	$(".addrdetail").focus();

}



</script>
</head>

<body>
<form action="JoinPro.jsp" name="frm">
<input type="hidden" class="myear">
<input type="hidden" class="mmonth">
<input type="hidden" class="mday">
<input type="hidden" class="mBirth" name="mBirth">
<input type="hidden" class="aCode" name="aCode">

<jsp:include page="/Category/Common/top.jsp"></jsp:include>

<center><div class="join_form">

<div align="center" style="margin-bottom:30px; width:100%;" >
<div style="float:left; margin-left: 25px;"><h1>회원가입</h1></div>
<hr style="width:720px; border:1px solid #d9d9d9;" />
</div>
	<table class="join_table" cellpadding="6"  >
    	<tr>
        	<td class="first_td"><label for="id">아이디</label></td>
            <td><input type="text" class="text1" id="id" name="mId" onkeyup="regChk();" /><input type="button" value="중복확인" class="over_button"/></td>
            <td width="155"><span id="idcheck" style="font-size:13px;">영문소문자,숫자 조합 6~40자(-,_사용가능)</span></td>
        </tr>
      	<tr>
        	<td class="first_td"><label for="password">비밀번호</label></td>
            <td><input type="password" class="text" id="pwd" name="mPwd" onkeyup="pwdLength();"/></td>
            <td width="155"><span id="pwdlength"></span></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="repassword">비밀번호 확인</label></td>
            <td><input type="password" class="text" id="pwd2" onkeyup="pwdChk();"/></td>
            <td><span id="pwdcheck"></span></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="name">이름</label></td>
            <td><input type="text" class="text" id="name" name="mName"/></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="sex">성별</label></td>
            <td><input type="radio" class="sex" name="sCode" value="1"/>남자<input type="radio" class="sex" name="sCode" value="2" />여자</td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="birth">생년월일</label></td>
            <td>
            <div class="year_div" onclick="date('year');">
            <span class="span_year select_span">년도</span><span class="img_span"><img src="/SwingFlow/images/Common/button.png" /></span>
             <div class="select_div select_year">
            	<ul>
            		
              		<li><a href="javascript:select('year',0);" class="sel_year0">년도</a></li>
              		<% for(int i=1;i<=80;i++){ %>
                	<li onclick="select('year',<%=i %>);"><a href="javascript:select('year',<%=i %>);" class="sel_year<%=i %>"><%=2015-i %></a></li>
                	<%}%>
                 </ul>
            	
            </div>

             </div>
                        <span class="font_span">년</span>
            <div class="month_div" onclick="date('month');">
            <span class="span_month select_span">월</span><span class="img_span"><img src="/SwingFlow/images/Common/button.png" /></span>
              <div class="select_div select_month">
            	<ul>
                	<li><a href="javascript:select('month',0);" class="sel_month0">월</a></li>
                	<% for(int i=1;i<=12;i++){ %>
                	<li onclick="select('month',<%=i %>);"><a href="javascript:select('month',<%=i %>);" class="sel_month<%=i %>"><%=i %></a></li>
                	<%} %>
                </ul>
            	
            </div>
             </div>
          
            
            <span class="font_span">월</span>
           <div class="day_div" onclick="date('day');">
            <span class="span_day select_span">일</span><span class="img_span"><img src="/SwingFlow/images/Common/button.png" /></span>
            <div class="select_div select_day">
            	<ul>
               		<li><a href="javascript:select('day',0);" class="sel_day0">일</a></li>
               		<% for(int i=1;i<=31;i++){ %>
                	<li onclick="select('day',<%=i %>);"><a href="javascript:select('day',<%=i %>);" class="sel_day<%=i %>"><%=i %></a></li>
                	<%} %>
                  
                 	
                </ul>
            	
            </div>
             </div>
            
            <span class="font_span">일</span>
            <input type="radio" name="bCode" class="sl" value="1" />양력<input type="radio" name="bCode" class="sl" value="2"/>음력</td>
            
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="zipcode">우편번호</label></td>
        	<td><input type="text" readonly="readonly" class="zipcode1 zipcode">&nbsp;-&nbsp;<input type="text" class="zipcode2 zipcode" readonly="readonly"><input type="button" value="검색" class="zipcode_bt" onclick="popup('/SwingFlow/Category/Common/ZipcodeSearch.jsp','475','360');"></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="address">주소</label></td>
        	<td><input type="text" class="addrtext text" readonly="readonly"/></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="detailaddress">상세주소</label></td>
        	<td><input type="text" class="text addrdetail" name="mDetailAddr" />
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일</label></td>
            <td><input type="text" class="text email" name="mEmail" /></td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일수신</label></td>
            <td><input type="radio" name="eCode" checked="checked" value="1"/>수신함<input type="radio" name="eCode" value="2"/>수신안함</td>
            <td></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="phone">휴대폰</label></td>
            <td><input type="text" class="text phone" name="mPhone" onkeyup="phone_check(mPhone);" /></td>
            <td width="155"><span id="phonecheck" style="font-size:13px;">-&nbsp;제외</span></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">SMS수신</label></td>
            <td><input type="radio" name="pCode" checked="checked" value="1"/>수신함<input type="radio" name="pCode"/>수신안함</td>
            <td></td>
        </tr>
    </table>
	<div align="center" style="margin-top:30px; width:100%;" >
  <hr style="width:720px; border:1px solid #d9d9d9;" />
</div>
<div class="bt_box" align="center">
	<input type="button" class="submit" value="가입하기" onclick="Join();"/><input type="button" value="다시입력" />
</div>
</div>

</center>

<div id="resultid">aaa</div>
 <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
 </form>
</body>
</html>
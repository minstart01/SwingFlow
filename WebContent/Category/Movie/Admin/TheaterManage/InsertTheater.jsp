<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
		width:1248px;
		/* clear:both; */
		
	}
#main_content{
	font-size:13px;
	float:left;

	margin-top: 25px;
	margin-left: 25px;
	/* top:30px;
	left: 275px;
	width: 948px;
 */
}

.insert_title{
	
	font-size:20px;
	font-weight:bold;
	margin-bottom:10px;
}


.div_table table
{
	margin:0 0 0 0;	
}

/* 버튼 */
.input_td{
	padding: 5px 5px 5px 5px;	
}
.div_button
{

	margin-top:7px;

	text-align:center;

	width:668px;	
}
.div_button input{
	width:100px;	
}

.addr_bt{
	width: 62px;
	margin-left: 8px;
}
.addsit_bt{
	width:90px;
	margin-left: 8px;
}

.selr, .selc{
	margin-left: 10px;
	margin-right: 18px;
}

	
</style>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>

	/* 상영관 추가 */
	function addgwan(){
		var number = $(".screen").val();
		$(".screenno").val(number);
		
		var sel1 = "";
		var sel2 = "";
		for(var i=1;i<=10;i++){
			sel1 += "<option class='row" + i + "' value='" + i + "'>" + i + "</option>";	
		}
		for(var i=1;i<=10;i++){
			sel2 += "<option class='column" + i + "' value='" + i + "'>" + i + "</option>";	
		}
		
		var str = "<td>행<select><option>a</option><option>b</option><option>c</option><option>d</option><option>e</option><option>f</option><option>g</option><option>f</option></select>";
 	  		 str += "열<select><option>a</option><option>b</option><option>c</option><option>d</option><option>e</option><option>f</option><option>g</option><option>f</option></select>총좌석</td>";
 	  		$(".tbodys").empty();
		for(var i=1;i<=number;i++){	
			$(".tbodys").append("<tr><td>" + i + "관</td><td>행<select name='tRow" + i + "' class='sel" + i + " selr' onchange='tsit(" + i + ");'>" + sel1 + "</select>열<select name='tColumn" + i + "' class='sels" + i + " selc' onchange='tsit(" + i + ");'>" +  sel2 + "</select>총좌석 : <span class='tsit" + i + "'></span><input type='hidden' class='tTotalSit" + i + "' name='tTotalSit" + i + "'></td></tr>");
		}
		
	}
	
	/* 좌석수 등록 */
	function tsit(no){
		
		var gop = $(".sel" + no).val() + "*" + $(".sels" + no).val(); 
		var plus = "";
		$(".tsit" + no).text(eval(gop));
		$(".tTotalSit" + no).val($(".tsit" + no).text());
		var number = $(".screen").val();
		
		for(var i=1;i<=number;i++){
			if(i==number){
				plus += $(".tsit" + i).text();
				
			}else
			plus += $(".tsit" + i).text() + " + ";
		}
		$(".total_sit").text(eval(plus));
		
		$(".total_hidden").val(eval(plus));
	}
	
	/* 팝업창 */
	function popup(url,width,height){
		
		var iwidth = ($("body").innerWidth()/2) - (width/2);
		var iheight = ($("body").innerHeight()/2) - height;
		/* alert(iwidth);
		alert(iheight); */
		window.open(url,"popup","width=" + width + ", height=" + height + ",left=" + iwidth + ",top=" + iheight);
	}
     
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

	$("#back_bt").click(function (e){
		history.go(-1);
	});
</script>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<form action="InsertTheaterPro.jsp">
<input type="hidden" class="screenno" name="screenno">
<div id="wrapper">
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
<div class="insert_title">영화관 등록하기</div>
<div class="div_table">
<input type="hidden" name="aCode" class="aCode">
<input type="hidden" class="total_hidden" name="tTotalSit">
<table border="1" cellspacing="0" width="670" cellpadding="4">
    	<tr>
        	<td>영화관명</td>
            <td><input type="text" size="48" name="tName" /></td>            
        </tr>

        <tr>
        	<td>우편번호</td>
            <td><input type="text" size="15" readonly="readonly" class="zipcode1 zipcode">&nbsp;-&nbsp;<input type="text" size="15" class="zipcode2 zipcode" readonly="readonly"><input type="button" class="addr_bt" value="검색" onclick="popup('/SwingFlow/Category/Common/ZipcodeSearch.jsp','475','360');" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="address">주소</label></td>
        	<td><input type="text" class="addrtext text" readonly="readonly" size="48"/>
        	</td>
        </tr>
        <tr>
        	<td class="first_td"><label for="detailaddress">상세주소</label></td>
        	<td><input type="text" class="text addrdetail" name="tDetailAddr" size="48"/>
         </tr>
         <tr>
        	<td>전화번호</td>
            <td><input type="text" size="48" name="tPhone" /></td>
        </tr>
        <tr>
        	<td>스크린수</td>
            <td><input type="text" class="screen" size="34" name="tScreen"/><input type="button" value="좌석등록" onclick="addgwan();" class="addsit_bt" /></td>
        </tr>
        <tbody class="tbodys">
      
        </tbody>
        <tr>
        	<td>총좌석</td>
            <td class="total_sit"></td>
        </tr>
    </table>
    </div>
        <div class="div_button">
	<input type="submit" value="등록하기" />
  	<a href="ListTheater.jsp"><input type="button" value="뒤로가기" id="back_bt" /></a>
	</div>
    </div>
    </div>
    </form>
    <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
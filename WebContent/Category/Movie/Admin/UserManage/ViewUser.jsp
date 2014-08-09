<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	 
		height:850px;
		width:1250px;
		clear:both;
		
	}
#main_content{
	border:1px solid black;
	position:absolute;
	top:30px;
	left: 275px;
	width: 950px;
	height:1000px;
}

.insert_title{
	margin-left:10px;	
	margin-top:15px;
}


.div_table table
{
	margin:10px 0 0 10px;	
}
.input_td{
	padding: 5px 5px 5px 5px;	
}


/* 버튼 */
.div_button
{
	margin-top:7px;
	margin-left:50px;
	text-align:center;

	width:760px;	
}


</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
<div class="insert_title">회원정보</div>
<div class="div_table">
	<table border="1" cellspacing="0" >
    	<tr>
        	<td width="140">이름(닉네임)</td>
            <td width="240">홍길동(홍)</td>
            <td width="140">나이</td>
            <td width="240">27</td>	
        </tr>
        <tr>
        	<td>아이디</td>
            <td>Honggildong</td>
            <td>회원등급</td>
            <td>준회원</td>	
        </tr>
        <tr>
        	<td>주민번호</td>
            <td>123456-1234567</td>
            <td>생년월일</td>
            <td>1988-10-14</td>	
        </tr>
        <tr>
        	<td>집전화</td>
            <td>02-0000-0000</td>
            <td>핸드폰</td>
            <td>010-0000-0000</td>	
        </tr>
        <tr>
        	<td>이메일</td>
            <td>honggildong@naver.com</td>
            <td>가입일시</td>
            <td>2014-08-09</td>	
        </tr>
         <tr>
        	<td>예매횟수</td>
            <td>12</td>
            <td>방문횟수</td>
            <td>20</td>	
        </tr>
         <tr>
        	<td>주소</td>
            <td colspan="3">[123-456] 서울특별시 강남구 역상동 111-111</td>
       	</tr>
         <tr>
        	<td>이메일 수신</td>
            <td><input type="checkbox" checked="true"></td>
            <td>SMS 수신</td>
            <td><input type="checkbox" checked="true"></td>	
        </tr>
    </table>
    <div class="div_button">
	<input type="submit" value="수정하기" />
    <input type="button" value="삭제하기" />
  	<input type="button" value="뒤로가기" />
	</div>

</div>
</div>
</div>

</body>
</html>
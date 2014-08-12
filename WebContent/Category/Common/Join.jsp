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
	padding-top: 120px;
	
}
.join_table{
	font-size:17px;	
	font-weight:bold;	
	font-family:돋움;
}
.first_td{
	text-align:right;
	
}
.over_button{
	font-size:17px;	
	height:35px;
	margin-left:10px;	
	width:100px;
	font-weight:bold;	
	background:#33FFFF;
	color:white;
}
.text1{
	padding-left:7px;
	height:28px;
	width:240px;
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
	margin-bottom: 200px;	
}
.bt_box input{
	font-size:17px;	
	width:150px;
	height:35px;	
	font-weight:bold;	
	background:#33FFFF;
	color:white;
	
}
.bt_box input[type="submit"]{
margin-right:15px;	
}
</style>

</head>

<body>
<jsp:include page="top.jsp"></jsp:include>
<div class="join_form" align="center">
	<table class="join_table" cellpadding="6">
    	<tr>
        	<td class="first_td"><label for="id">아이디</label></td>
            <td><input type="text" class="text1" /><input type="button" value="중복확인" class="over_button"/></td>
        </tr>
      	<tr>
        	<td class="first_td"><label for="password">비밀번호</label></td>
            <td><input type="password" class="text" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="repassword">비밀번호 확인</label></td>
            <td><input type="password" class="text" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="name">이름</label></td>
            <td><input type="text" class="text" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="sex">성별</label></td>
            <td><input type="radio" name="sex"/>남자<input type="radio" name="sex" />여자</td>
        </tr>
        <tr>
        	<td class="first_td"><label for="birth">생년월일</label></td>
            <td>
            <select >
            	<option>년도</option>
                <option>2014</option>
                <option>2013</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
                <option>2012</option>
            </select>
            <span>년</span>
            <select >
            	<option>월</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <span>월</span>
            <select >
            	<option>일</option>
                <option>1</option>
                <option>2</option>
                <option>3</option>
                <option>4</option>
                <option>5</option>
                <option>6</option>
                <option>7</option>
                <option>8</option>
                <option>9</option>
                <option>10</option>
                <option>11</option>
                <option>12</option>
            </select>
            <span>일</span>
            <input type="radio" name="sl" />양력<input type="radio" name="sl" />음력
            </td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일</label></td>
            <td><input type="email" class="text" class="text" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">이메일수신</label></td>
            <td><input type="radio" name="emailcheck" checked="checked"/>수신함<input type="radio" name="emailcheck"/>수신안함</td>
        </tr>
        <tr>
        	<td class="first_td"><label for="phone">휴대폰</label></td>
            <td><input type="text" class="text" /></td>
        </tr>
        <tr>
        	<td class="first_td"><label for="email">SMS수신</label></td>
            <td><input type="radio" name="smscheck" checked="checked"/>수신함<input type="radio" name="smscheck"/>수신안함</td>
        </tr>
    </table>
</div>
<div align="center" style="margin-top:30px; width:100%;" >
<hr style="width:720px; border:1px solid #d9d9d9;" />
</div>
<div class="bt_box" align="center">
	<input type="submit" value="가입하기"/><input type="button" value="다시입력" />
</div>
 <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
.login_form{

	width:100%;
	padding-top:220px;
	text-align:center;
	margin-bottom: 350px;
}
.id, .pwd{
	width:400px;
	height:40px;
	font-size:18px;
		
}
.id{
	margin-bottom:10px;	
	padding-left:10px;
}
.pwd{
	margin-bottom:20px;
	padding-left:10px;
}
.bt_login
{
	width:414px;
	height:60px;
	font-size:20px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	border: none;
	
}
.font_box{
	margin-top:10px;
}
.font_box a{
	text-decoration:none;	
}
</style>
</head>

<body>
<form action="LoginSession.jsp">
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<div class="login_form">
	<div class="id_box">
    	<input type="text" placeholder="아이디" class="id" name="id"/>
    </div>
    <div class="pwd_box">
    	<input type="password" placeholder="비밀번호" class="pwd" name="pwd"/>
    </div>
    <div class="bt_box">
    	<input type="submit" value="로그인" class="bt_login"/>
    </div>
    <div class="font_box">
    <a href="#">아이디 찾기</a>
    <span>|</span>
     <a href="#">비밀번호 찾기</a>
    <span>|</span>
    <a href="#">회원가입</a>
    </div>
    </div>
     <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
     </form>
</body>
</html>
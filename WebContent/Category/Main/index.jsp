<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css" />

</head>
<body class="main_index">
<jsp:include page="../Common/top.jsp"></jsp:include>
<div id="wrap">
	<section id="film"><img src="../../images/Main/film.jpg" width="360" height="300"></section>
    <section id="air"><img src="../../images/Main/air.jpg" width="560" height="300"></section>
    <section id="travel"><img src="../../images/Main/travel.jpg" width="325" height="300"></section>
    <!--<section id="login">
   	  <div id="main_login">
       	
    	<input type="text" id="id" placeholder="아이디">
    	<input type="submit" value="로그인" id="bt_login">
    	<input type="password" id="password" placeholder="비밀번호"><br>
	<div id="login_a">        <a href="#">회원가입</a><a href="#">아이디/비밀번호 찾기</a></div>
        </div>
    </section> !-->
 
  <section id="movie"><img src="../../images/Main/movie.png" width="555" height="300" ></section>
  <section id="shop"><img src="../../images/Main/shop.gif" width="700" height="300"></section>
 
</div>
 <jsp:include page="../Common/footer.jsp"></jsp:include>
</body>
</html>
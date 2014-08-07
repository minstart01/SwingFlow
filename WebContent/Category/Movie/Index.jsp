<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../Css/Common/Main.css" />
<style>
#wrapper{
	 
		height: 850px;
		width:1250px;
		clear:both;
		
	}
#main_content{
	position:absolute;
	top:30px;
	left: 275px;
	width: 950px;
	
		
}	
#main_reserve div{
	width:50px;	
	float:left;
	line-height:25px;
}
#main_reserve select{
	width:143px;
	
}
#bt_reserve{
	float:right;
	height:75px;
	margin-right:20px;
}

#main_rank, #main_reserve, #main_login
{
	float: left;
	border: solid 1px #e5e5e5;
	height: 160px;
	border-radius : 10px;
	padding-left:20px;
}
#main_rank{
	width:300px;
	margin-right:10px;	
	
}
#ranktable{
	font-size:12px;	
}
 #main_reserve{
	width:280px;
	margin-right:10px; 
 }
#main_login{
	width:233px;
	
}	
#main_notice{
	float: left;
	border: solid 1px #e5e5e5;
	width: 380px;
	height: 162px;
	margin: 10px 10px 10px 10px;
	
}
#main_event{
	float:left;
	margin: 10px 10px 20px 0;

}
#id, #password{
	float:left;
}
#bt_login{
	height:51px;	
}
#join{
	clear:left;
	margin-top:10x;
	
}
#join a{
	text-decoration:none;
	font-size:12px;	
}
#join>a{
	margin-right:15px;	
}
#section_two{
	margin-bottom: 20px;
}
#footer_award
{
	float: left;
	margin-top:35px;
}
#special
{
	border-top:solid 1px #e5e5e5;
	padding-top:20px;
	
	clear: left;
	width: 900px;
}
#special_img{
	float: left;
}
</style>
</head>
<body>
<jsp:include page="../Common/top.jsp"></jsp:include>

<div id="wrapper">
<jsp:include page="sidemenu.jsp"></jsp:include>

<div id="main_content">
	<div id="poster">
	<img src="../../images/Movie/poster.png" width="900"/>
</div>
<div id="logo" align="center">
	<img src="../../images/Movie/logo.png"/>
</div>
 	<section>
	<article id="main_rank"><p>영화예매순위</p>
    
	<table id="ranktable">
	<tr>
		<td>1</td>
		<td>명량</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>2</td>
		<td>군도</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>3</td>
		<td>드래곤길들이기2</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>4</td>
		<td>가디언즈 오브 갤럭시</td>
		<td>50%</td>
	</tr>
	<tr>
		<td>5</td>
		<td>해적</td>
		<td>50%</td>
	</tr>
	</table>
	</article>
	<article id="main_reserve">
   	간편예매
    <br /><br />
    	<div>
    		<label for="local">지역</label><br />
            <label for="theater">영화관</label><br />
            <label for="date">날짜</label>
        </div>
    <select>
    	<option>서울</option>
        <option>경기/인천</option>
        <option>충청/대전</option>
        <option>전라/광주</option>
        <option>경상/부산</option>
        <option>강원</option>
        <option>제주</option>
    </select>
    <input type="submit" value="확인" id="bt_reserve" />
    <br />
    
	<select>
    	<option>영화관 선택</option>
    </select>
    <input type="date" />
    
    </article>
	<article id="main_login">
	<br /><br />
		<input type="text" id="id" placeholder="아이디">	
		<input type="password" id="password" placeholder="비밀번호">
        <input type="submit" value="로그인" id="bt_login">
		<div id="join">
        <a href="#">회원가입</a>
		<a href="#">아이디/비밀번호 찾기</a>
        </div>
	</article>
</section>
<section id="section_two">
	<article id="main_event">
		<img src="../../images/Movie/event.jpg" />
	</article>
	<article id="main_notice">
		<p>공지사항</p>
		<table>
		<tr>
			<td>전체</td>
			<td>공지사항입니다.</td>
		</tr>
		<tr>
			<td>전체</td>
			<td>공지사항입니다.</td>
		</tr>
		<tr>
			<td>전체</td>
			<td>공지사항입니다.</td>
		</tr>
		<tr>
			<td>전체</td>
			<td>공지사항입니다.</td>
		</tr>
		<tr>
			<td>전체</td>
			<td>공지사항입니다.</td>
		</tr>
	
		</table>
	</article>
	
</section>
<br>
<br>
<div id="special">
<img src="../../images/Movie/bt_special.gif">
</div>
<div id="special_img">
<a href="#"><img src="../../images/Movie/special01.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special02.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special03.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special04.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special05.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special06.gif" width="128"/></a>
<a href="#"><img src="../../images/Movie/special07.gif" width="128"/></a>
</div>


<img src="../../images/Movie/poster1.png" width="900" />
<div id="footer_award">
<img src="../../images/Movie/footer_award01.gif" width="112"/>
<img src="../../images/Movie/footer_award02.gif" width="112"/>
<img src="../../images/Movie/footer_award03.gif" width="112"/>
<img src="../../images/Movie/footer_award04.gif" width="112"/>
<img src="../../images/Movie/footer_award05.gif" width="112"/>
<img src="../../images/Movie/footer_award06.gif" width="112"/>
<img src="../../images/Movie/footer_award07.gif" width="112"/>
<img src="../../images/Movie/footer_award08.gif" width="112"/>
</div>

</div>
</div>

 <jsp:include page="../Common/footer.jsp"></jsp:include>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#wrapper{
	
		
		width:1200px;
		/* clear:both; */
		
	}
#main_content{
	border:1px solid black;
	/* position:absolute; */
	float:left;
	margin-top: 25px;
	margin-left: 30px;
	/* top:30px;
	left: 275px;
	width: 950px;
 */
}

.box
{
	margin:10px 0 0 10px;
}	

ul.main_menu {
	margin:5px 0 0 10px; 
	padding:0;	

	/* 리스트의 기본 위치를 잡아줍니다. */
}
.main_menu li a{
	text-decoration:none;	
}

ul.main_menu li {
	
	list-style-type:none;
	/* 리스트 타입은 none으로 지정해서 앞부분의 불렛을 없애줍니다. */
	display:block;
	/* display 는 여러가지 형태가 있는데 현재 사용하는  block 은 
	말 그대로 li 태그에 있는 내용 하나를 block 시키는 것입니다. */
	width:100px;
	height:22px;
	/* 메뉴의 높이와 크기를 지정합니다. */
	text-align:center;
	/* 텍스트는 중앙으로 정렬하고 */
	padding:3px 0 0 0;
	/* 패딩값을 조절하면서 텍스트의 위치를 조정합니다. */
	margin:0 2px 0 0;
	/* 메뉴와 메뉴 사이의 간격을 조절합니다. */
	float:left;
	/* 세로로 위치한 메뉴를 한 줄로 정렬하게 해 줍니다. */
	border:1px #999999 solid;
	border-top-left-radius:10px;
	border-top-right-radius:10px;
	background-color: #CCC;	
	/* 메뉴의 테두리를 조정합니다. */
}


ul.main_menu li.active {
	/* 현재 활성화된 메뉴의 값을 지정해 줍니다. */
	background:#FFF;
	/* 배경은 흰색으로 */
	padding-bottom:1px;
	/* 여기서는 패딩 아래쪽으로만 1픽셀을 지정했는데,
	패딩의 길이를 1픽셀 정도 늘려서 밑줄 부분을 가려주는 역할을 합니다. */
	border-bottom:none;
	/* 밑쪽 부분의 테두리를 없애줍니다. */

	
}

ul.main_menu li:hover {
	background:#FFF;
	padding-bottom:1px;
	border-bottom:none;
	cursor:pointer;
	cursor:hand;
}

/* 마우스의 커서가 해당 메뉴에 올라가게 되면 li.active  와
같은 효과를 주기 위해 ul.main_menu li:hover 를 지정했습니다. */

.box {
	border-bottom:1px solid #666;
	height:26px;
}

/* 전체 메뉴의 밑 부분에 있는 긴 테두리를 만들어 주는 역할을 합니다. 
여기서 높이값은 조금씩 조절하면서 정확하게 메뉴의 밑 부분에 맞춰야 합니다. */


/* 메인 */
.reserve_rank
{
	border:1px solid black;	
	height:235px;
}
.reserve_rank ul{
	list-style:none;	
	
}
.rankbox
{
	padding-top:70px;
	border:1px solid black;
	vertical-align:middle;	

}
.rankbox, .posterbox, .infobox{
	float:left;
	
}
.posterbox
{
	margin-left:10px;	
}
.infobox
{
	margin-left:20px;	
}
.percentbox
{	
	border:1px solid black;
	padding-left:180px;
	padding-top:70px;
	float:left;	
}
</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">

<div class="box"><!-- 전체 메뉴를 .box 를 통해서 둘러 쌉니다. -->
    <ul class="main_menu">
        <li class="active">예매순</li>
        <li><a href="#">관람순</a></li>
        <li>평점순</li>
 	 </ul>
</div>
<div class="reserve_rank">
	<ul>
    	<li>
        <div class="rankbox"><img src="/SwingFlow/images/Movie/Movies/1.gif" /></div>
        <div class="posterbox"><img src="http://caching.lottecinema.co.kr/LHS/Media/images/x00/08/45/00_p1s.jpg" alt="명량" height="180" /></div>
        <div class="infobox">
        <table cellspacing="5">
        	<tr>
           	<td colspan="2">명량</td>
            </tr>
            <tr>
           	<td >기본정보</td>
            <td>드라마/액션|한국|128분</td>
            </tr>
            <tr>
           	<td>감독</td>
            <td>김한민</td>
            </tr>
            <tr>
           	<td>출연</td>
            <td>최민식, 류승룡, 조진운</td>
            </tr>
            <tr>
           	<td>등급</td>
            <td>15세 이상 관람가</td>
            </tr>
            <tr>
           	<td>개봉일</td>
            <td>2014.07.30</td>
            </tr>
        </table>
      	</div>
        <div class="percentbox">
        <div>
        	<strong>예매율 59%</strong>
        </div>
        <div>
        	<input type="button" value="예매하기" />
        </div>
        </div>
        </li>
    </ul>
</div>
<div class="reserve_rank">
	<ul>
    	<li>
        <div class="rankbox"><img src="1.gif" /></div>
        <div class="posterbox"><img src="http://caching.lottecinema.co.kr/LHS/Media/images/x00/08/45/00_p1s.jpg" alt="명량" height="180" /></div>
        <div class="infobox">
        <table cellspacing="5">
        	<tr>
           	<td colspan="2">명량</td>
            </tr>
            <tr>
           	<td >기본정보</td>
            <td>드라마/액션|한국|128분</td>
            </tr>
            <tr>
           	<td>감독</td>
            <td>김한민</td>
            </tr>
            <tr>
           	<td>출연</td>
            <td>최민식, 류승룡, 조진운</td>
            </tr>
            <tr>
           	<td>등급</td>
            <td>15세 이상 관람가</td>
            </tr>
            <tr>
           	<td>개봉일</td>
            <td>2014.07.30</td>
            </tr>
        </table>
      	</div>
        <div class="percentbox">
        <div>
        	<strong>예매율 59%</strong>
        </div>
        <div>
        	<input type="button" value="예매하기" />
        </div>
        </div>
        </li>
    </ul>
</div>
<div class="reserve_rank">
	<ul>
    	<li>
        <div class="rankbox"><img src="1.gif" /></div>
        <div class="posterbox"><img src="http://caching.lottecinema.co.kr/LHS/Media/images/x00/08/45/00_p1s.jpg" alt="명량" height="180" /></div>
        <div class="infobox">
        <table cellspacing="5">
        	<tr>
           	<td colspan="2">명량</td>
            </tr>
            <tr>
           	<td >기본정보</td>
            <td>드라마/액션|한국|128분</td>
            </tr>
            <tr>
           	<td>감독</td>
            <td>김한민</td>
            </tr>
            <tr>
           	<td>출연</td>
            <td>최민식, 류승룡, 조진운</td>
            </tr>
            <tr>
           	<td>등급</td>
            <td>15세 이상 관람가</td>
            </tr>
            <tr>
           	<td>개봉일</td>
            <td>2014.07.30</td>
            </tr>
        </table>
      	</div>
        <div class="percentbox">
        <div>
        	<strong>예매율 59%</strong>
        </div>
        <div>
        	<input type="button" value="예매하기" />
        </div>
        </div>
        </li>
    </ul>
</div>
<div class="reserve_rank">
	<ul>
    	<li>
        <div class="rankbox"><img src="1.gif" /></div>
        <div class="posterbox"><img src="http://caching.lottecinema.co.kr/LHS/Media/images/x00/08/45/00_p1s.jpg" alt="명량" height="180" /></div>
        <div class="infobox">
        <table cellspacing="5">
        	<tr>
           	<td colspan="2">명량</td>
            </tr>
            <tr>
           	<td >기본정보</td>
            <td>드라마/액션|한국|128분</td>
            </tr>
            <tr>
           	<td>감독</td>
            <td>김한민</td>
            </tr>
            <tr>
           	<td>출연</td>
            <td>최민식, 류승룡, 조진운</td>
            </tr>
            <tr>
           	<td>등급</td>
            <td>15세 이상 관람가</td>
            </tr>
            <tr>
           	<td>개봉일</td>
            <td>2014.07.30</td>
            </tr>
        </table>
      	</div>
        <div class="percentbox">
        <div>
        	<strong>예매율 59%</strong>
        </div>
        <div>
        	<input type="button" value="예매하기" />
        </div>
        </div>
        </li>
    </ul>
</div>

</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
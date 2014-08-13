<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style type="text/css">
#wrapper{

	width:1200px;
	/* clear:both; */
	
		
	}
#main_content{
	font-size:15px;		
	border:1px solid black;
	/* position:absolute; */
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	/* top:30px;
	left: 275px;
	width: 950px;
 */
}
.list_table
{
	
}
.list_table th
{
	background:#33FFFF;
	color:white;
}
.list_table td
{
	border-bottom:1px solid #e5e5e5;
	text-align:center;

}
.list_table a
{
	text-decoration:none;
}
	
.page
{
	margin:5px 0 0 0;
	border:1px solid black;
}
.search
{
	margin:5px 0 0 0;
	border:1px solid black;

	text-align:center;
}
</style>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
	<div>공지사항</div>
    <table class="list_table" cellspacing="0" cellpadding="5">
    	<tr>
        	<th width="40">번호</th>
            <th width="60">영화관</th>
            <th width="500">제목</th>
            <th width="110">작성일</th>
            <th width="60">조회수</th>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        <tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr><tr>
        	<td>1</td>
            <td>강북</td>
            <td><a href="#">공지사항입니다.</a></td>
            <td>2014-08-11</td>
            <td>3</td>
        </tr>
        
    </table>
 
    
    
    <div class="page">
	<table align="center">
    	<tr>
        <td><a href="#">1</a></td>
        <td><a href="#">2</a></td>
        <td><a href="#">3</a></td>
        <td><a href="#">4</a></td>
        <td><a href="#">5</a></td>
        <td><a href="#">6</a></td>
        <td><a href="#">7</a></td>
        <td><a href="#">8</a></td>
        <td><a href="#">9</a></td>
        <td><a href="#">10</a></td>
        <td><a href="#">다음</a></td>
        </tr>
    </table>
    </div>
    <div class="search">
    <select>
    	<option>제목</option>
        <option>내용</option>
        <option>제목+내용</option>
    </select>
    <input type="text" /><input type="button" value="검색"/>
    </div>
</div>
</div>
</body>
</html>
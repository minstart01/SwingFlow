<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	width:1250px;
	/* clear:both; */
		
	}
#main_content{
	font-size:14px;
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
.list_title{
	
	margin-top:15px;
	border:1px solid black;
}
.div_table{
	margin:10px 0 0 0;	
	border:1px solid black;
}
.list_bt{
	width:911px;
	height:27px;
	margin:5px 0 0 0;
	border:1px solid black;	
}
.delete_bt
{
	float:left;
}
.sign_bt{
	border:1px solid black;	
	float:right;
}
.page
{
	margin:5px 0 0 0;
	border:1px solid black;
	width:911px;
}
.search
{
	margin:5px 0 0 0;
	border:1px solid black;
	width:911px;
	text-align:center;
}


</style>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
<div class="list_title">
영화목록
</div>

	<div class="div_table">
	<table border="1" cellspacing="0" >
    <tr>
    	<td><input type="checkbox" /></td>
    	<th width="120">영화관명</th>
        <th width="350">주소</th>
        <th width="150">전화번호</th>
        <th width="80">스크린수</th>
        <th width="80">총좌석</th>
        <th>관리</th>
        
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
        <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
        <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
        <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
        <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
        <tr>
    	<td><input type="checkbox" /></td>
    	<td>CGV</td>
        <td>서울특별시</td>
        <td>02-000-0000</td>
        <td>5</td>
        <td>200</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
      
    
    
    
    </table>
	</div>
    <div class="list_bt">
    <div class="delete_bt">
    	<input type="button" value="전체선택" /><input type="button" value="선택삭제" />
    </div>
    <div class="sign_bt">
	<a href="/SwingFlow/Category/Movie/Admin/MovieManage/InsertMovie.jsp"><input type="button" value="등록하기" /></a>
</div>
</div>
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
    	<option>영화</option>
        <option>영화관</option>
    </select>
    <input type="text" /><input type="button" value="검색"/>
    </div>
</div>
</div>

<jsp:include page="/Category/Common/footer.jsp"></jsp:include>


</body>
</html>
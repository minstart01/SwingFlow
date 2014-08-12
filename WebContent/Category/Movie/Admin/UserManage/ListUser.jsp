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
	
	height:27px;
	margin:5px 0 0 0;
	border:1px solid black;	
}
.delete_bt
{
	float:left;
}
.modify_bt{
	border:1px solid black;	
	float:right;
}
.page
{
	margin:5px 0 0 0;
	border:1px solid black;
	
}
.search
{
	margin:5px 0 0 0;
	
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
회원목록
</div>

	<div class="div_table">
	<table border="1" cellspacing="0" >
    <tr>
    	<td><input type="checkbox" /></td>
    	<th>기본정보</th>
        <th>등급</th>
        <th>핸드폰</th>
        <th>이메일</th>
        <th>예매</th>
        <th>가입일</th>
        <th>관리</th>
        
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
    <tr>
    	<td><input type="checkbox" /></td>
    	<td width="150"><a href="ViewUser.jsp">홍길동(hong)</a></td>
        <td width="80">준회원</td>
        <td width="120">010-1234-5678</td>
        <td width="235">honggildong@naver.com</td>
        <td width="45">5</td>
        <td width="100">2014-08-09</td>
        <td><input type="button" value="수정" /><input type="button" value="삭제" /></td>
    </tr>
  
    </table>
	</div>
    <div class="list_bt">
    <div class="delete_bt">
    	<input type="button" value="전체선택" /><input type="button" value="선택삭제" />
    </div>
    <div class="modify_bt">
	<a href="#"><input type="button" value="수정하기" /></a>
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
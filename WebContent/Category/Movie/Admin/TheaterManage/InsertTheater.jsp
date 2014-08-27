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

.insert_title{
	
	margin-top:15px;
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
	border:1px solid black;
	margin-top:7px;

	text-align:center;

	width:760px;	
}
.div_button input{
	width:100px;	
}



	
</style>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
<div class="insert_title">영화 등록하기</div>
<div class="div_table">
<table border="1" cellspacing="0" width="670" height="400">
    	<tr>
        	<td>영화관명</td>
            <td><input type="text" /></td>
        </tr>

        <tr>
        	<td>주소</td>
            <td><input type="text" /><input type="button" value="검색" /></td>
        </tr>
         <tr>
        	<td>전화번호</td>
            <td><input type="text" /></td>
        </tr>
        <tr>
        	<td>스크린수</td>
            <td><input type="text" /><input type="button" value="좌석등록" /></td>
        </tr>
        <tr>
        	<td>1관</td>
            <td></td>
        </tr>
        <tr>
        	<td>총좌석</td>
            <td></td>
        </tr>
    </table>
    </div>
        <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
	</div>
    </div>
    </div>
    <jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
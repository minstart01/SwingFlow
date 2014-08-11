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
<div class="insert_title">영화 등록하기</div>
<div class="div_table">
	<table border="1" cellspacing="0" width="760">
    	<tr>
        	<td width="100" align="center"><label for="movie">영화</label></td>
            <td class="input_td"><input type="text" placeholder="영화명을 입력하세요" size="30"/></td>
        </tr>
    	<tr>
        	<td width="100" align="center"><label for="poster">포스터</label></td>
            <td class="input_td"><input type="file" /></td>
        </tr>
        <tr>
        	<td width="100" align="center"><label for="theater">영화관</label></td>
            <td class="input_td"><input type="text" size="30"/><input type="button" value="찾기" /></td>
        </tr>
        <tr>
        	<td width="100" align="center"><label for="theater">관람등급</label></td>
            <td class="input_td">
            	<select>
                	<option>전체 관람가</option>
                    <option>12세이상 관람가</option>
                    <option>15세이상 관람가</option>
                    <option>청소년관람불가</option>
                </select>
            </td>
        </tr>
        <tr>
        	<td width="100" align="center"> <label for="pay">관람요금</label></td>
            <td class="input_td"><input type="text" size="30" /></td>
        </tr>
         <tr>
        	<td width="100" align="center"><label for="date">상영기간</label></td>
            <td class="input_td"><input type="date" />&nbsp;~&nbsp;<input type="date" /></td>
        </tr>
         <tr>
        	<td width="100" align="center"><label for="time">상영시간</label></td>
            <td class="input_td">
            <select>
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
            </select>
            :
            <select>
            	<option>10</option>
                <option>20</option>
                <option>30</option>
                <option>40</option>
                <option>50</option>
                </select>
            <input type="button" value="추가"/></td>
        </tr>
    </table>
    <div class="div_button">
	<input type="submit" value="등록하기" />
  	<input type="button" value="뒤로가기" />
	</div>

</div>
</div>
</div>

</body>

</html>
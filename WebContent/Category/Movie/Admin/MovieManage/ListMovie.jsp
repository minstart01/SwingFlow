<%@page import="java.util.List"%>
<%@page import="Movie.DTO.ListMovie"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.ListMovie"></jsp:useBean>
<jsp:useBean id="dao" class="Movie.DAO.MovieDAO"></jsp:useBean>
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
	font-size:13px;
	
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
	font-size: 20px;
	font-weight: bold;
	
}
.div_table{
	margin:10px 0 0 0;	

}
.list_bt{
	width:911px;
	height:27px;
	margin:5px 0 0 0;
	
}
.delete_bt
{
	float:left;
}
.sign_bt{

	float:right;
}
.page
{
	margin:5px 0 0 0;
	
	width:911px;
}
.search
{
	margin:5px 0 0 0;

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
    	<th width="150">영화</th>
        <th width="80">영화관</th>
        <th width="200">관람일</th>
        <th width="110">시간</th>
        <th width="230">요금정보</th>
        <th width="92">관리</th>
        
    </tr>
    <% 
    
	ArrayList<ListMovie> list = new ArrayList<ListMovie>();
	list = (ArrayList<ListMovie>)dao.ListMvies();
	
   	for(int i=0;i<list.size();i++){
    	dto = list.get(i);
	%>	
    <tr>
    	<td><input type="checkbox" /></td>
    	<td><%=dto.getmName() %></td>
        <td><%=dto.gettName() %></td>
        <td><%=dto.getmStart() %> ~ <%=dto.getmEnd() %></td>
        <td>10:00 &nbsp;&nbsp;&nbsp; 14:00</td>
        <td>학생(<%=dto.getcTeen() %>원) &nbsp; 성인(<%=dto.getcAdult() %>원)</td>
        <td><input type="button" value="수정" /><a href="DeleteMovie.jsp?miNo=<%=dto.getMiNo() %>"><input type="button" value="삭제" /></a></td>
    </tr>
    <% } %>
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
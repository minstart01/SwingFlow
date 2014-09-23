<%@page import="Movie.DTO.ReserveList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Movie.DAO.MovieDAO"%>
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
	
 */
}
.check_table
{
	font-size:12px;	
}
.check_table td
{
	text-align:center;
	border-bottom:1px solid black;
}
.reservelist{
	cursor: pointer;
}
</style>
</head>

<body>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
	<div>예매확인/취소</div>
	<table cellspacing="0" class="check_table" border="1">
    	<tr>
        	<th width="30">번호</th>
            <th width="220">영화명</th>
            <th width="170">영화관명</th>
            <th width="170">관람일시</th>
            <th width="100">예매일</th>
            <th width="45">예매수</th>
            <th width="40">상태</th>
            <th>취소</th>
        </tr>
        
        <%
        String mId = (String)session.getAttribute("MemberId");
        MovieDAO dao = new MovieDAO();
        ReserveList dto = new ReserveList();
        ArrayList<ReserveList> list = new ArrayList<ReserveList>();
        
        list = dao.ListReserve(mId);
        
        for(int i=0;i<list.size();i++){
        	dto = list.get(i);
        %>
        <tr style="border-bottom:1px solid black;" class="reservelist">
        	<td><%=i+1 %></td>
            <td><%= dto.getmName() %></td>
            <td><%= dto.gettName() %></td>
            <td><%= dto.getPlayTime() %></td>
            <td><%= dto.getMrDate() %></td>
            <td><%= dto.getrAdult() + dto.getrTeen() %></td>
            <td>예약</td>
            <td><input type="button" value="취소" /></td>
        </tr>
        
        <%} %>
       <!--  <tr style="border-bottom:1px solid black;">
        	<td>1</td>
            <td>해적</td>
            <td>CGV</td>
            <td>2014-08-11(14:00)</td>
            <td>2014-08-11</td>
            <td>2</td>
            <td>예약</td>
            <td>A18</td>
            <td><input type="button" value="취소" /></td>
        </tr>
        <tr style="border-bottom:1px solid black;">
        	<td>1</td>
            <td>해적</td>
            <td>CGV</td>
            <td>2014-08-11(14:00)</td>
            <td>2014-08-11</td>
            <td>2</td>
            <td>예약</td>
            <td>A18</td>
            <td><input type="button" value="취소" /></td>
        </tr>
        <tr style="border-bottom:1px solid black;">
        	<td>1</td>
            <td>해적</td>
            <td>CGV</td>
            <td>2014-08-11(14:00)</td>
            <td>2014-08-11</td>
            <td>2</td>
            <td>예약</td>
            <td>A18</td>
            <td><input type="button" value="취소" /></td>
        </tr>
        <tr style="border-bottom:1px solid black;">
        	<td>1</td>
            <td>해적</td>
            <td>CGV</td>
            <td>2014-08-11(14:00)</td>
            <td>2014-08-11</td>
            <td>2</td>
            <td>예약</td>
            <td>A18</td>
            <td><input type="button" value="취소" /></td>
        </tr><tr style="border-bottom:1px solid black;">
        	<td>1</td>
            <td>해적</td>
            <td>CGV</td>
            <td>2014-08-11(14:00)</td>
            <td>2014-08-11</td>
            <td>2</td>
            <td>예약</td>
            <td>A18</td>
            <td><input type="button" value="취소" /></td>
        </tr> -->
    </table>

</div>
</div>
</body>
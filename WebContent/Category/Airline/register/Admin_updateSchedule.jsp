<%@page import="Airline.AdultF"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@page import="Airline.DTO.ScheduleDetailDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
function nextEdit(){
	document.next.submit();
};
</script>
<style type="text/css">
/* 버튼 */
.div_button
{
	border:1px solid black;
	margin-top:7px;
	
	text-align:center;

	width:855px;	
}
#wrapper{
	width:1200px;
	}
#main_content{
	border:1px solid black;
	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:13px;
	
}

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>

<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
    <%
 
int rno = Integer.parseInt(request.getParameter("r_No")) ;
//out.print(rno);
    ScheduleDetailDTO dto = new ScheduleDetailDTO();
    AdminDAO dao = new AdminDAO();
 dto = dao.sDetail(rno); 
out.print(dto.getC_DepCity());
    %>

<h2>운항스케줄  수정</h2><form action="Admin_updateSchedulePro.jsp" name="next">
<input type="hidden" name="r_No" value="<%=rno %>">
<input type="hidden" name="s_Code" value="<%=dto.getS_Code() %>">
<table border="1" cellpadding="6" cellspacing="0">

<tr>
	<td width="100">항공사</td>
    <td width="300">
    	<select name="fn_air">
        	<option><%=dto.getFn_air() %></option>
            <option>진에어</option>
        </select>
    </td>
    <td width="100">편명</td>
    <td width="300">
    <select name="fn_no">
        	<option><%=dto.getFn_no() %></option>
            <option>adfb5678</option>
        </select>
    </td>	

</tr>
	<tr>
		<td>총좌석</td>
   		 <td><input type="text" name="r_SeatTotal" value="<%=dto.getR_SeatTotal() %>"/></td>
	</tr>
<tr>
	<td>출발도시</td>
    <td>
    <select name="select7" id="select7">
    <option>한국</option>
      <option>일본</option>
      <option>중국</option>
      <option>동남아</option>
      <option>미국</option>
      </select><select name="c_DepCity" id="select8">
        <option><%=dto.getC_DepCity() %></option>
        <option>김포</option>
        <option>대구</option>
        <option>제주</option>
       
    </select>
    </td>
    <td>도착도시</td>
    <td>
    	<select name="select9" id="select9">
      <option>일본</option>
      <option>중국</option>
      <option>동남아</option>
      <option>미국</option>
      </select><select name="c_ArrCity" id="select10">
        <option><%=dto.getC_ArrCity() %></option>
        <option>베이징</option>
        <option>홍콩</option>
        <option>세부</option>
        <option>뉴욕</option>
        <option>로스엔젤레스(LAX)</option>
    </select>
    </td>
	</tr>
	<tr>
		<td>출발일</td>
   		 <td><input type="date" name="s_DepDay" value="<%=dto.getS_DepDay()%>"/></td>
   	 	<td>비행시간</td>
    	<td><input type="time" name="s_FlightTime" value="<%=dto.getS_FlightTime() %>"/></td>
	</tr>
	<tr>
		<td>출발시간</td>
   		 <td><input type="time" name="s_DeptTime" value="<%=dto.getS_DeptTime()%>"/></td>
   	 	<td>도착시간</td>
    	<td><input type="time" name="s_ArrtTime" value="<%=dto.getS_ArrtTime()%>"/></td>
	</tr>

    <tr>
    	<td colspan="4" align="center">트래블 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" name="a_Travel" value="<%=dto.getA_Travel()%>"/>원</td>
        <td>소아</td>
        <td><input type="text" name="c_Travel" value="<%=dto.getC_Travel()%>"/>원</td>
    </tr>
    <tr>
    	<td colspan="4" align="center">비지니스 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" name="a_Business" value="<%=dto.getA_Business() %>"/>원</td>
        <td>소아</td>
        <td><input type="text" name="c_Business" value="<%=dto.getC_Business()%>"/>원</td>
    </tr>
    <tr>
    	<td colspan="4" align="center">퍼스트 운임</td>
    </tr>
    <tr>
    	<td>성인</td>
        <td><input type="text" name="a_First" value="<%=dto.getA_First()%>"/>원</td>
        <td>소아</td>
        <td><input type="text" name="c_First" value="<%=dto.getC_First()%>"/>원</td>
    </tr>
   
</table>
</form>

    <div class="div_button">
	<input type="submit" value="저장하기" onclick="nextEdit()"/>
  	<input type="button" value="뒤로가기" />
</div>


</div>
</div>

<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
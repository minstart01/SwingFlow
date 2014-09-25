<%@page import="Airline.DTO.ScheduleList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@page import="Airline.DTO.Admin_list"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
   ScheduleList dto = new ScheduleList();
   AdminDAO dao = new AdminDAO();
   ArrayList<ScheduleList> dtoL = dao.scheduleList();
    
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
// function nextEdit(){
<%-- location.href='Admin_updateSchedule.jsp?rno=<%=rno%>' --%>
// 		document.upd.submit();
// };

</script>
<style type="text/css">
/* 버튼 */
.div_button
{
	margin-top:7px;
	margin-left:50px;
	text-align:center;

	width:760px;	
}
#wrapper{
	width:1200px;
	}
#main_content{

	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	font-size:13px;
	
}
.step02_on {
color: #5d6067;
font-weight: bold;
font-size:14px;
font-family:Arial;
background: url("/SwingFlow/images/Airline/bg_startAr.gif"); no-repeat 0 0;
width: 154px;
padding: 0 0 0 43px;
}

.colum {
background-color: #dfdfdf;
color: #5c5f66;
text-align:center;
}
.colum01 {
color: #5c5f66;
text-align:center;
}

</style>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>
<body>


<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
<form action="Admin_updateSchedule.jsp" name="upd">

<h2 class="step02_on">운항스케줄 등록 확인</h2>

<table border="1" cellpadding="0" cellspacing="0">
  <col width="70" span="3" />
  <col width="26" span="6" />
  <col width="26" />
  <col width="70" span="6" />
  <tr class="colum" height="30">
    
    <td width="95">항공사</td>
    <td width="70">편명</td>

    <td width="140">출발지</td>
    <td width="140">도착지</td>
    <td width="70">출발시간</td>
    <td width="95">출발일</td>
    <td width="70">좌석</td>
    <td width="110">관리</td>
   
  </tr >
   <% for(int i=0;i<dtoL.size();i++){
	dto = dtoL.get(i);
   %> 
  <tr class="colum01"  height="30" >
  
    <td><%=dto.getA_Name() %></td>
    <td><%=dto.getAn_Name() %></td>

    <td><%=dto.getC_DeptName() %></td>
    <td><%=dto.getC_ArrtName()%></td>
    <td ><%=dto.getS_DeptTime() %></td>
    <td><%= dto.getS_DepDay()%> </td>
    <td><%= dto.getS_Seattotal()%> </td>
    
    <td><input type="button" value="수정" onclick="location.href='Admin_updateSchedule.jsp?r_No=<%-- <%=rno%> --%>'">
    <input type="button" value="삭제" onclick="location.href='Admin_insertScheduleListDelete.jsp?s_Code=<%=dto.getS_Code()%>'"></td>
  </tr>
  <%} %>

</table>
 </form>
<!--     <div class="div_button"> -->
<!-- 	<input type="submit" value="수정하기" /> -->
<!--   	<input type="button" value="뒤로가기" /> -->
<!-- 	</div> -->
</div>
</div>

<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>
</html>
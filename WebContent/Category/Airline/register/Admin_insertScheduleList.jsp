<%@page import="Airline.DTO.ScheduleListDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@page import="Airline.DTO.Admin_list"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    ScheduleListDTO dto = new ScheduleListDTO();
   AdminDAO dao = new AdminDAO();
   ArrayList<ScheduleListDTO> dtoL = dao.schedule_list();
    
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
<form action="Admin_updateSchedule.jsp" name="upd">

<h2>운항스케줄 등록 확인</h2>

<table border="1" cellpadding="0" cellspacing="0">
  <col width="70" span="3" />
  <col width="26" span="6" />
  <col width="26" />
  <col width="70" span="6" />
  <tr>
    <td width="70">no.</td>
    <td width="70">항공사</td>
    <td width="70">편명</td>
    <td width="26">월</td>
    <td width="26">화 </td>
    <td width="26">수 </td>
    <td width="26">목</td>
    <td width="26">금 </td>
    <td width="26">토</td>
    <td width="26">일</td>
    <td width="70">출발지</td>
    <td width="140">도착지</td>
    <td width="70">출발시간</td>
    <td width="70">출발일</td>
    <td width="70">수정</td>
    <td width="70">삭제</td>
  </tr>
  <% for(int i=0;i<dtoL.size();i++){
	  dto = (ScheduleListDTO)dtoL.get(i);
	  int rno = dto.getR_No();
	//  out.print(dto.getR_No()+dto.getC_ArrCity());
   %>
  <tr  >
    <td><%=i+1 %></td>
    <td><%=dto.getFn_air() %></td>
    <td><%=dto.getFn_no() %></td>
    <td>Y</td>
    <td></td>
    <td>Y</td>
    <td>Y</td>
    <td></td>
    <td></td>
    <td>Y</td>
    <td><%=dto.getC_DepCity() %></td>
    <td><%=dto.getC_ArrCity() %></td>
    <td align="right"><%=dto.getS_DeptTime() %></td>
    <td><%= dto.getS_DepDay()%> </td>
    <td><input type="button" value="수정" onclick="location.href='Admin_updateSchedule.jsp?r_No=<%=rno%>'"></td>
    <td><input type="button" value="삭제" onclick="location.href='Admin_insertScheduleListDelete.jsp?r_No=<%=rno%>'"></td>
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
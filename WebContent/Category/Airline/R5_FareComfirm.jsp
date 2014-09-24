<%@page import="Airline.DTO.ConfirmSch"%>
<%@page import="java.text.DecimalFormat"%>
<%@page import="Airline.DAO.ClientDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    DecimalFormat fm = new DecimalFormat("#,###");
    
int adult = Integer.parseInt(request.getParameter("adult"));
int child = Integer.parseInt(request.getParameter("child"));
int infant = Integer.parseInt(request.getParameter("infant"));
int s_code = Integer.parseInt(request.getParameter("s_code"));
int s_code1 = Integer.parseInt(request.getParameter("s_code1"));
int agradeSum = Integer.parseInt(request.getParameter("agradeSum"));
int cgradeSum = Integer.parseInt(request.getParameter("cgradeSum"));
String seat_Class = request.getParameter("seat_Class");

int gcode=0;
if(seat_Class.equals("Travel")){
	gcode = 1;
}else if(seat_Class.equals("Business")){
	gcode=2;
}else if(seat_Class.equals("First")){
	gcode=3;
}


int mNo = Integer.parseInt(request.getParameter("mNo"));


	String[] lName = request.getParameterValues("lName");
    String[] fName = request.getParameterValues("fName");
    String[] passport = request.getParameterValues("passport");
    
	String[] child_lName = request.getParameterValues("child_lName");
    String[] child_fName = request.getParameterValues("child_fName");
    String[] child_passport = request.getParameterValues("child_passport");
  
	String[] infant_lName = request.getParameterValues("infant_lName");
    String[] infant_fName = request.getParameterValues("infant_fName");
    String[] infant_passport = request.getParameterValues("infant_passport");

    
    
    
    String a="";
    if(seat_Class.equals("Business")){
    	a = "비즈니스 클래스";
    }else if(seat_Class.equals("Travel")){
    	a="트래블(일반석) 클래스";
    }else if(seat_Class.equals("First")){
    	a="퍼스트 클래스";
    }
    
   

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style>
.colum {
background-color: #dfdfdf;
font-weight: bold;
color: #5c5f66;
}
.pay {

background-color: #FFFF99;
font-weight: bold;
color: #33F;
font-family:Arial, Helvetica, sans-serif
}
#wrapper{
	width:1200px;
	}
#main_content{
	font-size:12px;
	font-family:Arial;
	width:900px;
	float:left;
	margin-top: 25px;
	margin-left: 25px;

	
}


#containerBox #container #containerBody h3.h3_type01
{
	color: #010101;
	line-height: 28px;
	font-family: Arial, Helvetica, sans-serif;
	font-size: 24px;
	font-weight: normal;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 44px;
	margin-left: 0px;
}


.trip td{
	padding-left: 6px;
}
.fare tr td:first-child
{
	padding-left: 6px;
	text-align: left;
}
.fare td{
	text-align:right;
	padding-right: 10px;
	height: 30px;
}

.totalP{
	font-size: 24px;
	font-weight: bold;
	color: #5e14cc;
	margin-right: 10px;
	margin-left: 20px;
}
.prev_bt, .next_bt{
	width:80px;
	height:30px;
	font-size:12px;
	font-weight:bold;
	background: #0043A8;
  	background: -moz-linear-gradient(#43A9FF, #0043A8);
 	 background: -o-linear-gradient(#43A9FF, #0043A8);
 	 background: -webkit-linear-gradient(#43A9FF, #0043A8);
	color:white;
	border: none;
}

</style>
</head>

<body>

<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>
 
<%--    if("<%=seat_Class%>"=='Business'){ --%>
	   
// 	   var a = $('#s_class').text(); 
// 	   var a = "비즈니스";
	   
// 	   a=b;
// alert(a);



</script>
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">

<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>

<div id="main_content">
  <p>&nbsp;</p>
  <p>여정/운임 확인 </p>
  <h3>선택하신 여정</h3>
<% ClientDAO dao = ClientDAO.getInstance();
ConfirmSch dto = new ConfirmSch();
dto = dao.confirmSch(s_code);
%>
<table border="1" cellspacing="0" cellpadding="2" class="trip" width="700">
	<tr class="colum" align="center">
		<td width="81" height="30">구분</td>
		<td width="142">출발</td>
		<td width="117">도착</td>
		<td width="135">항공사/편명</td>
		<td width="78">비행시간</td>
		<td width="109">클래스</td>
	
	</tr>
	<tr>
		<td height="60">
			<div align="center">가는 편<br>
			
			</div></td>
		<td>
 			<div align="center"><%=dto.getC_Name() %>	 <%=dto.getS_DepDay() %>, <%=dto.getS_DeptTime() %> 
	    </div></td>
		<td>
			<div align="center"><%=dto.getC_Name1() %>
		
			  <%=dto.getS_ArrtTime() %>
	    </div></td>
		<td>
			<div align="center"><%=dto.getA_Name() %>/ <%=dto.getAn_Name() %> 
	    </div></td>
		<td><div align="center"><%=dto.getS_FlightTime() %>시간</div></td>
		<td id="s_class"><div align="center"><%=a %></div></td>
		
	</tr>
	<%
	String c_name = dto.getC_Name();
	String c_name1 = dto.getC_Name1();
	
	ConfirmSch dto1 = new ConfirmSch();
	dto1 = dao.confirmSch1(s_code1);%>
	
	<tr>
		<td height="60">
			<div align="center">오는 편<br>
		
			</div></td>
		<td>
			<div align="center"><%=dto1.getC_Name() %>	<%=dto1.getS_DepDay() %>, <%=dto1.getS_DeptTime() %>
	    </div></td>
		<td>
			<div align="center"><%=dto1.getC_Name1() %>  
		
			  <%=dto1.getS_ArrtTime() %>
	    </div></td>
		<td>
			<div align="center"><%=dto1.getA_Name() %>/ <%=dto1.getAn_Name() %>
	    </div></td>
		<td><div align="center"><%=dto1.getS_FlightTime() %>시간</div></td>
		<td><div align="center"><%=a %></div></td>
	
	</tr>
</table>

<h3>운임</h3>

<table border="1" cellspacing="0" cellpadding="2" class="fare" width="700">
	<tr class="colum" align="center">
		<td width="110"><div align="center">승객</div></td>
		<td width="150"><div align="center">항공운임</div></td>
		<td width="50"><div align="center">인원</div></td>
		<td width="150"><div align="center">항공운임 총액</div></td>
	</tr>
	<tr>
		<td><div align="center">성인</div></td>
		<td><%=fm.format(agradeSum/adult) %>원</td>
		<td><%=adult %>명</td>
		<td><%=fm.format(agradeSum) %>원</td>
	</tr>
	<%
	if(child!=0){%>
	<tr>
		<td><div align="center">소아</div></td>
		<td><%=fm.format(cgradeSum/child) %>원</td>
		<td><%=child %>명</td>
		<td><%=fm.format(cgradeSum) %>원</td>
	</tr>
	<%}	%>
	<%
	if(infant!=0){%>
	<tr>
		<td><div align="center">유아</div></td>
		<td>0원</td>
		<td><%=infant %>명</td>
		<td>0원</td>
	</tr>
		<%}	%>
</table>

<div style="width: 700px; text-align: right; margin-top: 20px; margin-bottom: 20px;">
	<strong>총 지불금액</strong><strong class="totalP"><%=fm.format(agradeSum+cgradeSum) %>원</strong>
</div>

 	<div style="width: 700px; text-align: center" >
	
	<input class="prev_bt" type="button" value="이전단계" onclick="location.href='R5_FareComfirm.jsp'">
	<input class="next_bt" type="button" value="계속하기" onclick="location.href='FlightInsPro.jsp?mNo=<%=mNo %>&fl_Fare=<%=agradeSum+cgradeSum %>&s_Code=<%=s_code%>&s_Code2=<%=s_code1%>&seat_No=<%=gcode%>&c_name=<%=c_name%>&c_name1=<%=c_name1%>'">
	
	</div>
	
	

             
              
</div>
</div>
<jsp:include page="/Category/Common/footer.jsp"></jsp:include>
</body>


</html>

<%@page import="Airline.Airline"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Airline.DAO.AdminDAO"%>
<%@page import="Airline.Nation" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
<style type="text/css">
.main_content {
	width: 900px;
	float: left;
	margin-top: 25px;
	margin-left: 25px;
	font-size: 12px;
	font-family: Arial;
	padding-left: 20px;
	padding-bottom: 20px;
}

.bt {
	width: 80px;
	height: 25px;
	font-size: 12px;
	font-weight: bold;
	background: #999999;
	background: -moz-linear-gradient(#BDBDBD, #999999);
	background: -o-linear-gradient(#BDBDBD, #999999);
	background: -webkit-linear-gradient(#BDBDBD, #999999);
	color: white;
	border: none;
}

.airAddBtn {
	width: 80px;
	height: 25px;
	font-size: 12px;
	font-weight: bold;
	background: #999999;
	background: -moz-linear-gradient(#BDBDBD, #999999);
	background: -o-linear-gradient(#BDBDBD, #999999);
	background: -webkit-linear-gradient(#BDBDBD, #999999);
	color: white;
	border: none;
}

.border {
	width: 380px;
	float: left;
	height: 23px;
}

.border01 {
	width: 38px;
	float: left;
	height: 16px;
	padding-top: 7px;
	text-align: center;
}
#wrapper {
	width: 1200px;
}
</style>

<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script type="text/javascript">
 $(function(e) { 
  $(".bt").click(function(e) {  
   var nation = $("#nation").val();
   var city = $('#city').val();
   var nCode = $('#nCode').val();
  
   //   alert("aa");
   $.ajax({
    url : 'searchair.jsp',
    type : 'GET',
    data : {
     nation : nation,
     city : city,
     nCode : nCode
     },
    success : SearchmName
   
  });
 });
});
  
 function SearchmName(data) {
 
  location.reload();
  /*  $("#nId").append("<option>" + data +"</option>"); */   
  }
 
 $(function(e) { 
	  $(".airAddBtn").click(function(e) {  
	   var air = $("#air").val();
	   var aName = $('#aName').val();
	   var aCode = $('#aCode').val();
	  
	   // alert("aa");
	   $.ajax({
	    url : 'searchAirlineNo.jsp',
	    type : 'GET',
	    data : {
	    	air : air,
	    	aName : aName,
	    	aCode : aCode
	     },
	    success : SearchmName01
	   
	  });
	 });
	});
	  
	 function SearchmName01(data) {
	 
	  location.reload();
	  /*  $("#nId").append("<option>" + data +"</option>"); */   
	  }

</script>

</head>
<body>
	<jsp:include page="/Category/Common/top.jsp"></jsp:include>
	<div id="wrapper">

		<jsp:include page="/Category/Airline/sidemenu.jsp"></jsp:include>
<%
AdminDAO dao = AdminDAO.getInstance();
Nation nation = new Nation();
ArrayList<Nation> nDtoL  = dao.nationSel();

Airline airline = new Airline();
ArrayList<Airline> aDtoL = dao.airlineSel();

//out.print(nationL.size());
%>
<div class="main_content">
<div style="width:418px;  height: 296px; padding-left:10px; float:left;border: 1px solid #ADB4AC;">
<h4>관리자 도시/편명 등록</h4>
새로운 국가 또는 항공사 등록 후 
도시 및 편명을 추가 할 수 있습니다. 
<div style="float: left; width: 414px;">
<h4>
  취항노선 추가</h4>
</div>
<form>
<div class="border01">등&nbsp;&nbsp;&nbsp;록</div><div class="border"> <input type="text" value="" name="nation" id="nation" size="20"/> 
 <input type="button" value="국가등록" class="bt"/></div>
</form>

<div class="border01">국&nbsp;&nbsp;&nbsp;가</div><div class="border"> <select name="nCode" id="nCode" style="width:90px;">
  <option value="0" >선택</option>
  <% 
  for(int i=0; i<nDtoL.size();i++){
  nation = nDtoL.get(i);
  
  %>
  <option value="<%=nation.getN_Code()%>"><%=nation.getN_Name()%></option>
  <% }%>
 </select></div><br>
<div class="border01"> 도&nbsp;&nbsp;&nbsp;시</div><div class="border">  <input type="text" value="" name="city" id="city" size="20"/> 
 <input type="button" value="도시등록" class="bt" /></div>
<div style="float: left; width: 414px;">
<h4> 항공사/편명 추가</h4></div>

<form>
<div class="border01">등&nbsp;&nbsp;&nbsp;록</div> <div class="border"> <input type="text" value="" name="air" id="air" size="20" /> 
 <input type="button" value="항공사등록" class="airAddBtn"/></div>
</form>

 <div class="border01">항공사 </div><div class="border"><select name="aCode" id="aCode" style="width:90px;">
  <option value="0">선택</option>
  <% 
  for(int i=0; i<aDtoL.size();i++){
 airline = aDtoL.get(i);
  
  %>
  <option value="<%=airline.getA_Code()%>"><%=airline.getA_Name()%></option>
  <% }%>
 </select></div><br>
 <div class="border01">편&nbsp;&nbsp;&nbsp;명</div> <div class="border"> <input type="text" value="" name="aName" id="aName" size="20"/> 
 <input type="button" value="편명등록" class="airAddBtn" /></div>
 </div>
<div style="width: 282px; height: 296px;  float:left;border: 1px solid width:418px;  height: 296px; padding-left:10px; float:left;border: 1px solid #ADB4AC;border-left-style: none;">

 <img src="/SwingFlow/images/Airline/img01.jpg">
 <img src="/SwingFlow/images/Airline/img02.jpg">
 </div>
 
 </div>
</body>
</html>
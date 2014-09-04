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
<%
AdminDAO dao = AdminDAO.getInstance();
Nation nation = new Nation();
ArrayList<Nation> nDtoL  = dao.nationSel();

Airline airline = new Airline();
ArrayList<Airline> aDtoL = dao.airlineSel();

//out.print(nationL.size());
%>
<h2>취항노선 추가</h2>

<form>
국가 <input type="text" value="" name="nation" id="nation" /> 
 <input type="button" value="국가등록" class="bt"/>
</form>
<hr />
국가 <select name="nCode" id="nCode">
  <option value="0">선택</option>
  <% 
  for(int i=0; i<nDtoL.size();i++){
  nation = nDtoL.get(i);
  
  %>
  <option value="<%=nation.getN_Code()%>"><%=nation.getN_Name()%></option>
  <% }%>
 </select>
 도시 <input type="text" value="" name="city" id="city" /> 
 <input type="button" value="도시등록" class="bt" />



<h2>항공사/편명 추가</h2>

<form>
항공사 <input type="text" value="" name="air" id="air" /> 
 <input type="button" value="항공사등록" class="airAddBtn"/>
</form>
<hr />
 항공사 <select name="aCode" id="aCode">
  <option value="0">선택</option>
  <% 
  for(int i=0; i<aDtoL.size();i++){
 airline = aDtoL.get(i);
  
  %>
  <option value="<%=airline.getA_Code()%>"><%=airline.getA_Name()%></option>
  <% }%>
 </select>
 편명 <input type="text" value="" name="aName" id="aName" /> 
 <input type="button" value="편명등록" class="airAddBtn" />
</body>
</html>
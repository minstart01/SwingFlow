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
   var city = $('#name').val();
   var nCode = $('#nId').val();
  
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
</script>

</head>
<body>
<%
AdminDAO dao = AdminDAO.getInstance();
Nation nation = new Nation();
ArrayList<Nation> nDtoL  = dao.nationSel();


//out.print(nationL.size());
%>
<h2>국가등록</h2>

<form>
 국가 <input type="text" value="" name="nation" id="nation" /> 
 <input type="button" value="국가등록" class="bt"/>
</form>
<hr />
<form action="searchair.jsp">
 국가 <select name="nId" id="nId">
  <option value="0">선택</option>
  <% 
  for(int i=0; i<nDtoL.size();i++){
  nation = nDtoL.get(i);
  
  %>
  <option value="<%=nation.getN_Code()%>"><%=nation.getN_Name()%></option>
  <% }%>
 </select>
 도시 <input type="text" value="" name="name" id="name" /> 
 <input type="button" value="도시등록" class="bt" />
</form>
</body>
</html>
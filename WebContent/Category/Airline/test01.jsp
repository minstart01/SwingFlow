<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>공항등록</title>
</head>
<body>
<h2>국가등록</h2>

<form action="Admin_insertSchedule.jsp" >
 국가 <input type="text" value="" name="n_Name" id="nation" /> 
 <input type="submit" value="국가등록" />

<hr />

 국가 <select name="nId" id="nId">
  <option value="0">선택</option>
<option value="${nation.id}">${nation.name}</option>
 </select>
 도시 <input type="text" value="" name="c_Name" id="name" /> 
 <input type="submit" value="도시등록" />
</form>
</body>
</html>


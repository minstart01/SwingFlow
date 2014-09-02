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
		
			// 		alert("aa");
			$.ajax({
				url : 'searchair.jsp',
				type : 'GET',
				data : {
					nation : nation,
					},
				success : SearchmName
			
		});
	});
});
		
	function SearchmName(data) {
		alert(data);
		
		 $("#nId").append("<option>" + data +"</option>");
		
			
		}
</script>

</head>
<body>
<h2>국가등록</h2>

<form action="searchair.jsp">
 국가 <input type="text" value="" name="nation" id="nation" /> 
 <input type="button" value="국가등록" class="bt"/>
</form>
<hr />
<form action="searchair.jsp">
 국가 <select name="nId" id="nId">
  <option value="0">선택</option>
 </select>
 공항 <input type="text" value="" name="name" id="name" /> 
 <input type="submit" value="공항등록" />
</form>
</body>
</html>



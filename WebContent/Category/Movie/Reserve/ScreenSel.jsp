<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#sel_sit_box{
	width: 871px; 
	height: 450px; 
	border: 1px solid black;
}
.screenbox{
	border: 1px solid black;
	height: 25px;
	text-align: center;
	width: 450px;
	margin-top: 40px;
	margin-bottom:20px;
}
.sit .sel_sit  
{
	border: 1px solid black;
	
}

.sel_sit_button{
	margin-top: 20px;
}
</style>
</head>
<body>
<div id="sel_sit_box">
<div>
<center><div class="screenbox">
	<span style="font-size: 18px; font-weight: bold;">SCREEN</span>
</div></center>
<center>
<table cellspacing="5" class="sit" >
	<%for(int i=1;i<=10;i++){
		String Row="";
	switch(i){
		case 1 : Row = "A"; break;
		case 2 : Row = "B"; break;
		case 3 : Row = "C"; break;
		case 4 : Row = "D"; break;
		case 5 : Row = "E"; break;
		case 6 : Row = "F"; break;
		case 7 : Row = "G"; break;
		case 8 : Row = "H"; break;
		case 9 : Row = "I"; break;
		case 10 : Row = "J"; break;
	}
		
		
	%>
	<tr>
		<%for(int j=1;j<=13;j++){ 
			if(j==1){
		%>
			<td width="20" align="center"><%=Row %></td>
		<%
		}else if(j==2 || j==3){
		%>
			<td width="20" align="center"></td>
		<%	
		}else if(j>3){
			%>
			<td class="sel_sit" width="20" align="center"><%=Row + (j-3) %></td>
		<%		
		}
		}
		%>
	</tr>
	<%} %>
</table>

<div class="sel_sit_button">
	<input type="button" value="다시선택">
	<input type="button" value="선택완료">
</div>
</center>
</div>
</div>
</body>
</html>
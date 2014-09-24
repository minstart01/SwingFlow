<%@page import="Movie.DTO.TheaterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.TheaterInfo"></jsp:useBean>
<jsp:useBean id="dao" class="Movie.DAO.TheaterDAO"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
#wrapper{
	width:1250px;
	/* clear:both; */
		
	}
#main_content{
	font-size:12px;

	/* position:absolute; */
	float:left;
	margin-top: 25px;
	margin-left: 25px;
	/* top:30px;
	left: 275px;
	width: 950px;
 */
}
.list_title{
	
	font-size:20px;
	font-weight:bold;

}
.div_table{
	margin:10px 0 0 0;	

}
.list_bt{
	width:922px;
	height:27px;
	margin:5px 0 0 0;

}
.delete_bt
{
	float:left;
}
.sign_bt{

	float:right;
}
.page
{
	margin:5px 0 0 0;

	width:922px;
}
.search
{
	margin:5px 0 0 0;

	width:922px;
	text-align:center;
}


</style>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script>
	$(function (){
		$(".checkbox").click(function e(){
			var chk = $(".checkbox").val();
			if(chk == 0){
				$(".chkbox").attr("checked",true);
				$(".checkoff").val(1);
			}else if(chk == 1){
				$(".chkbox").attr("checked",false);
				$(".checkoff").val(0);
			}
		});
	});

</script>
<link rel="stylesheet" type="text/css" href="/SwingFlow/Css/Common/Main.css" />
</head>

<body>
<form action="DeleteTheater.jsp">
<jsp:include page="/Category/Common/top.jsp"></jsp:include>
<div id="wrapper">
<jsp:include page="/Category/Movie/sidemenu.jsp"></jsp:include>

<div id="main_content">
<div class="list_title">
<div class="list_title">영화관 목록</div>
</div>

	<div class="div_table">
	<table border="1" cellspacing="0" >
    <tr>
    	<td><input type="checkbox" class="checkoff checkbox"  value="0"  /></td>
    	<th width="120">영화관명</th>
        <th width="390">주소</th>
        <th width="110">전화번호</th>
        <th width="80">스크린수</th>
        <th width="80">총좌석</th>
        <th width="94">관리</th>
        
    </tr>
    <%
    	ArrayList<TheaterInfo> list = new ArrayList<TheaterInfo>();
    	list = dao.ListTheater();
    	for(int i=0;i<list.size();i++){
    		dto = list.get(i);
    	
    %>
    <tr>
    	<td align="center"><input type="checkbox" name="tchk<%=i %>" class="chkbox" value="<%=dto.gettCode() %>" /></td>
    	<td align="center"><%=dto.gettName() %></td>
        <td align="center"><%=dto.getSido() + " " + dto.getGugun() + " " + dto.getDong() + " " + dto.getRi() + " " + dto.gettDetailAddr()%></td>
        <td align="center"><%=dto.gettPhone() %></td>
        <td align="center"><%=dto.gettScreen() %></td>
        <td align="center"><%=dto.gettTotalSit() %></td>
        <td align="center"><input type="button" value="수정" /><a href="DeleteTheater.jsp?tCode=<%=dto.gettCode()%>"><input type="button" value="삭제" /></a></td>
    </tr>
    <%} %>
    
    </table>
	</div>
    <div class="list_bt">
    <div class="delete_bt">
    	<input type="button" value="전체선택" /><input type="submit" value="선택삭제" />
    </div>
    <div class="sign_bt">
	<a href="/SwingFlow/Category/Movie/Admin/TheaterManage/InsertTheater.jsp"><input type="button" value="등록하기" /></a>
</div>
</div>
    <div class="page">
	<table align="center">
    	<tr>
        <td><a href="#">1</a></td>
        <!-- <td><a href="#">2</a></td>
        <td><a href="#">3</a></td>
        <td><a href="#">4</a></td>
        <td><a href="#">5</a></td>
        <td><a href="#">6</a></td>
        <td><a href="#">7</a></td>
        <td><a href="#">8</a></td>
        <td><a href="#">9</a></td>
        <td><a href="#">10</a></td>
        <td><a href="#">다음</a></td> -->
        </tr>
    </table>
    </div>
    <div class="search">
    <select>
           <option>영화관</option>
    </select>
    <input type="text" /><input type="button" value="검색" id="ins_bt"/>
    </div>
</div>
</div>

<jsp:include page="/Category/Common/footer.jsp"></jsp:include>

</form>
</body>
</html>
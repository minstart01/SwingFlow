<%@page import="Movie.DTO.PlayInfo"%>
<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="Movie.DTO.MovieInfo"%>
<%@page import="Movie.DTO.Charge"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dto" class="Movie.DTO.MovieInfo"></jsp:useBean>
<jsp:useBean id="dto1" class="Movie.DTO.MovieInsert"></jsp:useBean>
<jsp:useBean id="dto3" class="Movie.DTO.Charge"></jsp:useBean>
<jsp:setProperty property="*" name="dto"/>
<jsp:setProperty property="*" name="dto1"/>
<jsp:setProperty property="*" name="dto3"/>
<%
	MovieDAO dao = new MovieDAO();
	
	 int info = dao.MovieInfo(dto); 
	int insert = dao.MovieInsert(dto1);
	int charge = dao.Charge(dto3);
	 int play=0;
 	
	int length = Integer.parseInt(request.getParameter("playinfo"));

	%>
	<input type="hidden" name="length" value="<%=length %>">
	<%
	out.print(length);
	 for(int i=1;i<=length;i++){
		int pArea = Integer.parseInt(request.getParameter("pArea" + i));
		String pPlayStart = request.getParameter("pPlayStart" + i);
	
		%>
				<input type="hidden" name="pArea<%=i %>" value="<%=pArea %>">
		<input type="hidden" name="pPlayStart<%=i %>" value="<%=pPlayStart %>">
		<%
		
		PlayInfo info2 = new PlayInfo();
		
		info2.setpArea(pArea);
		info2.setpPlayStart(pPlayStart);
		
		play = dao.PlayInfos(info2); 

		}   
	
	response.sendRedirect("ListMovie.jsp");
	

	/* if(charge == 1 && play == 1 && insert == 1 && info ==1){
		response.sendRedirect("TestList.jsp");
	}else{
		out.print("실패!!");
	} */
%>

<%@page import="Movie.DTO.MovieInsert"%><%@page import="java.util.ArrayList"%><%@page import="Movie.DAO.MovieDAO"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String mName = request.getParameter("mName");
	MovieDAO dao = new MovieDAO();
	ArrayList<MovieInsert> list = new ArrayList<MovieInsert>();
	list = dao.SelTheater(mName, "서울", "one", "one", "one"); 
 	%>
<items>
<uls>
<% for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</uls>
<ulk>
<%
	list = dao.SelTheater(mName, "경기", "인천", "two", "two");
	for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</ulk>
</items>
<%-- <ulp>
<%
	list = dao.SelTheater(mName, "부산", "울산", "경남", "three");
	for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</ulp>
<uld>
<%
	list = dao.SelTheater(mName, "대구", "경북", "two", "two");
	for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</uld>
<uldj>
<%
	list = dao.SelTheater(mName, "대전", "충청", "강원",
			"three");
	for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</uldj>
<ulg>
<%
	list = dao.SelTheater(mName, "광주", "전남", "전북", "제주");
	for(int i=0;i<list.size();i++){
	MovieInsert dto = new MovieInsert();
	dto = list.get(i);
	
	 %>
<li><%=dto.gettName() %></li>

<%} %>
</ulg> --%>
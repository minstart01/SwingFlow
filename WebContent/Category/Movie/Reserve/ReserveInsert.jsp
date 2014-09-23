<%@page import="Movie.DTO.MovieReserve"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<% String Id = (String)session.getAttribute("MemberId"); %>

<%
	MovieDAO dao = new MovieDAO();
	MovieReserve dto = new MovieReserve();
	
	String mName = request.getParameter("mName");
	String tName = request.getParameter("tName");
	
	String number = request.getParameter("seatinfo");
	String time = request.getParameter("time");
	
	int charge = Integer.parseInt(request.getParameter("charge"));
	int adult = Integer.parseInt(request.getParameter("adult"));
	int teen = Integer.parseInt(request.getParameter("teen"));
	
	int miNo = dao.miNoSel(mName, tName);
	
	dto.setMiNo(miNo);
	dto.settPrice(charge);
	dto.setMrPlayTime(time);
	
	int su = dao.MovieReserve(Id, dto);
	int seat = dao.SeatInsert(number);
	int no = dao.ReserveNoInster(adult, teen);
	
	out.print(su);
	out.print(seat);
	out.print(no); 


%>

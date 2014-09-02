<%@page import="Common.DTO.Address"%>
<%@page import="Movie.DTO.MovieInsert"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="Movie.DAO.MovieDAO"></jsp:useBean>
<jsp:useBean id="dto" class="Movie.DTO.MovieInsert"></jsp:useBean>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 	String mName="명량";
	String sido = "서울";
	ArrayList<MovieInsert> list = new ArrayList<MovieInsert>();
	list = dao.SelTheater(mName, "서울", "one", "one", "one"); 
	for(int i=0;i<list.size();i++){
		dto = list.get(i);
		out.print(dto.gettName());
	}
	

	
/* 	ArrayList<Address> list = new ArrayList<Address>();

	list = (ArrayList<Address>) dao.SelectAddr("서울", "one", "one",
			"one");
	for (int i = 0; i < list.size(); i++) {
		dto = (Address) list.get(i);
		
		out.print(dto.gettName());
	} */
%>
</body>
</html>
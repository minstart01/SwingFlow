<%@page import="java.util.ArrayList"%>
<%@page import="Common.Address"%>
<%@page import="Movie.DAO.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<jsp:useBean id="addr" class="Common.Address"></jsp:useBean>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>



	<%
	MovieDAO dao = new MovieDAO();

	ArrayList<Address> addrL = new ArrayList<Address>();
	
	String dong = request.getParameter("dong");
	

		addrL = dao.zipSelect(dong);

		out.print(addrL.size());
	for(int i=0;i<addrL.size();i++){
		addr = (Address)addrL.get(i);
	

		out.print(addr.getZipcode());
		out.print(addr.getDong());
	
	} %>
</body>
</html>
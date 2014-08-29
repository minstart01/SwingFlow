<%@page import="java.util.List"%><%@page import="Movie.MovieInfo"%><%@page import="Common.MyBatis"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><%
	String sRequest = request.getParameter("request");


import com.google.gson.Gson;

	if (null != sRequest) {
		if (sRequest.equals("ShopInputDB")) {
			String sMName = request.getParameter("mName");
			String sTName = request.getParameter("tName");
			MyBatis<MovieInfo> mi = new MyBatis<MovieInfo>(
					"Movie.MovieInfo");
			MovieInfo miObj = new MovieInfo();
			if (null != sMName) {
				miObj.setmName(sMName);
			} else if (null != sTName) {
				miObj.setmPoster(sTName);
			}
			List<String> list = (List<String>) mi.nameSql(
					"findMovie01", miObj);
			if (0 == list.size()) {

			} else {
				output.append(" { \"response\":\"" + list + "\" }");
			}
			
			response.setContentType("application/json");
		    response.setCharacterEncoding("UTF-8");
		    response.getWriter().write(json);       
		     
		}
	} %>
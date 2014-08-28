<%-- <%@page import="java.util.List"%><%@page import="Movie.Api.Proxy"%><%@page import="Movie.MovieInfo"%><%@page import="Common.MyBatis"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><%
	Proxy proxy = new Proxy();
	String sRequest = request.getParameter("request");
	
	if(null!=sRequest){
		if(sRequest.equals("MovieList")){
			String sMName = request.getParameter("mName");
			String sTName = request.getParameter("tName");
			MyBatis<MovieInfo> mi = new MyBatis<MovieInfo>("Movie.MovieInfo");
			MovieInfo miObj = new MovieInfo();
			if(null!=sMName){
				miObj.setmName(sMName);				
			} else if(null!=sTName){
				miObj.setmPoster(sTName);
			}
			List<String> list = (List<String>)mi.nameSql("findMovie01", miObj);
			if(0==list.size()){
				
			} else {
				output.append(" { \"response\":\""+ list +"\" }");
			}
		} 
	}
	out.print(proxy.GetApiText("http://apis.daum.net/contents/movie?apikey=6080f3487be7091f1082f66fc2e62020ba90c578&q=" + mName));
%>					
 --%>
<%@page import="Movie.Api.Proxy"%><%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%><%
	Proxy proxy = new Proxy();

	String gubun = request.getParameter("gubun");
	String mCode = request.getParameter("mCode");
	String mName = request.getParameter("mName");
	String mPoster = request.getParameter("mPoster");
	
	if(("code").equals(gubun)){
		out.print(proxy.GetApiText("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieInfo.xml?key=c0b637fb17b09ec2f1b2075695a04e28&movieCd=" + mCode));
	}else if(("name").equals(gubun)){
		out.print(proxy.GetApiText("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.xml?key=c0b637fb17b09ec2f1b2075695a04e28&movieNm=" + mName + "&gubun=code"));
	}else if(("director").equals(gubun)){
		out.print(proxy.GetApiText("http://www.kobis.or.kr/kobisopenapi/webservice/rest/movie/searchMovieList.xml?key=c0b637fb17b09ec2f1b2075695a04e28&directorNm=" + mName + "&gubun=code"));
	}else if(("poster").equals(gubun)){
		out.print(proxy.GetApiText("http://openapi.naver.com/search?key=4e0f99d39ceef9f1013a0769bf37c91d&display=10&start=1&target=movie&query=" + mPoster));
	}
%>					

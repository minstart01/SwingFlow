<%@ page import="Common.Spring" %>	
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String sRequest = request.getParameter("request");
	StringBuffer output = new StringBuffer();

	if (null != sRequest) {

		if (sRequest.equals("setLocale")) {
			String sLocale = request.getParameter("locale");
			if (null != sLocale) {
				Spring.setLocale(sLocale);
				output.append(" { \"response\":\"setLocale\" , \"locale\":\"" + sLocale
						+ "\" }");
			}
			out.write(output.toString());
		} else {
			output.append(" { \"response\":\"locale Null\" }");
			out.write(output.toString());
		}
	} else {
		output.append(" { \"response\":\"ParameterNull\" }");
		out.write(output.toString());
	}
%>
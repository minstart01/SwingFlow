<%@ taglib prefix="c"   uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ page import="Common.Spring" %>     --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="/SwingFlow/Script/Common/jquery-2.1.1.js"></script>
<script type="text/javascript">
	function setLocale(locale){
		$.ajax({
			url : '/SwingFlow/Category/Common/requestLocaleAjax.jsp',
			type : 'GET',
			data : {
				request : 'setLocale',
				locale : locale
			},
			success : function(data) {
				var responseTxt = data;
				if (null != responseTxt) {
					var userJson = JSON && JSON.parse(responseTxt);
					if (userJson.response == "setLocale") {
						window.location.reload();
						return true;
					} else {
						userJson.locale;
						return false;
					}
					;
				}
				;
			}
		});
	}
	function fnLocaleHangul(){
		setLocale("korea");
// 		<fmt:setLocale value="ko" scope="session"/>
// 		window.location.reload();
	}
	function fnLocaleEnglish(){
		setLocale("English");
// 		<fmt:setLocale value="en" scope="session"/>
// 		window.location.reload();
	}
</script>
</head>
<body>
<header id="header">
	<nav class="top_nav">
		<table width="auto" class="top_table">
      	<tr>
        	<th><a href="/SwingFlow/Category/Main/index.jsp">홈</a></th>
            <th><a href="/SwingFlow/Category/Shopping/Index.jsp">쇼핑</a></th>
            <th><a href="/SwingFlow/Category/Movie/Index.jsp">영화</a></th>
            <th><a href="/SwingFlow/Category/Airline/Index.jsp">항공</a></th>
            <th><a href="/SwingFlow/Category/Inn/Index.jsp">여행</a></th>
            
            <%
            String Id = (String)session.getAttribute("MemberId");
				if(Id == null){
			%>
			<th><a href="/SwingFlow/Category/Common/Login.jsp?gubun=<%=request.getParameter("gubun")%>">로그인</a></th>
			<th><a href="/SwingFlow/Category/Common/Join.jsp">회원가입</a></th>
			<%	
				}else{
					
			%>
			<th><a href="#"><%= Id %>님</a></th>
			<th><a href="/SwingFlow/Category/Common/LogoutSession.jsp?gubun=<%=request.getParameter("gubun")%>">로그아웃</a></th>
			<%
				}
			%>
                   
            
            <th><a href="javascript:fnLocaleHangul();">한글</a></th>
            <th><a href="javascript:fnLocaleEnglish();">English</a></th>
        </tr>
        </table>
	</nav>
    <div>
    </div>
</header>
</body>
</html>
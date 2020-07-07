<%@page import="util.CookieBox"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	//Cookie[] cookies = request.getCookies();
	CookieBox cookieBox = new CookieBox(request);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>쿠키 정보</h1>
	 <%-- <%
		if (cookies != null && cookies.length > 0) {
			for (int i = 0; i < cookies.length; i++){
				out.println("<div> " + cookies[i].getName() + " = " + cookies[i].getValue() + " </div>");
			}
		} 
	%> --%>
	
	<div>uid =<%= cookieBox.getCookie("uid").getValue() %></div>
	<div>uname =<%= cookieBox.getCookie("uname").getValue() %></div>
	
	<a href="./editCookie.jsp">쿠키값 수정하기</a> <br>
	<a href="./delCookie.jsp">쿠키 삭제</a>

</body>
</html>
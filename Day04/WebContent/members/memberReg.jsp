<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="requestInfo" class="model.RequestMemberInfo"/>
<jsp:setProperty property="*" name="requestInfo"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>회원가입 처리 페이지</h1>
	<hr>
	<ul>
		<li>id : <%=requestInfo.getId()%></li>
		<li>pw : <%=requestInfo.getPw()%></li>
		<li>name : <%=requestInfo.getUname()%></li>
		<li>photo : </li>
<%-- 		<li>id : <%=request.getParameter("id")%></li>
		<li>pw : <%=request.getParameter("pw")%></li>
		<li>name : <%=request.getParameter("uname")%></li>
		<li>photo : <%=request.getParameter("uphoto")%></li>
 --%>	</ul>
</body>
</html>
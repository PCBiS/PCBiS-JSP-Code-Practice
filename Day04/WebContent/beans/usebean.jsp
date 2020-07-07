<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="memberInfo" class="model.LoginInfo" scope="session"/>

<!-- 
id : 식별자 이름 
class : 객체 생성
scope : page, request, session, application 사용 가능
		scope를 지정하지 않으면 Default값은 page임.
-->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1><%=memberInfo %></h1>
</body>
</html>
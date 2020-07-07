<%@ 
	page 
	language="java" 
	contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
   	isErrorPage="true"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
</head>
<body>
	<h1>에러가 발생하였습니다!</h1>
	<a href="./index.jsp">돌아가기</a>
	<hr>	
		<h3>
		에러 타입 : <%=exception.getClass().getName() %>
		<br>
		에러 메세지 : <%=exception.getMessage() %>
		<br>
		<%=exception.getStackTrace() %>
	</h3>
	
</body>
</html>
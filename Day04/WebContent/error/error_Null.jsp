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
<title>Null Pointer Exception</title>
</head>
<body>	
	<h1>알 수 없는 에러가 발생했습니다. 다시 실행해주세요</h1>
	<a href="<%= request.getContextPath()%>/index.jsp">돌아가기</a>
	<hr>
</body>
</html>
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
<title>404 Not Found</title>
</head>
<body>	
	<h1>잘못된 요청이 발생하였습니다! 요청하신 경로를 확인해주세요</h1>
	<a href="<%= request.getContextPath()%>/index.jsp">돌아가기</a>
	<hr>
</body>
</html>
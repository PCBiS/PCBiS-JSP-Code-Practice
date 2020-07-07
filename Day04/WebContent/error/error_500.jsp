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
<title>500 Server Error</title>
</head>
<body>	
	<h1>
		처리 과정에서 발생하였습니다!
		<br>
		처음부터 다시 시작해주십시요.
		<br>
		계속해서 동일 오류가 발생한다면 관리자에게 문의 부탁드립니다.
	</h1>
	<a href="<%= request.getContextPath()%>/index.jsp">돌아가기</a>
	<hr>
</body>
</html>
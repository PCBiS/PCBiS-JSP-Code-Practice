<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
	<c:if test="${writeResult > 0}">
		<title>정상등록</title>
		<h1>글이 정상적으로 등록 되었습니다.</h1>
		<a href="./list.jsp">돌아가기</a>
	</c:if>
	<c:if test="${writeResult == 0}">
		<title>작성실패</title>
		<h1>글 작성에 실패하였습니다!</h1>
		<a href="./list.jsp">돌아가기</a>
	</c:if>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- ${eList} db에서 데이터 읽어오는것 확인. -->
	<table border="1">
		<tr>
			<th>사원번호</th>
			<th>사원이름</th>
			<th>사원급여</th>
			<th>사원직급</th>
		</tr>
		<c:forEach items="${eList}" var="emp">
			<tr>
				<td>${emp.empno}</td>
				<td>${emp.ename}</td>
				<td>${emp.sal}</td>
				<td>${emp.job}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>
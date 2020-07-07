<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>전송 받은 데이터</h1>
	<hr>
	<table>
		<tr>
			<td>이름</td>
			<td><%=request.getParameter("name") %></td>
		</tr>
		<tr>
			<td>희망직업</td>
			<td><%=request.getParameter("job") %></td>
		</tr>
		<tr>
			<td>보유기술</td>
			<td>
				<%
					String[] skillList = request.getParameterValues("skill");
				
					for(int i =0; i < skillList.length; i++){
						out.println(skillList[i] + "<br>");
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Emp"%>
<%@page import="java.util.List"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table {
		width: 80%
	}
	table td {
		padding: 10px;
		text-align: center;
	}
</style>
</head>
<body>
	<%
		//1. 데이터베이스 로드.
	//Class.forName("oracle.jdbc.driver.OracleDriver"); // web.xml에서 한번 불러놓음.
	Connection conn = null;
	//Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	List<Emp> eList = new ArrayList<Emp>();

	String dbURL = "jdbc:oracle:thin:@ksla.iptime.org:31521:orcl";
	String userID = "scott";
	String passWD = "SeconD*1203";
	String sql = "SELECT * FROM EMP order by ename desc";

	try {
		//2. Connection 생성.
		conn = DriverManager.getConnection(dbURL, userID, passWD);
		//stmt = conn.createStatement();
		pstmt = conn.prepareStatement(sql);
		//rs = stmt.excuteQuery();
		rs = pstmt.executeQuery();
		
		// 3. Select해서 불러온 Query의 결과를 배열에 찍는다.
		while (rs.next()) {
			eList.add(new Emp(rs.getInt("empno"), rs.getString("ename"), rs.getInt("sal"), rs.getString("job")));
		}

	} catch (SQLException e) {
		e.printStackTrace();
	} finally {
		rs.close();
		pstmt.close();
		conn.close();
	}
	
	request.setAttribute("eList", eList);
	%>
	
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
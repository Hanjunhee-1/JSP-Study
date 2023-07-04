<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MySQL 연동 테스트</title>
</head>
<body>

<h1>MySQL 연동 결과</h1>

<%
	String jdbcURL = "jdbc:mysql://localhost:3306/jsp_study";
	String user = "root";
	String pw = "1234";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection connection = DriverManager.getConnection(jdbcURL, user, pw);
%>
		<h1>성공!</h1>
<%		
	} catch(Exception e) {
%>
		<h1>실패!</h1>
<%
	}
%>

</body>
</html>
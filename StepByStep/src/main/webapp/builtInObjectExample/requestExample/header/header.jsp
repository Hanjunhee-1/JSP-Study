<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>header 정보를 다뤄봅니다.</title>
</head>
<body>

<%
	String userAgent = request.getHeader("User-Agent");
%>

<p><%=userAgent %></p>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워딩 결과</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	String forwardedData = request.getParameter("username");
%>

<h1>포워딩 된 데이터입니다: <%=forwardedData %></h1>

</body>
</html>
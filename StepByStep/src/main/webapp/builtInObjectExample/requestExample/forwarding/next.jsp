<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워딩 중</title>
</head>
<body>

<%
	request.getRequestDispatcher("next2.jsp").forward(request, response);
%>

</body>
</html>
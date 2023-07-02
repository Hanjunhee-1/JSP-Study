<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>스크립트 태그와 표현식 태그</title>
</head>
<body>
<%
	int num = 10;
	String hello = new String("안녕하세요");
%>

<h1><%=hello %></h1>
<p>현재 num 변수의 값: <%=num %></p>

</body>
</html>
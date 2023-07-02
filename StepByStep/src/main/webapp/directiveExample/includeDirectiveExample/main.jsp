<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>include 지시자 사용예시</title>
</head>
<body>

<%@ include file="header.jsp" %>
<br/><br/>
<p>--- Main ---</p>
<h1>This is <b>main</b></h1>
<p>--- Main ---</p>
<br/><br/>
<%@ include file="footer.jsp" %>
</body>
</html>
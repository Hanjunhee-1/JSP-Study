<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>포워딩을 해주는 곳입니다.</title>
</head>
<body>

<%
	// 일부러 다른 내용을 추가해봅니다.
	String userInput = request.getParameter("userInput");
	userInput += " - passed";
%>

<jsp:forward page="end.jsp">
	<jsp:param name="userInput" value="<%=userInput %>"/>
</jsp:forward>

</body>
</html>
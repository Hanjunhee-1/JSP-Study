<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자인지 확인합니다.</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("id");
	String password = request.getParameter("password");
%>

<%
	if (id.equals("admin") && password.equals(Integer.toString(1234))) {
		session.setAttribute("id", id);
		response.sendRedirect("login.jsp");
	} else {
%>
	<h1>아이디 혹은 비밀번호가 틀렸습니다.</h1>
<%
	}
%>
</body>
</html>
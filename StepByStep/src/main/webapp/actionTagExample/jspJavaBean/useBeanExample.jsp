<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>jsp:useBean</title>
</head>
<body>

<jsp:useBean id="user" class="com.example.User" scope="page" />

<%
	user.setId(1);
	user.setAge(21);
	user.setName("Hanjunhee");
	user.setPhone("010-1234-5678");
	user.setEmail("hanjuni857@gmail.com");
%>

<h3>ID: <%=user.getId() %></h3>
<h3>AGE: <%=user.getAge() %></h3>
<h3>NAME: <%=user.getName() %></h3>
<h3>PHONE: <%=user.getPhone() %></h3>
<h3>EMAIL: <%=user.getEmail() %></h3>

</body>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모두 활용해봅니다.</title>
</head>
<body>

<jsp:useBean id="user" class="user.User" scope="page" />

<jsp:setProperty name="user" property="id" value="<%=1 %>"/>
<jsp:setProperty name="user" property="age" value="<%=21 %>"/>
<jsp:setProperty name="user" property="name" value="Hanjunhee"/>
<jsp:setProperty name="user" property="phone" value="010-1234-5678"/>
<jsp:setProperty name="user" property="email" value="hanjuni857@gmail.com"/>

<h3>ID: <jsp:getProperty name="user" property="id" /></h3>
<h3>AGE: <jsp:getProperty name="user" property="age" /></h3>
<h3>NAME: <jsp:getProperty name="user" property="name" /></h3>
<h3>PHONE: <jsp:getProperty name="user" property="phone" /></h3>
<h3>EMAIL: <jsp:getProperty name="user" property="email" /></h3>

</body>

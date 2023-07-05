<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="daos.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.util.List, java.util.ArrayList" %>

<%
	request.setCharacterEncoding("utf-8");
	int userId = Integer.parseInt(request.getParameter("userId"));
	UserDAO userDAO = new UserDAO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>한 명의 사용자를 조회합니다.</title>
</head>
<body>

<% if (userDAO.getUser(userId) == null) { %>
	<h1>존재하는 사용자가 없습니다.</h1>
<% 
	} else { 
	User user = userDAO.getUser(userId);	
%>
	<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>PHONE</th>
				<th>EMAIL</th>
			</tr>
			<tr>
				<td><%=user.getId() %></td>
				<td><%=user.getName() %></td>
				<td><%=user.getAge() %></td>
				<td><%=user.getPhone() %></td>
				<td><%=user.getEmail() %></td>
			</tr>
	</table>
<% } %>

</body>
</html>
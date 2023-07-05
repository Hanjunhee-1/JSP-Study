<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ page import="daos.UserDAO" %>
<%@ page import="user.User" %>
<%@ page import="java.util.List, java.util.ArrayList" %>

<%
	UserDAO userDAO = new UserDAO();
	List<User> users = userDAO.getUsers();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>모든 사용자를 조회합니다. </title>
<style type="text/css">
	table {
		width: 1600px;
		border: 1px solid black;
	} 
	.content {
		height: 50px;
	}
	td {
		width: 50px;
		font-size: 30px;
		text-align: center;
		border-top: 1px dotted black;
	}
</style>
</head>
<body>

<% if(users == null){ %>
	<h1>존재하는 사용자가 없습니다.</h1>
<% 
	} else { 
%>		
		<table>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>AGE</th>
				<th>PHONE</th>
				<th>EMAIL</th>
			</tr>
<%
		for (int i=0; i<users.size(); i++) {	
%>
			<tr class="content">
				<td><%=users.get(i).getId() %></td>
				<td><%=users.get(i).getName() %></td>
				<td><%=users.get(i).getAge() %></td>
				<td><%=users.get(i).getPhone() %></td>
				<td><%=users.get(i).getEmail() %></td>
			</tr>
<% 
		} 
%>
		</table>
<%
	}		
%>

</body>
</html>
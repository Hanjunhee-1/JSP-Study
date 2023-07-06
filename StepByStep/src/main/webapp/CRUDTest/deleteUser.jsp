<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="daos.UserDAO" %>
<%@ page import="user.User" %>

<%
	request.setCharacterEncoding("utf-8");
	
	int userId = 0;
	if (request.getParameter("userId") != "") {
		userId = Integer.parseInt(request.getParameter("userId"));
	}
	
	UserDAO userDAO = new UserDAO();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자를 삭제합니다. </title>
</head>
<body>

<%
	int result = userDAO.deleteUser(userId);
	if (result != 0) {
%>
	<h1>사용자 삭제에 성공했습니다. </h1>
	<button onclick="toMain()">메인화면으로</button>
<% } else { %>
	<h1>존재하지 않는 사용자입니다.</h1>
	<button onclick="toMain()">메인화면으로</button>
<% } %>


<script type="text/javascript">
	function toMain() {
		location.href = "index.jsp";
	}
</script>
</body>
</html>
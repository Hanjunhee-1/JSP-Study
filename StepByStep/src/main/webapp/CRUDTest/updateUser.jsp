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
	String userName = request.getParameter("userName");
	int userAge = 0;
	if (request.getParameter("userAge") != "") {
		userAge = Integer.parseInt(request.getParameter("userAge"));
	}
	String userPhone = request.getParameter("userPhone");
	String userEmail = request.getParameter("userEmail");
	
	UserDAO userDAO = new UserDAO();
	User user = new User();
	
	user.setName(userName);
	user.setAge(userAge);
	user.setPhone(userPhone);
	user.setEmail(userEmail);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 정보를 업데이트합니다.</title>
</head>
<body>

<%
	int result = userDAO.updateUser(userId, user);
	if (result != 0) {
%>
	<h1>사용자 업데이트에 성공했습니다. </h1>
	<button onclick="toMain()">메인화면으로</button>
<% } else { %>
	<h1>존재하지 않는 사용자 혹은 중복된 이메일입니다.</h1>
	<button onclick="toMain()">메인화면으로</button>
<% } %>

<script type="text/javascript">
	function toMain() {
		location.href = "index.jsp";
	}
</script>
</body>
</html>
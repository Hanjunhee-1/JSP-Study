<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="checkSession.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>관리자 로그인하는 곳</title>
</head>
<body>

<%
	if (userSession == null) {
%>
	<form method="post" action="checkAdmin.jsp">
		<label for="id">아이디</label>
		<input  type="text" name="id" id="id" placeholder="아이디를 입력하세요" required /><br/>
		<label for="password">비밀번호</label>
		<input type="password" name="password" id="password" placeholder="비밀번호를 입력하세요" required /><br/>
		<input type="submit" value="로그인" />
	</form>
<%
	} else {
%>
	<form method="post" action="logout.jsp">
		<h1><%=session.getAttribute("id") %>님 환영합니다</h1>
		<input type="submit" value="로그아웃" />
	</form>
<%
	}
%>

</body>
</html>
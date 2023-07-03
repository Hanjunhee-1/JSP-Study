<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>존재하는 cookie 를 조회합니다.</title>
</head>
<body>

<%
	Cookie[] cookies = request.getCookies();
	boolean isExist = false;

	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie: cookies) {
			if (cookie.getName().equals("id")) {
				isExist = true;
%>
				<h1>cookieName: <%=cookie.getName() %></h1>
				<h1>cookieValue: <%=cookie.getValue() %></h1>
<%
			}
		}
	}
%>

<%
	if (!isExist) {
%>
		<h1>존재하는 cookie 가 없네요?</h1>
<%
	}
%>
</body>
</html>
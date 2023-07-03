<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie 를 삭제합니다.</title>
</head>
<body>

<%
	Cookie[] cookies = request.getCookies();

	if (cookies != null && cookies.length > 0) {
		for (Cookie cookie: cookies) {
			if (cookie.getName().equals("id")) {
				cookie.setMaxAge(0);	
				response.addCookie(cookie);
				response.sendRedirect("index.jsp");
			}
		}
	}
%>

</body>
</html>
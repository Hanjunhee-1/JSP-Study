<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력한 데이터의 결과입니다.</title>
</head>
<body>

<%
	// 한글 깨짐 방지
	request.setCharacterEncoding("utf-8");

	// input.jsp 에서 입력한 데이터를 받아옵니다.
	String username = request.getParameter("username");
%>

<h1>안녕하세요, <%=username %>님</h1>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>선언 태그</title>
</head>
<body>

<%!
int num = 0;
public void sum() {
	for (int i=1; i<=10; i++) {
		num += i;
	}
}
%>

<% sum(); %>
<p>1부터 10까지 합: <%=num %></p>

</body>
</html>
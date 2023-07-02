<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>import 지시자</title>
</head>
<body>

<%! 
	ArrayList<String> arr = new ArrayList<>();
%>

<%
	arr.add("It\'s");
	arr.add("JSP");
	arr.add("...");
%>

<%
	for (int i=0; i<arr.size(); i++) {
%>
	<p>하나씩 출력해봅시다: <%=arr.get(i) %></p>
<%} %>

</body>
</html>
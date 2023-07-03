<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿼리 파라미터를 다뤄봅니다.</title>
</head>
<body>

<%
	request.setCharacterEncoding("utf-8");

	String queryString1 = request.getQueryString();
	String[] queryString2 = request.getParameterValues("colors");
	String queryString3 = request.getParameter("colors");
	
%>
<h1>쿼리를 작성해보세요</h1>

<p>--- getQueryString ---</p>
<h1><%=queryString1 %></h1>
<p>--- getQueryString ---</p> <br/><br/>

<p>--- getParameterValues ---</p>
<%
	for (int i=0; i<queryString2.length; i++) {
%>
		<h1><%=queryString2[i] %></h1>
<%
	}
%>
<p>--- getParameterValues ---</p> <br/><br/>

<p>--- getParameter ---</p>
<h1><%=queryString3 %></h1>
<p>--- getParameter ---</p>

</body>
</html>
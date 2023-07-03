<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>cookie 를 사용해봅니다.</title>
</head>
<body>

<h1>아래의 버튼 중에 원하시는 버튼을 클릭하세요</h1>

<form action="createCookie.jsp" method="GET">
	<input type="submit" value="쿠키생성"/>
</form> <br/>

<form action="getCookie.jsp" method="GET">
	<input type="submit" value="쿠키조회"/>
</form> <br/>

<form action="deleteCookie.jsp" method="GET">
	<input type="submit" value="쿠키삭제"/>
</form> <br/>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CRUD 테스트를 해볼 수 있습니다.</title>
</head>
<body>

<h1>createUser</h1>
<form action="inputForCreateUser.jsp" method="GET">
	<input type="submit" value="createUser" />
</form><br/><br/><br/>

<h1>getUsers</h1>
<form action="getUsers.jsp" method="GET">
	<input type="submit" value="getUsers" />
</form><br/><br/><br/>

<h1>getUser</h1>
<form action="inputForGetUser.jsp" method="GET">
	<input type="submit" value="getUser" />
</form><br/><br/><br/>

<h1>updateUser</h1>
<form action="inputForUpdateUser.jsp" method="GET">
	<input type="submit" value="updateUser" />
</form><br/><br/><br/>

<h1>deleteUser</h1>
<form action="inputForDeleteUser.jsp" method="GET">
	<input type="submit" value="deleteUser" />
</form><br/><br/><br/>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
<style type="text/css">
	form {
		width: 500px;
	}
</style>
</head>
<body>

<h1>아래의 form 을 채워주세요</h1>
<form action="createUser.jsp" method="POST">
	<fieldset>
		<legend>사용자 정보</legend>
			<label for="userName">이름: </label>
			<input type="text" name="userName" id="userName" required/>
			<br/>
			<label for="userAge">나이: </label>
			<input type="number" name="userAge" id="userAge" min="1" max="100" step="1" required/>
			<br/>
			<label for="userPhone">전화번호: </label>
			<input type="tel" name="userPhone" id="userPhone" pattern="[0-9]{3}-[0-9]{4}-[0-9]{4}" required/>
			<br/>
			<label for="userEmail">이메일: </label>
			<input type="email" name="userEmail" id="userEmail" required/>
			<br/>
			<input type="submit" value="create" onclick="return check();"/>
	</fieldset>
</form>

<script type="text/javascript">
	function check() {
		var userId = document.getElementById("userId").value;
		
		if (userId <= 0 || isNaN(userId)) {
			alert("유효한 양의 숫자를 입력해주세요");
			return false;
		}
		
		return true;
	}
</script>
</body>
</html>
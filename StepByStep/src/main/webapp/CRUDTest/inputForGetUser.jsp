<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>입력</title>
</head>
<body>

<h1>조회하려는 사용자의 ID 를 입력해주세요</h1>
<form action="getUser.jsp" method="GET">
	<input type="text" name="userId" id="id" required/>
	<input type="submit" value="조회하기" onclick="return check();"/>
</form>

<script type="text/javascript">
	function check() {
        var id = document.getElementById("id");
        id = parseInt(id.value);
        
        if (isNaN(id) || id <= 0) {
            alert("양의 숫자를 입력해주세요.");
            return false; // 폼 제출을 중지
        }
        
        return true; // 폼 제출
	}
</script>

</body>
</html>
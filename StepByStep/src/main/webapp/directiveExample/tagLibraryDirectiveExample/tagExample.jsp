<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL 예시</title>
</head>
<body>

<c:set var="num1" value="1"></c:set>
<c:out value="taglib 를 통해 출력해주는 것입니다"></c:out><br/>
<c:out value="${null}">이렇게도 출력이 됩니다.</c:out><br/>
<c:out value="${num1}"></c:out><br/><br/>

<c:set var="sum" value="${ 0 }"></c:set>
<c:forEach var="i" begin="${ 1 }" end="${ 10 }">
	<c:set var="sum" value="${ sum + i }"></c:set>
</c:forEach>
<c:out value="결과입니다: "></c:out>
<c:out value="${ sum }"></c:out><br/><br/><br/>

<c:if test="${ sum < 100 }">
	<c:out value="${ sum } 은/는 100 보다 작습니다."></c:out>
</c:if> <br/><br/><br/>

<c:set var="str" value="A+"></c:set>
<c:choose>
	<c:when test="${ str == 'A+' }">
		<c:out value="A+ 가 당신의 학점인가요?"></c:out>
	</c:when>
	<c:otherwise>
		<c:out value="아..."></c:out>
	</c:otherwise>
</c:choose> <br/><br/><br/>

</body>
</html>
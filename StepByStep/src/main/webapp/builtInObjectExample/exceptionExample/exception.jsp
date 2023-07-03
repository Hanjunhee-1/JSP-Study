<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page errorPage="error.jsp" %>

<html>
<head>
    <title>exception 을 사용해봅니다.</title>
</head>
<body>
    <h1>exception 예시입니다.</h1>

    <%-- 예외가 발생할 수 있는 코드 --%>
    <% 
    try {
        int dividend = 10;
        int divisor = 0;
        int result = dividend / divisor;
        out.println("결과: " + result);
    } catch (ArithmeticException e) {
        // 예외 처리
        out.println("예외 발생: " + e.getMessage());
    }
    %>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	Cookie cookie = new Cookie("id", "admin");

	// 1분으로 설정
	cookie.setMaxAge(60 * 60);
	
	response.addCookie(cookie);
	
	response.sendRedirect("index.jsp");
%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 삭제</title>
</head>
<body>
	<h2>쿠키 삭제하기</h2>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
	for(int i=0; i<cookies.length; i++){
		cookies[i].setMaxAge(0); // 쿠키의 유효기간을 0으로 설정하여 쿠키 삭제
		response.addCookie(cookies[i]);
		out.print("<br>");
		out.print("<br>");
	}
	response.sendRedirect("cookieCheck.jsp");
	
	%>
</body>
</html>
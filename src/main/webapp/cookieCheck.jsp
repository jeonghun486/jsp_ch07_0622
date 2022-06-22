<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 정보 확인</title>
</head>
<body>
	<h2>쿠키 객체 정보 확인</h2>
	<hr>
	<%
		Cookie[] cookies = request.getCookies();
		
		out.println("쿠키객체의 개수 : " + cookies.length+"<br>");
	
		for(int i=0; i<cookies.length; i++){
			
			out.print("쿠키의 이름 : " + cookies[i].getName()+"<br><br>");
			out.print("쿠키의 값 : " + cookies[i].getValue()+"<br><br>");
			out.print("<br>");
			out.print("<br>");
		}
	%>
	<br>
	<a href="cookieDelete.jsp">쿠키삭제</a>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 확인</title>
</head>
<body>
	<%
		String mid = request.getParameter("id");
		String mpw = request.getParameter("pw");
		
		if(mid.equals("tiger") && mpw.equals("12345")) {
			
			Cookie  cookie_id = new Cookie("memberId", "tiger");
			Cookie  cookie_pw = new Cookie("memberPw", "12345");
			
			response.addCookie(cookie_id);
			response.addCookie(cookie_pw);
			
			out.println("안녕하세요" + mid + "님 로그인 하셨습니다.<br>");
			out.println("쿠키가 생성되었습니다.");
			
			
		}else{
			response.sendRedirect("login.jsp");	
		}
	%>
	<br>
	<a href="cookieCheck.jsp">쿠키정보 확인하기</a>
</body>
</html>
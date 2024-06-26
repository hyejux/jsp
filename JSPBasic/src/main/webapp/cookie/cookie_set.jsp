<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    //쿠키 객체 생성
    Cookie cookie = new Cookie("user_id","aaa1234");
    Cookie cookie2 = new Cookie("user_name","길자");
    //쿠키지속시간
    cookie.setMaxAge(3600); //현재시간 + 1시간 
    cookie.setMaxAge(20);
    //쿠키 리스폰스에 담아 보내기
    response.addCookie(cookie);
    response.addCookie(cookie2);
    
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 	<h3> 쿠키란 ? - 서버와 클라이언트의 정보유지 수단으로 서버에서 만들어서 클라이언트에 저장합니다</h3>
 	
 	<a href="cookie_get.jsp"> cookie사용하깅</a>
 	
 	
</body>
</html>
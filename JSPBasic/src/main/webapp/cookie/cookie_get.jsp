<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    
    <%
    
    Cookie[] cookies = request.getCookies();
	// 쿠키 꺼냄 , 쿠키 배열이 null 아닐 때만 
	
	if ( cookies != null ){
		for (Cookie c : cookies){
			out.println(c.getName()+"<br>"); // 쿠키 이름  getName
			out.println(c.getValue()+"<br>"); //  쿠키 괎 
		}
	}
    
    %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h3> 쿠키를 사용해보쟝 !</h3>
쿠키는 매 요청마다 자동으로 전송돼서 request 객체에 저장된다.

<a href="cookie_get2.jsp"> 특정 쿠키만 사용할거얌 </a>


</body>
</html>
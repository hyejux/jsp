<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
        <%
    
    Cookie[] cookies = request.getCookies();
	// 쿠키 꺼냄 , 쿠키 배열이 null 아닐 때만 
	
	String str = "";
	
	if ( cookies != null ){
		for (Cookie c : cookies){
			if(c.getName().equals("user_id")){ // true 면 잇다는ㄷ뜻 쿠키가
				str = c.getValue();
				 
			}
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
 쿠키값 : <%= str %>
</body>
</html>
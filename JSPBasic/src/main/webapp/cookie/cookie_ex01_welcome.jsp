<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    Cookie[] arr = request.getCookies();
    
    
    String str = "";
    if (arr != null){
    	for (Cookie c : arr){
    		if (c.getName().equals("user_id")){
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
 <%= str %> 님 환영합니다잉 ~
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 
 StringBuffer url = request.getRequestURL();
 String uri = request.getRequestURI();
 String path = request.getContextPath();
 
 String remote = request.getRemoteAddr();
 
 %>   
    
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

url : <%=url %> 
uri : <%=uri %>
path :<%=path %>
addr : <%=remote %>


</body>
</html>
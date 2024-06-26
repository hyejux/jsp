<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

<% 
if (id.equals("abc")){
	if (pw.equals("1234")){
		response.sendRedirect("res_02_succese.jsp");
	}else{
		response.sendRedirect("res_02_fail.jsp");
	}
}else{
	response.sendRedirect("res_02_fail.jsp");
}
%>




</body>
</html>
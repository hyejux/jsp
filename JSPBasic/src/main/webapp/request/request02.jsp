<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.util.Arrays" %>

<%

String nick = request.getParameter("nick");
String[] hobby = request.getParameterValues("hobby");
String region = request.getParameter("region");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

li {
height: 50px;
width : 50%;
border: 2px solid blue;
list-style-type : none;
text-align : center;
padding : 10px;
}

</style>

</head>
<body>
	<h3> 서버로 넘어가 ~ ^^</h3>
	
	<ul>
		
		<li> 닉네임: <%= nick %> </li>
		<li> 취미 : <%= Arrays.toString(hobby)%> </li>
		<li> 지역 :<%= region %></li>
	</ul>

	
	
</body>
</html>

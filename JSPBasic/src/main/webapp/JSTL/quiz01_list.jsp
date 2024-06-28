<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="com.model.DepartmentDAO"%>
<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	활성화된 부서 수 ${fn:length(list)}
	<table>
		<tr>
	
		<td>부서아이디</td>
		<td> 부서이름 </td>
	</tr>
	<c:forEach var="dto" items="${list }">
	<tr>
	
		<td> ${dto.dapartmentId }</td>
		<td> ${dto.departmentName }</td>
	</tr>
	</c:forEach>
	


</body>
</html>
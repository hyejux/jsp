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

<c:if test="${dto == null }">
	<p> 조회한 부서는 없는 번호 </p>
</c:if>

<c:if test="${dto != null }">
	${dto.departmentName}
</c:if>

<a href="quiz01.jsp"> 다시 조회</a>




	<c:forEach var="dto" items="${list }">
		<c:set var="name_find" value="${dto.departmentName}"/>

	</c:forEach>
	


	
<c:set var="id" value="${param.departmentId}" />

부서 아이디 ${id}의 <br>
부서 이름은 ${name_find} 입니다. 


</body>
</html>
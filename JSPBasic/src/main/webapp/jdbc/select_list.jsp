<%@page import="com.model.DepartmentDAO"%>
<%@page import="com.model.DepartmentDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    //조회한 결과 얻긔
   
    //ArrayList<DepartmentDTO> list = (ArrayList<DepartmentDTO>)request.getAttribute("list");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- 활성화 된 부서수 : list.size() -->
	활성화된 부서 수 ${fn:length(list)}
	
	<table>
		<tr>
	
		<td>부서아이디</td>
		<td> 부서이름 </td>
		<td> 매니저아이디</td>
		<td> 위치아이디</td>
	</tr>
	<c:forEach var="dto" items="${list }">
	<tr>
	
		<td> ${dto.dapartmentId }</td>
		<td> ${dto.departmentName }</td>
		<td> ${dto.manager_Id }</td>
		<td> ${dto.locationID }</td>
	</tr>
	</c:forEach>
	
	<%-- <% for (DepartmentDTO dto : list) { 
	<tr>
		<th> 부서번호 <%= dto.getDepartmentId() %> </th>
		<th> 부서명  <%= dto.getDepartmentName() %></th>
		<th> 매니저 번호   <%= dto.getManagerId() %></th>
		<th> 부서ㅓ 위치 번호  <%= dto.getLocationId() %></th>		
	</tr>
	<% } %> --%>
	</table>
	

</body>
</html>
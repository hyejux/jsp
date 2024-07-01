<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../include/header.jsp" %>

<section>
	<div align="center">
	
		<h3> ${sessionScope.user_name} 회원 (${sessionScope.user_id}) 님의 회원 정보 </h3>
		<a href="modify.user" style="font-size:30px"> 회원정보 관리</a> </br>
		<a href="delete.user" style="font-size:30px"> 회원탈퇴 화면으롱 </a>
		<a> </a>
	
	
	
	</div>


</section>

<%@ include file="../include/footer.jsp" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<section>
<div align="center">

	<h3> 회원 탈퇴 </h3>
	<p> 비밀번호 입력 </p>
	<hr/>
	
	<form action="deleteForm.user" method="post">
	

		<input type="password" name="pw" ><br>

		
		<input type="submit" value="회원탈퇴 ">
		${ msg}
	</form>
</div>
</section>
<%@ include file="../include/footer.jsp" %>
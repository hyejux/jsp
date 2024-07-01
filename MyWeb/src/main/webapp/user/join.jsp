<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file="../include/header.jsp" %>
    
    <section>
    
    
    	<div align="center">
    	
    	<h3> 노름은 파도고, 프로그램은 data flow당 </h3>
    	<hr/>
    	<form action="joinForm.user" method="post">
    	
    		<table>
    			<tr>
    				<td>아이디</td>
    				<td><input type="text" name="id" placeholder="4글자이상" required="required" pattern="[0-9A-Za-z]{4, }"></td> 
    			
    			</tr>
    			<tr>
    				<td>비밀번호</td>
    				<td><input type="text" name="pw" placeholder="4글자이상"  required="required" pattern="[0-9A-Za-z]{4, }"></td> 
    			
    			</tr>
    			<tr>
    				<td>이름</td>
    				<td><input type="text" name="name" placeholder= "이름"  required="required" ></td> 
    			
    			</tr>
    		
    			<tr>
    				<td>이메일</td>
    				<td><input type="email" name="email" ></td> 
    			</tr>
    			<tr>
    				<td>성별</td>
    				<td><input type="radio" value="F" placeholder="F" name="gender" checked="checked"> 여자
    				<input type="radio" value="M" placeholder="M" name="gender"> 남자 </td>
    				  
    			
    			</tr>
    			
    			
    			
    	
    		
    		</table>
    		
    		${msg }
    		
    		<br/>
    		
    		<input type="submit" value="가입">
    		<input type="button" value="로그인" onclick="location.href='login.user';">
    		
    	
    	
    	</form>
    	
    	</div>
    
    </section>
    
    <%@ include file="../include/footer.jsp" %>
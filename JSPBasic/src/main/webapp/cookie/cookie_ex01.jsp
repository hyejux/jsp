<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%
	
    	Cookie[] arr = request.getCookies();
   
    	String answer = "";
    	
    	if (arr != null){
    		for (Cookie c : arr){
    				if (c.getName().equals("idCheck")){
						answer = c.getValue();    					
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

<form action="cookie_ex01_result.jsp"  method="post">
		<div></div>
	ID  : <input type="text" name="id" value=<%= answer %>> <br>
	PW : <input type="password" name="pw"> <br>
	<input type="submit" value="로그인" name="submit" id="btn">
	<input type="checkbox" value="y" name="flag"> 아이디 기억하기
	
</form>


</body>
</html>
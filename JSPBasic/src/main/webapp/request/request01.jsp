<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>	
	<h3> 입력 양식 </h3>
	
	
	<form action="request02.jsp">
	
		닉네임 : <input type="text" name="nick"> <br>
		취미 : 
		<input type="checkbox" value="코딩하기" name="hobby"> 코딩하기
		<input type="checkbox" value="잠자기" name="hobby"> 잠자기
		<input type="checkbox" value="집에가기" name="hobby"> 집에가기
			
		<br>
		
		사는 곳 : 
		<select name="region">
		
			<option value="서울시"> 서울시 </option>
			<option value="경기도"> 경기도 </option>
			<option value="인천시"> 인천시 </option>
			<option value="광양시"> 광양시 </option>
			
		</select>
		
		<br>
		
		<input type="submit" value="전송" name="submit">
			
	</form>
	
</body>
</html>
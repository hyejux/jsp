<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>

	body{
		marign: 0 auto;
	}
	
	header{
	width: 200px;
	padding: 30px;
	border : 2px solid pink;
	margin: 5px;
	text-align: center;
	}
	
	
	form {
	border : 2px solid pink;
	width: 200px;
	padding : 30px;
	margin : 5px;
	
	}
	
	#btn{
	
	background-color : pink;
	border: 2px solid grey;
	width:150px;
	height:;
	text-align: center;
	border-radius: 10px;
	margin-top : 10px;
	
	}
	
	input{
		
		width:100px;
		margin : 3px;
	}
	
</style>
</head>
<body>

<%--
      1.ex02에서는 아이디, 비번을 받도록 form을 만들고,
        ex02_result 페이지로 post방법으로 전송한다.
    --%>
<header> 소영웅니의 홈페이지 ~ </header>
<form action="res_result.jsp"  method="post">
		<div></div>
	ID  : <input type="text" name="id"> <br>
	PW : <input type="password" name="pw"> <br>
	
	<input type="submit" value="로그인" name="submit" id="btn">
</form>

</body>
</html>
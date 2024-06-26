<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<style>

form > input {
margin: 10px;
}

.f{
	width : 300px;
	margin: 10px;
}
.f > div{
display: inline;
 margin-left : 5px;
}

.f > input {
	display: inline;
	width: 100px;
}


</style>
<body>

<form action="session_ex01_result.jsp"  method="post">
	<div class="f">
	<div> ID  :</div>
	<input type="text" name="id"> <br>
	<div> PW  :</div>
	<input type="password" name="pw"> <br>
	<div> 닉네임  :</div>
	<input type="text" name="nick"><br>
	</div>
	<input type="submit" value="로그인" name="submit" id="btn">
</form>

</body>
</html>
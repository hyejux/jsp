<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
img{
width: 20%;}
</style>
</head>
<body>	

	<h3> 경로 공부쓰 </h3>
	<p>  jspTag 폴더 include로 이동 </p>
	<a href="../jspTag/include.jsp"> [상대] </a> <br>
	<a href="/JSPBasic/jspTag/include.jsp"> [절대] </a>

	<p>  myservlet 폴더 JSPBasic/banana 상대경로로 이동 </p>
	<a href="/JSPBasic/banana"> [절대] </a><br>
	<a href="../../banana"> [상대] </a><br>
	
	<p> html 안의 이미지 파일을 상대, 경로 절대경로로 표현 </p>
	<img src="../html/img/pan.jpg"> 상대
	<img src="/JSPBasic/html/img/pan.jpg"> 절대

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>

<%

	String nm  = request.getParameter("nm");
	double tall  = Double.valueOf(request.getParameter("tall"));
	double weight  =  Double.valueOf(request.getParameter("weight"));
	double result = weight / (tall/100 * tall/100);

%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#ok {
	font-size:30px;
	border: 3px solid blue;
	color : blue;
	width: 300px;
	text-align:center;
	}
	
	#dan{
	font-size:30px;
	border: 3px solid red;
	color: red;
	width: 300px;
	text-align:center;
	}
	
	#com{
	font-size:25px;
	marign : 30px;
	color: red;
	text-align:center;
	width: 300px;
	}

</style>
</head>
<body>
	<h3> BMI 지수 <%= result %> </h3>


	 
	 <% if (result >= 25){%>
	  	<div id="dan"> 과체중 입니다ㅠ 😰 </div> 
	  	<div id="com"> 운동하세요 ㅠㅠ </div> 
	 <%}else if (result <= 18){%>
		<div id="dan"> 저체중 입니다 ㅠ😰  </div> 
		<div id="com"> 밥 좀 드세요 </div> 
	 <% }else{%>
		<div id="ok">  정상 입니다 </div> 
	 <% } %>
	
</body>
</html>
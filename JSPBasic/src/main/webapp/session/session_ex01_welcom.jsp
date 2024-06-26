<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    
    if (session.getAttribute("id") == null){
    	response.sendRedirect("session_ex01.jsp");
    }
    
    
    
    String user_id = (String) session.getAttribute("user_id");
    String user_nick = (String) session.getAttribute("user_nick");
    
    %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>

a {
color : black;
border-radius: 3px;
margin: 5px;
background-color: grey;
padding: 3px;
}
#frame {
border: 2px solid grey;
width: 300px; 
height: 180px;
border-radius: 10px;
}

#header{

text-align : center;
padding : 30px;
font-size : 25px;

}

#btn{
text-align : center;

}

</style>


</head>

<body>

<div id="frame">
<div id="header"> <%= user_id %> ( <%= user_nick %> ) 님 환영합니다 ~!</div>
<div id="btn"> <a href="session_ex01.jsp" onclick="alert('로그아웃되었습니다')"> 로그아웃 </a>
<!--  다른 logout jsp 로 구혆는게 좋다. -->
</div>
</div>


</body>
</html>
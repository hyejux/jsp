<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%


request.setCharacterEncoding("utf-8");
String id = request.getParameter("id");
String pw = request.getParameter("pw");
String nk = request.getParameter("nick");


if (id.equals(pw)){
    session.setAttribute("user_id",id);
	session.setAttribute("user_nick",nk);	
	response.sendRedirect("session_ex01_welcom.jsp");
}else{
	response.sendRedirect("session_ex01.jsp");
	
}


%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>




</body>
</html>
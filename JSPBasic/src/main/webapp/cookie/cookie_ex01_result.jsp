<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%
    String id = request.getParameter("id");
    String pw = request.getParameter("pw");
    
    String flag = request.getParameter("flag");
  
	if (flag != null){
 		Cookie idCheck = new Cookie("idCheck",id);
 		idCheck.setMaxAge(1800);
	  	response.addCookie(idCheck);
	}
 	    	
    if (id.equals(pw)){
    	
    	Cookie cookie =  new Cookie("user_id",id);
    	cookie.setMaxAge(1800);
    	response.addCookie(cookie);

    	response.sendRedirect("cookie_ex01_welcome.jsp");
    }else{
    	response.sendRedirect("cookie_ex01.jsp"); // 다시 로그인창
    }
    

    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3> 쿠키 활용 </h3>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    
    
    request.setCharacterEncoding("utf-8");
    String name = request.getParameter("name");
    int age = Integer.parseInt(request.getParameter("age"));
    
    
    if (age>=20){
    	//response

    	response.sendRedirect("res_ex02"); // ok
    }else{
    	response.sendRedirect("res_ex03"); // no
    }
    
    // 자바 servlet 으로 변경할거임
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
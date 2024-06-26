<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    
    // 세션은 한번 저장해놓으면 만료되기전 브라우저 끄기 전 까지
    // 아무곳에서나 사용 가능
    //object 타입
    
   	String user_id = (String) session.getAttribute("user_id");
    
    session.removeAttribute("user_name"); // 세션 삭제
    session.invalidate(); // 세션 무효화
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <%= user_id %>


</body>
</html>
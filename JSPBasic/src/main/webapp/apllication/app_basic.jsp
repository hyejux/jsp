<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
    
    //application 내장 객체는 session 사용 문법은 동일
    // 생명주기 - was 를 시작할 때 전역에서 단 1개 생성 된다.
    // 프로그램 전역 에서 사용할 값들을 저장해 놓을 수 있다.
    
    int total = 0;
  
    
    //껏다 켜도 유지된다. (서버끌때까지) <->세션ㄷ과다름
    if(application.getAttribute("total") != null){
    	total = (int)application.getAttribute("total");
    }
    
    total ++;
    
    
    
    application.setAttribute("total", total);
    //int result = (int)application.getAttribute("total"); // 값의 사용
    String remote = request.getRemoteAddr(); // remote
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
 <%= total %>
 
 <% if (total == 77) {%>
		<p> 축하드립니다. 커피 한잔 사드림 </p>
<% } %>

</body>
</html>
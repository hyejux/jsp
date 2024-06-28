<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.ArrayList"%>
<%@page import="com.model.DepartmentDAO"%>
<%@page import="com.model.DepartmentDTO"%>
<%

	String dno = request.getParameter("departmentID");
	
  	DepartmentDAO dao = DepartmentDAO.getInstance();
 	DepartmentDAO dto = dao.getDept(dno);
 
    request.setAttribute("dto",dto);
   	request.getRequestDispatcher("quiz_ok.jsp").forward(request,response); 
   
	
	
	
	

%>
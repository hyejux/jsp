<%@page import="java.util.ArrayList"%>
<%@page import="com.model.DepartmentDAO"%>
<%@page import="com.model.DepartmentDTO"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    
    //DAO 객체 생성
    // 싱글톤 객체 생성 
   	DepartmentDAO dao = DepartmentDAO.getInstance();
    ArrayList <DepartmentDTO> list = dao.getList();
    
    request.setAttribute("list",list);
    
   	request.getRequestDispatcher("select_list.jsp").forward(request,response); 
   
    %>

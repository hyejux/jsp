package com.myweb.user.service;

import java.io.IOException;
import java.io.PrintWriter;

import com.myweb.user.model.UserDAO;
import com.myweb.user.model.UserDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class UserServicepl implements UserService {


	@Override
	public void join(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String gender = request.getParameter("gender");
		
		//중복회원 있는지 화긴 없으면 회원가입 
		UserDAO dao = UserDAO.getInstance();
		
		int cnt = dao.findUser(id);
		
		
		
		if (cnt == 1 ) { // 아이디 중복
			request.setAttribute("msg", "이미존재하는회원");
			request.getRequestDispatcher("join.jsp").forward(request,response);	

		}else { // 중복 아님 
			dao.insertUser(id,pw,name,email,gender);
			response.sendRedirect("login.user");
			
		}
		
		
	}

	@Override
	public void login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		UserDAO dao = UserDAO.getInstance();
		UserDTO dto = dao.login(id, pw);
	
		
		if (dto == null) {
			request.setAttribute("msg","아이디또는 비밀번호확인");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else{ // 성공 
			HttpSession session = request.getSession();
			session.setAttribute("user_id", dto.getId());
			session.setAttribute("user_name", dto.getName());
			response.sendRedirect("mypage.user");
		}
		

		
	}

	
	
	@Override
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("하하하하핳하");
		String pw = request.getParameter("pw");
		
		HttpSession session = request.getSession();
		String user_id = (String) session.getAttribute("user_id");
		
		UserDAO dao = UserDAO.getInstance();
		UserDTO dto = dao.login(user_id, pw);
		
		if (dto != null) {	

			dao.delete(user_id,pw);
			session.invalidate(); // 세션 무효화
			response.sendRedirect(request.getContextPath() + "/index.jsp");
			
			
		} else{ // 성공 
			System.out.println("하하하하핳하");
			request.setAttribute("msg", "비밀번호를 확인하세요!");
			request.getRequestDispatcher("delete.jsp").forward(request,response);

		}
		
		
	}
	
}

package com.myweb.user.service;

import java.io.IOException;

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
	
}

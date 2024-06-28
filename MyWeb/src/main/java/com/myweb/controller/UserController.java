package com.myweb.controller;

import java.io.IOException;

import com.myweb.user.service.UserService;
import com.myweb.user.service.UserServicepl;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("*.user")
public class UserController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;


	public UserController() {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		System.out.println(command);
		//사소한 요청도 컨트롤러로 모은다
		
		UserService service;
		
		if(command.equals("/user/join.user")) {
			response.sendRedirect("join.jsp");
		}else if (command.equals("/user/joinForm.user")) {
			 service = new UserServicepl();
			service.join(request,response);
		}else if (command.equals("/user/login.user")) {
			request.getRequestDispatcher("login.jsp").forward(request,response);
		}else if (command.equals("/user/loginForm.user")) {
			service = new UserServicepl();
			service.login(request, response);
		}else if (command.equals("/user/mypage.user")) {
			request.getRequestDispatcher("mypage.jsp").forward(request,response);
		}
			
	}
	
}

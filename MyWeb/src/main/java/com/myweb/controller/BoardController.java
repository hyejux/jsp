package com.myweb.controller;

import java.io.IOException;

import com.myweb.board.service.BoardServiceImpl;
import com.myweb.board.service.Boardservice;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("*.board")
public class BoardController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;



	public BoardController() {
		
	}
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doAction(request, response);
	}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doAction(request, response);
	}
	
	
	
	private void doAction (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		
		System.out.println(command);
		
		
		Boardservice service;

		
		if(command.equals("/board/list.board")) {
			//request.getRequestDispatcher("board_list.jsp").forward(request, response);
			//서비스 영역 거쳐서 목록 데이터 가지고감 
			service = new BoardServiceImpl();
			service.regist(request, response);
			
		}else if (command.equals("/board/write.board")) {
			request.getRequestDispatcher("board_write.jsp").forward(request, response);
			
		}else if (command.equals("/board/registForm.board")) {
			service = new BoardServiceImpl();
			service.regist(request, response);

			  
		}

	}
}

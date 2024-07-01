package com.myweb.board.service;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import com.myweb.board.model.BoardDAO;
import com.myweb.board.model.BoardDTO;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class BoardServiceImpl implements Boardservice {

	@Override
	public void regist(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String writer = request.getParameter("writer");
		String title  = request.getParameter("title");
		String content = request.getParameter("content");
		
		
		BoardDAO dao = BoardDAO.getInstance();
		System.out.println("impl");
		dao.regist(writer, title, content);
		
		
		// 목록 이동  -- 틀림
		request.getRequestDispatcher("board_list.jsp").forward(request, response);
		
		// 목록 화면 redirect 로 태워서 나감 
		//response.sendRedirect("list.board");
		
		
		
	}

	@Override
	public void getList(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		BoardDAO dao = BoardDAO.getInstance();
		
		ArrayList<BoardDTO> list = dao.getList();
		
		//requset 에 저장 포워드로 나감
		
		request.setAttribute("list", list);  //board_list 
		request.getRequestDispatcher("board_list.jsp").forward(request, response);
		
		
		
		
	}


	
	

}

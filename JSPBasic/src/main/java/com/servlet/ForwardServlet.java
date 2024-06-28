package com.servlet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Servlet implementation class ForwardServlet
 */
@WebServlet("/forward")
 public class ForwardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForwardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// post 요청에 대한 코드
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		// id, pw 적절히....
		System.out.println(id+"이고," + pw);
		
		// id 에 해당하는 유저 정보를 담아서 화면에 보내겠다.
		// 다음 페이지에서 사용할 1회성 데이터를 request 중간에 끼워넣음 
		request.setAttribute("name","홍길동");
		
		//자바에서 forward 문법을 사용하는 방법
		RequestDispatcher dp = request.getRequestDispatcher("/actionTag/forward_ex04.jsp");//이동할 url 주소
		dp.forward(request, response);
	}

}

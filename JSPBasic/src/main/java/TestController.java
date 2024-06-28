import java.io.IOException;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("*.test")
public class TestController extends HttpServlet {
	HttpServletRequest request;
	HttpServletResponse response;
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//System.out.println("서블릿 실행됨");
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		//
		doAction(request,response);
	}
	
	
	protected void doAction(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// 요청 분기
		request.setCharacterEncoding("utf-8");
		
		String uri = request.getRequestURI();
		String path = request.getContextPath();
		String command = uri.substring(path.length());
		System.out.println(command);
		//사소한 요청도 컨트롤러로 모은다
		if(command.equals("/controller/signup.test")) {
			
		}else if (command.equals("/controller/login.test")) {
			
		}
	}


	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	public TestController() {
		
	}
	

	
}


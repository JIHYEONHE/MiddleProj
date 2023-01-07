package dic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.Session;
@WebServlet("/LogoutController.do")
public class LogoutController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("로과웃 컨트롤러");
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("ID");
		
		session.removeAttribute(id);
		session.invalidate();
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/MainController");
		dispatcher.forward(request, response);	
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("로과웃 컨트롤러");
		doGet(request, response);
	}

}

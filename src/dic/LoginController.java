package dic;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/login.do")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/dic/loginForm.jsp");
		dispatcher.forward(request, response);
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DicVO vo = new DicVO();
		DicService dicService = DicServiceImple.getInstance();
		String dicId = request.getParameter("LgdicId");
		String dicPw = request.getParameter("LgdicPs");
		vo.setDicId(dicId);
		vo.setDicPw(dicPw);
			
		System.out.println("풔스트");
		if(dicId.equals("admin")) { //관리자
			System.out.println("관리자");
			HttpSession session = request.getSession();
			String admin = dicService.adminLogin(vo);
			System.out.println(admin);
			session = request.getSession();
				System.out.println("관리자 ID 일치" + admin);
				
				session.setAttribute("ID", admin);
				System.out.println("세션아이디" + session.getAttribute("ID"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("/MainController");
				dispatcher.forward(request, response);
				
		}else{
			System.out.println("회원");
			HttpSession session = request.getSession();
			String cnt = dicService.loginMember(vo);
			request.setAttribute("check",cnt);
			System.out.println("아이디 cnt: " + cnt);
			
			if(dicId.equals(cnt)) {
				System.out.println("회원 ID 일치" + cnt);
				session.setAttribute("ID", cnt);
				System.out.println("세션아이디" + session.getAttribute("ID"));
				RequestDispatcher dispatcher = request.getRequestDispatcher("/MainController");
				dispatcher.forward(request, response);
			}else{
				System.out.println("회원 불일치");
				request.setAttribute("sendId", cnt);
				session.invalidate();
				RequestDispatcher dispatcher = request.getRequestDispatcher("/view/dic/loginForm.jsp");
				dispatcher.forward(request, response);
		}
		}
	}
}

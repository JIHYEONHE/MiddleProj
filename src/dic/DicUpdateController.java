package dic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DicUpdateController.do")
public class DicUpdateController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DicVO vo = new DicVO();
		vo.setDicId(request.getParameter("dicId"));
		vo.setDicmodifyreps(request.getParameter("dicmodifyreps"));
		vo.setDicName(request.getParameter("dicName"));
		vo.setDicBir(request.getParameter("dicBir"));
		vo.setDicAddr(request.getParameter("dicAddr"));
		vo.setDicAddr2(request.getParameter("dicAddr2"));
		vo.setDicPh(request.getParameter("dicPh"));
		vo.setDicMail(request.getParameter("dicMail"));
		vo.setDicNic(request.getParameter("dicNic"));
		System.out.println(" 아이디 " +request.getParameter("dicId"));
		System.out.println(" 비번" +request.getParameter("dicmodifyreps"));
		System.out.println(" 이름" +request.getParameter("dicName"));
		System.out.println(" 생일" +request.getParameter("dicBir"));
		System.out.println(" 주소" +request.getParameter("dicAddr"));
		System.out.println(" 상세주소" +request.getParameter("dicAddr2"));
		System.out.println(" 폰번호" +request.getParameter("dicPh"));
		System.out.println(" 메일 " +request.getParameter("dicMail"));
		System.out.println(" 닉네임" +request.getParameter("dicNic"));
		
		DicService dicservice = DicServiceImple.getInstance();
		int resultcnt = dicservice.Infoupdate(vo);
		
		if(resultcnt == 1) {
			System.out.println("성공");
		}else {
			System.out.println("실패");
		}
		
		request.getRequestDispatcher("/view/main.jsp").forward(request, response);
	
	}

}

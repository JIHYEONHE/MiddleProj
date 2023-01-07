package dic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/idCheck.do")
public class DicIdCheckController extends HttpServlet {
	private static final long serialVersionUID = 1L;
      

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("아이디체크두겟");
		DicVO vo = new DicVO();
		
		String dicId = request.getParameter("dicId");
		vo.setDicId(dicId);
		
		DicService dicService = DicServiceImple.getInstance();
		int cnt = dicService.idCheckMember(vo.getDicId());
		request.setAttribute("chknum", cnt);
		request.setAttribute("chkId", dicId);
		System.out.println("cnt : " +cnt);
		
		System.out.println("req" + request.getAttribute("chknum"));
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/dic/IdCheck.jsp");
		dispatcher.forward(request, response);

	}
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}

package dic;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DicNicCheckController")
public class DicNicCheckController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("두겟");
		DicVO vo = new DicVO();
		
		String nicName = request.getParameter("dicNic"); // 뷰단에서 받아온 데이터
		
		vo.setDicNic(nicName);
		request.setAttribute("nicname", nicName);
		
		DicService service = DicServiceImple.getInstance();
		
		String nicVal = service.nicCheck(vo); // db에서 받아온 데이터
		request.setAttribute("dbnicName",nicVal);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/view/nicCheck.jsp");
		dispatcher.forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

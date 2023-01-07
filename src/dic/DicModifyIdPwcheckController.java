package dic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/DicModifyController.do")
public class DicModifyIdPwcheckController extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String dicId = request.getParameter("dicId");
		String dicPw = request.getParameter("dicPw");
		
		System.out.println("ajax 에서 넘어온 ID : " +  dicId);
		System.out.println("ajax 에서 넘어온 PW : " +  dicPw);
		
		
		DicService dicservice = DicServiceImple.getInstance();
		DicVO vo = new DicVO();
		vo.setDicId(dicId);
		vo.setDicPw(dicPw);
		String chk = dicservice.loginMember(vo);
		System.out.println("DB에서 넘어온 값 : " + chk);
		
		if(chk.equals(dicId)) {
			response.getWriter().write("OK");
		
//		}else if(chk.equals(null)) {
//			System.out.println("nononononono");
//			response.getWriter().write("NO");
		}
	}

}

package dic;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DicIdPwCheck
 */
@WebServlet("/DicIdPwCheck.do")
public class DicIdPwCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		
		DicVO vo = new DicVO();
		vo.setDicId(req.getParameter("LgdicId"));
		vo.setDicPw(req.getParameter("LgdicPs"));
		
		DicService dicService = DicServiceImple.getInstance();
		int cnt= dicService.checkIdPw(vo);

		String msg = "fail";
		if(cnt > 0) { msg = "success";}
		
		res.getWriter().write(msg);
	}


}

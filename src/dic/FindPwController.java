package dic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import util.CommonUtil;
import util.MailUtil;
@WebServlet("/findPw.do")
public class FindPwController extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		DicService dicservice = DicServiceImple.getInstance();
		
		DicVO vo = new DicVO();
		String dicId = request.getParameter("dicId");
		String dicMail = request.getParameter("dicMail");
		vo.setDicId(dicId);
		vo.setDicMail(dicMail);
		
		String code = CommonUtil.getTempPassword(8);
		vo.setDicPw(code);
		dicservice.updatePwChg(vo);
		
		int cntChk = dicservice.findPw(vo);
		if (cntChk < 1){
			response.getWriter().write("NO");
		}else {
			MailUtil.sendMail(dicMail, code, "P");
			response.getWriter().write("OK");
		}
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}

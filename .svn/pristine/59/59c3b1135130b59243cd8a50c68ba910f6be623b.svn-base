package qaboard;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
@WebServlet("/qaboard/answer.do")
public class AnswerQaBoardController extends HttpServlet{
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int qaQnum = Integer.parseInt(req.getParameter("qaQnum"));
		
		//1.서비스 객체 생성하기 
		QaBoardService qaService = QaBoardServiceImpl.getInstance();
		QaBoardVO qa = qaService.getQaBoard(qaQnum);
		
		req.setAttribute("qa", qa);
		
		req.getRequestDispatcher("/view/qaboard/answerForm.jsp").forward(req,resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1.요청파라미터 정보 가져오기
		String qaQtitle = req.getParameter("qaQtitle");
		String qaQcont = req.getParameter("qaQcont");
		String dicId = req.getParameter("dicId");
		String qaAcont = req.getParameter("qaAcont");
		String mastId = req.getParameter("mastId");
		int qaQnum = Integer.parseInt(req.getParameter("qaQnum"));
		
		//2.서비스 객체 생성하기
		QaBoardService qaService = QaBoardServiceImpl.getInstance();
		
		
		//3.게시물 수정하기
		QaBoardVO qa = new QaBoardVO();
		qa.setQaQtitle(qaQtitle);
		qa.setQaQcont(qaQcont);
		qa.setDicId(dicId);
		qa.setQaAcont(qaAcont);
		qa.setMastId(mastId);
		qa.setQaQnum(qaQnum);
		
		int cnt = qaService.anmodifyQaBoard(qa);
		
		String msg = "";
		
		if(cnt > 0) {
			
			msg="성공";
		}else {
			msg = "실패";
		}	
		
		//req.setAttribute("msg", msg);
		
		HttpSession session = req.getSession();
		session.setAttribute("msg", msg);
		
		
		//4.목록 조회 화면으로 이동
		String redirectUrl = req.getContextPath()+"/qaboard/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
}

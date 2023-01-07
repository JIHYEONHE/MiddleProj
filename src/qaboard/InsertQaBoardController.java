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
@WebServlet("/qaboard/insert.do")
public class InsertQaBoardController extends HttpServlet {

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//String dicId = req.getParameter("dicId");
		
		//1.서비스 객체 생성하기 
		//QaBoardService qaService = QaBoardServiceImpl.getInstance();
		//QaBoardVO qa = qaService.getQaBoard(dicId);
		
		
		//req.setAttribute("qa", qa);
		
		req.getRequestDispatcher("/view/qaboard/insertForm.jsp")
		.forward(req,resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		//qa_qnum,qa_qtitle,qa_qcont,qa_qdate,qa_acont,qa_adate,dic_id,mast_id
		//1.요청파라미터 정보 가져오기
		String qaQTitle = req.getParameter("qaQtitle");
		String qaQcont = req.getParameter("qaQcont");
		String dicId = req.getParameter("dicId");
		String qaAcont = req.getParameter("qaAcont");
		String mastId = req.getParameter("mastId");
		
		//2.서비스 객체 생성하기
		QaBoardService qaService = QaBoardServiceImpl.getInstance();
		
		
		//3.게시글 수정하기
		QaBoardVO qa = new QaBoardVO();
		qa.setQaQtitle(qaQTitle);
		qa.setQaQcont(qaQcont);
		qa.setDicId(dicId);
		qa.setQaAcont(qaAcont);
		qa.setMastId(mastId);
		//qa.setDicId(dicId);
	
		int cnt = qaService.registerQaBoard(qa);
		
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

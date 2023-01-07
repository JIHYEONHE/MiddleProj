package mypage;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import qaboard.QaBoardService;
import qaboard.QaBoardServiceImpl;
import qaboard.QaBoardVO;
@WebServlet("/mypage/qalist.do")
public class MypageQaListController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String sessionId = (String) session.getAttribute("ID");
		String boardGbn = req.getParameter("boardGbn");
		//System.out.println("mypage controller"+boardGbn);
		// 1. 서비스 객체 생성하기
		QaBoardService qaBoardService = QaBoardServiceImpl.getInstance();
		
		QaBoardVO qaBoardVO = new QaBoardVO();
		qaBoardVO.setDicId(sessionId);
		qaBoardVO.setBoardGbn(boardGbn);
		List<QaBoardVO> qaList  = qaBoardService.myQaBoardList(qaBoardVO);
		
		req.setAttribute("qaList", qaList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/mypage/qalist.jsp");
		dispatcher.forward(req, resp);  // 뷰 페이지로 전달.
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

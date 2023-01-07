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

import infoboBoard.InfoBoardService;
import infoboBoard.InfoBoardServiceImpl;
import infoboBoard.InfoBoardVO;

@WebServlet("/mypage/list.do")
public class MypageListController extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		String sessionId = (String) session.getAttribute("ID");
		String boardGbn = req.getParameter("boardGbn");
		//System.out.println("mypage controller"+boardGbn);
		// 1. 서비스 객체 생성하기
		InfoBoardService infoBoardService = InfoBoardServiceImpl.getInstance();
		
		InfoBoardVO infoBoardVO = new InfoBoardVO();
		infoBoardVO.setDicId(sessionId);
		infoBoardVO.setBoardGbn(boardGbn);
		List<InfoBoardVO> infoBoardList  = infoBoardService.myInfoBoardList(infoBoardVO);
		
		req.setAttribute("infoBoardList", infoBoardList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/mypage/list.jsp");
		dispatcher.forward(req, resp);  // 뷰 페이지로 전달.
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}

}

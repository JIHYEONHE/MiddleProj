package infoboBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(value = "/infoBoard/list.do")
public class ListInfoBoardController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
		// 1. 서비스 객체 생성하기
		InfoBoardService infoBoardService = InfoBoardServiceImpl.getInstance();
		// 2. 회원목록 조회
		List<InfoBoardVO> infoBoardList = infoBoardService.getAllInfoBoardList();
		//조회수 업데이트
		req.setAttribute("infoBoardList", infoBoardList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/infoBoard/list.jsp");
		dispatcher.forward(req, resp);  // 뷰 페이지로 전달.
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

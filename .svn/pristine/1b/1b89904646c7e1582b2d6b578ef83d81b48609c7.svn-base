package dic;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import infoboBoard.InfoBoardService;
import infoboBoard.InfoBoardServiceImpl;
import infoboBoard.InfoBoardVO;

@WebServlet("/dic/list.do")
public class DicListController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			
		// 1. 서비스 객체 생성하기
		DicService dicService = DicServiceImple.getInstance();
		// 2. 회원목록 조회
		List<DicVO> dicList = dicService.getAllDicList();
		//조회수 업데이트
		req.setAttribute("dicList", dicList);
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/view/dic/list.jsp");
		dispatcher.forward(req, resp);  // 뷰 페이지로 전달.
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

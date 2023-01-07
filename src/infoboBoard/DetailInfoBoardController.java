package infoboBoard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comm.AtchFileServiceImpl;
import comm.AtchFileVO;
import comm.IAtchFileService;

@WebServlet("/infoBoard/detail.do")
public class DetailInfoBoardController extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		int infoboNum = Integer.parseInt(req.getParameter("infoboNum"));
		
		// 1. 서비스 객체 생성하기
		InfoBoardService infoBoardService = InfoBoardServiceImpl.getInstance();
		int count = infoBoardService.updateInfoboLike(infoboNum);
		System.out.println("count  : " + count);
		InfoBoardVO ibv = infoBoardService.getInfoBoard(infoboNum);
			
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		if(ibv.getAtchFileId() > 0) {  // 첨부파일 존재하면...
			// 1-2. 첨부파일 정보 조회
			AtchFileVO fileVO = new AtchFileVO();
			fileVO.setAtchFileId(ibv.getAtchFileId());
			
			List<AtchFileVO> atchFileList = 
					fileService.getAtchFileList(fileVO);
		
			req.setAttribute("atchFileList", atchFileList);
		}
		
		req.setAttribute("ibv", ibv);
		
		req.getRequestDispatcher("/view/infoBoard/detail.jsp").forward(req, resp);
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
			doGet(req, resp);
	}
}

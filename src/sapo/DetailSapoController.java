package sapo;

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

@WebServlet("/sapo/detail.do")
public class DetailSapoController extends HttpServlet{

	 @Override
	    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	       String sapoCode = req.getParameter("sapoCode");
	    
	       //1.서비스 객체 생성하기 
	       SapoService sapService = SapoServiceImpl.getInstance();
	       SapoVO mv = sapService.getSapo(sapoCode);
	       
	       IAtchFileService fileService = AtchFileServiceImpl.getInstance();
	       
	       if(mv.getAtchFileId() > 0) { // 첨부파일 존재하면...
	          // 1-2. 첨부파일 정보 조회
	          AtchFileVO fileVO = new AtchFileVO();
	          fileVO.setAtchFileId(mv.getAtchFileId());
	          
	          List<AtchFileVO> atchFileList = fileService.getAtchFileList(fileVO);
	          
	          req.setAttribute("atchFileList", atchFileList);
	       }
	       req.setAttribute("mv", mv);
	       
	       req.getRequestDispatcher("/view/sapo/detail.jsp").forward(req,resp);
	    }
	 
	 @Override
	   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	      doGet(req, resp);
	   }
}

package sapo;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import comm.AtchFileServiceImpl;
import comm.AtchFileVO;
import comm.IAtchFileService;

@MultipartConfig
@WebServlet("/sapo/update.do")
public class UpdateSapoController extends HttpServlet{

	
protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String sapoCode = req.getParameter("sapoCode");
		
		//1.서비스 객체 생성하기 
		SapoService sapService = SapoServiceImpl.getInstance();
		SapoVO mv = sapService.getSapo(sapoCode);
		
	       
	       if(mv.getAtchFileId() > 0) { // 첨부파일 존재하면...
	          // 1-2. 첨부파일 정보 조회
	    	  IAtchFileService fileService = AtchFileServiceImpl.getInstance();
	          AtchFileVO fileVO = new AtchFileVO();
	          fileVO.setAtchFileId(mv.getAtchFileId());
	          
	          List<AtchFileVO> atchFileList = fileService.getAtchFileList(fileVO);
	          
	          req.setAttribute("atchFileList", atchFileList);
	       }
		
		req.setAttribute("mv", mv);
		
		req.getRequestDispatcher("/view/sapo/updateForm.jsp").forward(req,resp);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		//1.요청파라미터 정보 가져오기
		String sapoCode = req.getParameter("sapoCode");
		String sapoBrnm = req.getParameter("sapoBrnm");
		String sapoCarte = req.getParameter("sapoCarte");
		String sapoUpdae = req.getParameter("sapoUpdae");
		String sapoLink = req.getParameter("sapoLink");
		String mastId = req.getParameter("mastId");
		
		String atchFileId = req.getParameter("fileId");
		
		//2.서비스 객체 생성하기
		SapoService sapService = SapoServiceImpl.getInstance();
		IAtchFileService fileService = AtchFileServiceImpl.getInstance();
		
		//첨부파일 저장하기
		AtchFileVO atchFileVO = fileService.saveAtchFileList(req);
		
		
		//3.회원정보 수정하기
		SapoVO mv = new SapoVO();
		mv.setSapoCode(sapoCode);
		mv.setSapoBrnm(sapoBrnm);
		mv.setSapoCarte(sapoCarte);
		mv.setSapoUpdae(sapoUpdae);
		mv.setSapoLink(sapoLink);
		mv.setMastId(mastId);
		if(atchFileVO == null) {//새로운 첨부파이 존재하지 않으면//..
			//기존 
			mv.setAtchFileId(Long.parseLong(atchFileId));
		}else {
			//신규 첨부파일 ID설정하기
			mv.setAtchFileId(atchFileVO.getAtchFileId());
		}
		
		int cnt = sapService.modifySapo(mv);
		
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
		String redirectUrl = req.getContextPath()+"/sapo/list.do";
		
		resp.sendRedirect(redirectUrl);
	}
}

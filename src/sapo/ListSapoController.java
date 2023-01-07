package sapo;

import java.awt.Graphics2D;
import java.awt.Image;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.imageio.ImageIO;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(value="/sapo/list.do")
public class ListSapoController extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		// 1.서비스 객체 생성하기
		SapoService sapService = SapoServiceImpl.getInstance();
		// 2.회원 목록 조회
		List<SapoVO> sapList = sapService.getAllSapoList(null);
		
		
		req.setAttribute("sapList", sapList);
		
		RequestDispatcher dispatcher = 
				req.getRequestDispatcher("/view/main.jsp");
		
		dispatcher.forward(req, resp);  //뷰 페이지로 전달
	}
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doGet(req, resp);
	}
}

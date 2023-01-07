package dic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import sapo.SapoService;
import sapo.SapoServiceImpl;
import sapo.SapoVO;

@WebServlet("/MainController")
public class MainController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 파라미터 키워드 가져오기
		// 모델 키워드에 파라미터 키워드 set
		// String keyword = req.getParameter("keyword");
		// getAllSapoList (keyword)
		String keyword = request.getParameter("keyword");
		
		SapoVO mv = new SapoVO();
		mv.setKeyword(keyword);
//		System.out.println("============================");
//		System.out.println(keyword);
		// 1.서비스 객체 생성하기
		SapoService sapService = SapoServiceImpl.getInstance();
		// 2.회원 목록 조회
		List<SapoVO> sapList = sapService.getAllSapoList(mv);
//		for(SapoVO lll : sapList) {
//			System.out.println(lll);
//		}
//		System.out.println("==========================");
//		System.out.println("==========================");
//		System.out.println("==========================");
//		System.out.println("=========sapList"+sapList.size());
//		System.out.println("==========================");
//		System.out.println("==========================");
//		System.out.println("==========================");
		request.setAttribute("sapList", sapList);
				
		request.getRequestDispatcher("/view/main.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

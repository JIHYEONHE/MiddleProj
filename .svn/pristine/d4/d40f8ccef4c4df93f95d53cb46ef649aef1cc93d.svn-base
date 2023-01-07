package search;

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

@WebServlet("/SearchController")
public class SearchController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		// 파라미터 키워드 가져오기
		// 모델 키워드에 파라미터 키워드 set
		// String keyword = req.getParameter("keyword");
		// getAllSapoList (keyword)
		String keyword = request.getParameter("keyword");
		
		
		System.out.println("=====================");
		System.out.println(keyword);
		System.out.println("=====================");
		
		SearchVO mv = new SearchVO();
		mv.setKeyword(keyword);
//		System.out.println("============================");
//		System.out.println(keyword);
		// 1.서비스 객체 생성하기
		SearchService searchService = SearchServiceImpl.getInstance();
		// 2.회원 목록 조회
		List<SearchVO> searchList = searchService.getAllSearchList(mv);

		request.setAttribute("searchList", searchList);
		
		System.out.println("=====================");
		System.out.println("searchList:" + searchList);
		
		request.getRequestDispatcher("/view/search/search.jsp").forward(request, response);
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

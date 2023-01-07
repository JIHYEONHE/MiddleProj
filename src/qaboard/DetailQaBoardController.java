package qaboard;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/qaboard/detail.do")
public class DetailQaBoardController extends HttpServlet {
	@Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       int qaQnum = Integer.parseInt(req.getParameter("qaQnum"));
       //1.서비스 객체 생성하기 
       QaBoardService qaService = QaBoardServiceImpl.getInstance();
       QaBoardVO qa = qaService.getQaBoard(qaQnum);
       
       req.setAttribute("qa", qa);
       req.getRequestDispatcher("/view/qaboard/detail.jsp").forward(req,resp);
    }
 
 @Override
   protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
      doGet(req, resp);
   }
}

package reply;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/ReplyInsertController.do")
public class ReplyInsertController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		HttpSession session = request.getSession();
		String replyCon = request.getParameter("replyCon"); // 작성내용
		System.out.println(replyCon);
		String chk = request.getParameter("infoboNum");
		System.out.println(chk);
		int infoboNum = Integer.parseInt(chk);
		ReplyVO vo = new ReplyVO();
		
		vo.setDicId((String)session.getAttribute("ID"));
		vo.setReplyCon(replyCon);
		vo.setInfoboNum(infoboNum);
		System.out.println("infoboNum" + infoboNum);
		
		ReplyService replyservice = ReplyServiceImpl.getInstance();
		
		int resultchk = replyservice.replyInsert(vo); 
		
		if(resultchk==1) {
			System.out.println("업데이트 성공");
		}else {
			System.out.println("업뎃 실패");
		}
		
		request.getRequestDispatcher("infoBoard/detail.do?infoboNum="+infoboNum).forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

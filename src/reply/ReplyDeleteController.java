package reply;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;

@WebServlet("/ReplyDeleteController.do")
public class ReplyDeleteController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ReplyVO vo = new ReplyVO();
		System.out.println("두포");
		HttpSession session = request.getSession();
		String sesinId = (String)session.getAttribute("ID"); // 세션 유지중 아이디
		String dicId = request.getParameter("dicId"); // 글작성자 아이디 	
		String replyNum = request.getParameter("replyNum"); // 작성 내용
		int infoboNum = Integer.parseInt(request.getParameter("infoboNum"));
		vo.setDicId(sesinId);
		vo.setReplyNum(Integer.parseInt(replyNum));

		ReplyService replyservice = ReplyServiceImpl.getInstance();
		
		System.out.println("replyNum :" + replyNum);
		System.out.println("sesinId : " + sesinId);
		System.out.println("작성자 아이디 : " + dicId);
		 
		int delresult = replyservice.deleteReply(vo); // 삭제진행 
			if(delresult == 1) {  						//result(1)삭제가 완료 되었으면
				response.getWriter().write("OK");		// ok
				//request.getRequestDispatcher("infoBoard/detail.do?infoboNum="+infoboNum).forward(request, response);
			}else {
				response.getWriter().write("NO");		// ok
	}

}
}

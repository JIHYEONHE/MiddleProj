package dic;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


//Get parameter로 이름,이메일을  가져오기
//Vo는 객체생성해서 vo. 해서 get 이름 이메일
//If로직써주기
@WebServlet("/findId.do")
public class FindIdController extends HttpServlet{
	
@Override
protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	doPost(request, response);
}

@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	request.setCharacterEncoding("UTF-8");
	DicVO vo = new DicVO();
	DicService dicService = DicServiceImple.getInstance();
	
	String dicName = request.getParameter("dicName");
	String dicPh = request.getParameter("dicPh");
	
	vo.setDicName(dicName);
	vo.setDicPh(dicPh);
	
	//여기서 서비스로 보내주기
	DicService dicservice = DicServiceImple.getInstance();
	String dicId = dicservice.findId(vo);
	if(dicId==null) {
		response.getWriter().write("NO");
	}else {
		response.getWriter().write(dicId);
	}
	
	//request.getRequestDispatcher("/view/main.jsp").forward(request, response);
	//request.getRequestDispatcher("/view/dic/findId.jsp").forward(request, response);
	
	
	}
}

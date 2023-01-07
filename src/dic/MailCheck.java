package dic;

import java.io.IOException;
import java.util.Random;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import util.MailUtil;

@WebServlet("/MailCheck")
public class MailCheck extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cMail = request.getParameter("dicMail");
		System.out.println("ppp:"+cMail);
		Random random = new Random();
		String fst = Integer.toString(random.nextInt(9));
		String fend = Integer.toString(random.nextInt(9));
		String code = fst + fend;
	
		MailUtil.sendMail(cMail, code, "I");
		response.getWriter().write(code);  // 아작스 요청에 응답
	}
}

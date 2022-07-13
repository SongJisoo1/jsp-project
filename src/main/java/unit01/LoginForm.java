package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class LoginForm extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		
		String ID = request.getParameter("id");
		String pw = request.getParameter("pw");
		int age = Integer.parseInt(request.getParameter("age"));
		String email = request.getParameter("email");
		
		
		PrintWriter out = response.getWriter();
		out.println("<html><body>");
		out.println("<h1>회원가입 정보</h1>");
		out.println("<p>ID : " + ID + "</p>");
		out.println("<p>PW : " + pw + "</p>");
		out.println("<p>Age : " + age + "</p>");
		out.println("<p>Email : " + email + "</p>");
		out.println("<a href='javascript:history.go(-1)'>돌아가기</a>");
		out.println("</body></html>");
		out.close();
		
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		request.setCharacterEncoding("UTF-8");
		doGet(request, response);
	}

}

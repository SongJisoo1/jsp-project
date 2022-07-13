package unit01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RadioServlet
 */
@WebServlet("/radio")
public class RadioServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String gender = request.getParameter("gender");
		String reception_status = request.getParameter("chk_mail");
		String text = request.getParameter("content");
		String items[] = request.getParameterValues("item");
		
		response.setContentType("text/html; charset=UTF-8");
		PrintWriter out = response.getWriter();
	
		out.println("<html><body>");
		out.println("<p>당신이 입력한 정보입니다.<p>");
		out.println("<hr>");
		out.println("<p>성벌 : <b>" +  gender + "</b></p>");
		out.println("<p>메일정보 수신 여부 : <b>" + reception_status + "</b></p>");
		
		if(items == null) {
			out.println("<p>선택하신 항목이 없습니다</p>");
		} else {
			out.print("선택하신 항목은 : ");
			for(String item : items) {
				out.print("<b>" + item + "</b> ");
			}
		}
		
		out.println("<p>가입인사</p>");
		out.println("<b>" + text + "</b><br>");
	}

	
}

package tw.iii.topic;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class session
 */
@WebServlet("/session")
public class session extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String id = request.getParameter("id");
		String op = request.getParameter("op");
		String op1 = URLEncoder.encode(op,"UTF-8");
		if(id!=null) {
			HttpSession session = request.getSession();
			List<String> idNumber = (List<String>) session.getAttribute("id");
			idNumber.add(id);
		}
//		System.out.println(op);
		response.sendRedirect("check?op="+ op1 +"");
	}
}

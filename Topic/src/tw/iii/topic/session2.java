package tw.iii.topic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class session2
 */
@WebServlet("/session2")
public class session2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String amount = request.getParameter("amount");
		int amountInt = Integer.parseInt(amount);
		Agriculturalarea ag = null;
		System.out.println(id+":"+amount);
		if(id!=null && amountInt==1) {
			System.out.println("真");
			HttpSession session = request.getSession();
			List<String> idNumber = (List<String>) session.getAttribute("id");
			idNumber.add(id);
		}else {
			
			for(int i=0;i<amountInt;i++) {
				System.out.println("假");
				HttpSession session = request.getSession();
				List<String> idNumber = (List<String>) session.getAttribute("id");
				idNumber.add(id);
			}
		}
		List<gift> list1 = null;
		try {
			ag = new Agriculturalarea();
			
			list1=ag.check3(id);
		} catch (Exception e) {
			
		}	
		request.setAttribute("list1", list1);
		request.getRequestDispatcher("detailed.jsp").forward(request, response);
	}	
}

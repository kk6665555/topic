package tw.iii.topic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class detailed
 */
@WebServlet("/detailed")
public class detailed extends HttpServlet {
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			String id = request.getParameter("id");
			Agriculturalarea ag = null;
			
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

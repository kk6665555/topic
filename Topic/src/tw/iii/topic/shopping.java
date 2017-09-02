package tw.iii.topic;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class shopping
 */
@WebServlet("/shopping")
public class shopping extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			List<String> id = (List<String>) request.getSession().getAttribute("id");
			List<gift> list = null;			
			Map<String, Integer> idNumbers = new HashMap<String, Integer>();
			if(id!=null) {
		        for (String idNumber : id) {
		            int number = 1;
		            if (idNumbers.containsKey(idNumber)) {
		                number = (Integer) idNumbers.get(idNumber);
		                number++;
	
		            }
		            idNumbers.put(idNumber, number);
		        }
		        Map<List<gift>,Integer> membershopping = new HashMap<List<gift>,Integer>();
		        for (String idNumber : idNumbers.keySet()) {
		        	try {
		        		Agriculturalarea ag = new Agriculturalarea();
		        		list=ag.check3(idNumber);
		        		membershopping.put(list, idNumbers.get(idNumber));
		        	}catch (Exception e) {
					}
		        	System.out.println(idNumber);
		        	System.out.println(idNumbers.get(idNumber));
		        }
		        
		        request.setAttribute("membershopping", membershopping);
		        request.getRequestDispatcher("test.jsp").forward(request, response);
			}else{
				response.sendRedirect("test.jsp");
			}
	        
	    
	}
}

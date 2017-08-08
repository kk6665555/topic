package tw.iii.topic;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class check
 */
@WebServlet("/check")
public class check extends HttpServlet {
	private Connection conn;
	private Statement stmt;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String city = request.getParameter("op");
		Agriculturalarea ag = null;
		List<data> list = null;
		try {
			ag = new Agriculturalarea();
			list= ag.chick1(city);	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		request.setAttribute("list", list);
		request.getRequestDispatcher("Screen.jsp").forward(request, response);
		
		}
	}


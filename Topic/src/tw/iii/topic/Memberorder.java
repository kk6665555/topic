package tw.iii.topic;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Memberorder")
public class Memberorder extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String homephone = request.getParameter("homephone");
		String email = request.getParameter("email");
		String optradio = request.getParameter("optradio");
		String a = request.getParameter("a");
		String[] checkbox = request.getParameterValues("checkbox");
		StringBuilder sb = new StringBuilder();
		for(String a1 : checkbox) {
			sb.append(a1);
		}
		String str = String.join(",",checkbox);
		System.out.println(str);


//		System.out.println(name+":"+phone+":"+homephone+":"+email+":"+optradio+":"+a);
		Agriculturalarea ag = null;
		List<data1> list = null;
		try {
			ag= new Agriculturalarea();
			list=ag.check4("1", str, name, phone, homephone, email, optradio, "7-11","試試看", a, "1", "2008-7-04");
		} catch (Exception e) {
			System.out.println(e);
		}
//		request.setAttribute("list", list);
//		request.getRequestDispatcher("test.jsp").forward(request, response);
		
		
	}
}

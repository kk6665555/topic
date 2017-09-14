package tw.iii.topic;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Memberorder")
public class Memberorder extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession(false);
	
		if(session.getAttribute("id")!=null) {
			session.removeAttribute("id");
		}	
		String select = request.getParameter("select");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String homephone = request.getParameter("homephone");
		String email = request.getParameter("email");
		String optradio = request.getParameter("optradio");
		String a = request.getParameter("a");
		String[] checkbox=request.getParameterValues("checkbox");
		StringBuilder sb = new StringBuilder();
		for(String a1 : checkbox) {
			sb.append(a1);
		}
		String str = String.join(",",checkbox);
		
		
//		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd hh:mm:ss");
		SimpleDateFormat sdFormat = new SimpleDateFormat("yyyy/MM/dd");
		Date date = new Date();
		String strDate = sdFormat.format(date);
//		System.out.println(strDate);
//		System.out.println(str);


//		System.out.println(name+":"+phone+":"+homephone+":"+email+":"+optradio+":"+a);
		int sum = 0;
		Agriculturalarea ag = null;
		List<data1> list = null;
		List<gift> list1 = null;
		Map<List<gift>, String> listproduct = new HashMap<List<gift>,String>();
		try {
			ag= new Agriculturalarea();
			String[] strspli = str.split(",");
			for(int i = 0 ; i<strspli.length;i=i+2) {
//				System.out.println(strspli[i]);
//				System.out.println(strspli[i+1]);
				list1=ag.check3(strspli[i]);
				listproduct.put(list1, strspli[i+1]);
				sum = sum +  Integer.parseInt(strspli[i+1]) * Integer.parseInt(list1.get(0).getPrice());	
			}
			
			
			list=ag.check4("1", str, name, phone, homephone, email,a, optradio,"7-11", select, "1",sum, strDate);
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}

		
		request.setAttribute("list", list);
		request.setAttribute("list1", listproduct);
		request.getRequestDispatcher("test1.jsp").forward(request, response);
		
		
	}
}

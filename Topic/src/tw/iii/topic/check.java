package tw.iii.topic;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Properties;

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
	private ResultSet rs;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {	
		String op = request.getParameter("op");
		String city="";
		switch(op) {
			case "1":
				city="臺北";
				
		}
		String sql="SELECT * FROM Agriculturalproducts WHERE CITY LIKE '%"+city+"%'";
		Properties prop = new Properties();
		prop.setProperty("user", "sa1");
		prop.setProperty("password","8877560");
		prop.setProperty("databaseName", "topic");
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			conn = DriverManager.getConnection(
					"jdbc:sqlserver://localhost:1433;",prop);
			stmt= conn.createStatement();
			rs = stmt.executeQuery(sql) ;
			while(rs.next()) {
				String Gid  = rs.getString("gid");
				String Name = rs.getString("Name");
				System.out.println(Name);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	
		
		
		
		
	
		request.getRequestDispatcher("Screen.jsp").forward(request, response);
		
	}
}

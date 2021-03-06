package tw.iii.topic;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Properties;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;



@WebServlet("/Added")
public class Added extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//農產品網址
//		String strURL="http://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAttractions.aspx";
		String strURL="http://data.coa.gov.tw/Service/OpenData/ODwsv/ODwsvAgriculturalProduce.aspx";
		String json = getJSONString(strURL);
		//帳號密碼資料庫位置設定
		Properties prop = new Properties();
		prop.setProperty("user", "root");
		prop.setProperty("password","root");
		
		//資料庫連線
//		try {
//			//sql驅動程式載入
//			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
//			Connection conn = DriverManager.getConnection(
//					"jdbc:sqlserver://localhost:1433;",prop);
//			String sql ="INSERT INTO Agriculturalproducts(GID,Name,Tel,Introduction,TrafficGuidelines,Address,OpenHours,City,Town,Coordinate,Photo)"
//					+ "VALUES(?,?,?,?,?,?,?,?,?,?,?)";
//			PreparedStatement pstmt = conn.prepareStatement(sql);
//			
//			JSONArray root = new JSONArray(json);
//			for(int i = 0; i < root.length();i++) {
//				JSONObject row = root.getJSONObject(i);
//				String gid = row.getString("ID");
//				String Name = row.getString("Name");
//				String Tel = row.getString("Tel");
//				String Introduction = row.getString("Introduction");
//				String TrafficGuidelines = row.getString("TrafficGuidelines");
//				String Address = row.getString("Address");
//				String OpenHours = row.getString("OpenHours");
//				String City = row.getString("City");
//				String Town = row.getString("Town");
//				String Coordinate = row.getString("Coordinate");
//				String Photo = row.getString("Photo");
//				//
//				pstmt.setString(1, gid);
//				pstmt.setString(2, Name);
//				pstmt.setString(3, Tel);
//				pstmt.setString(4, Introduction);
//				pstmt.setString(5, TrafficGuidelines);
//				pstmt.setString(6, Address);
//				pstmt.setString(7, OpenHours);
//				pstmt.setString(8, City);
//				pstmt.setString(9, Town);
//				pstmt.setString(10, Coordinate);
//				pstmt.setString(11, Photo);
//				pstmt.execute();
//				System.out.println("OK");
//			}
//			
//			
//			
//		} catch (Exception e) {
//			System.out.println(e);
//		}
		try {
			//sql驅動程式載入
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection(
					"jdbc:mysql://localhost/attractions?",prop);
			String sql ="INSERT INTO gift(GID,Name,Feature,SalePlace,ProduceOrg,SpecAndPrice,Price,ContactTel,Column1)"
					+ "VALUES(?,?,?,?,?,?,?,?,?)";
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			JSONArray root = new JSONArray(json);
			for(int i = 0; i < root.length();i++) {
				JSONObject row = root.getJSONObject(i);
				String gid = row.getString("ID");
				String Name = row.getString("Name");
				String Feature = row.getString("Feature");
				String SalePlace = row.getString("SalePlace");
				String ProduceOrg = row.getString("ProduceOrg");
				String SpecAndPrice = row.getString("SpecAndPrice");
				String Price = row.getString("OrderUrl");
				String ContactTel = row.getString("ContactTel");
				String Column1 = row.getString("Column1");
				
				//
				pstmt.setString(1, gid);
				pstmt.setString(2, Name);
				pstmt.setString(3, Feature);
				pstmt.setString(4, SalePlace);
				pstmt.setString(5, ProduceOrg);
				pstmt.setString(6, SpecAndPrice);
				pstmt.setString(7, Price);
				pstmt.setString(8, ContactTel);
				pstmt.setString(9, Column1);
				
				pstmt.execute();
				System.out.println("OK");
			}
			
			
			
		} catch (Exception e) {
			System.out.println(e);
		}
		
		
	}
	
	//取得網頁JSON格式
	private static String getJSONString(String strURL) {
		StringBuilder sb  = new StringBuilder();
		try {
			//初始化URL
			URL url = new URL(strURL);
			//取得連線物件
			HttpURLConnection connection = (HttpURLConnection)url.openConnection();
			//連接
			connection.connect();
			//串流
			BufferedReader reader = new BufferedReader(
					new InputStreamReader(connection.getInputStream(), "UTF-8"));
			//讀取
			String tmpstr;
			while((tmpstr=reader.readLine())!=null ) {
				sb.append(tmpstr);
			}
			//關閉串流
			reader.close();
//			System.out.println(sb);
		} catch (Exception e) {
			System.out.println(e);
		}
		return sb.toString();
	}
}

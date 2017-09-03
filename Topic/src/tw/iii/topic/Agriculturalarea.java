package tw.iii.topic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class Agriculturalarea {
	private Connection conn;
	private Statement stmt;
	
	public Agriculturalarea() throws Exception{
		Properties prop = new Properties();
		prop.setProperty("user", "sa1");
		prop.setProperty("password","8877560");
		prop.setProperty("databaseName", "topic");
		
		Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
		conn = DriverManager.getConnection(
				"jdbc:sqlserver://localhost:1433;",prop);
		stmt=conn.createStatement();
		
	}
	
	public List<data> chick1(String city) {
		String sql="SELECT * FROM Agriculturalproducts WHERE CITY LIKE '%"+city+"%'";
		ResultSet rs = null;
		List<data> list = new ArrayList<>();
	
		try {
			rs = stmt.executeQuery(sql);
			while(rs.next()) {
				data data = new data();
				data.setID(rs.getString(1));
				data.setGid(rs.getString(2));
				data.setName(rs.getString(3));
				data.setTel(rs.getString(4));
				data.setIntroduction(rs.getString(5));
				data.setTrafficGuidelines(rs.getString(6));
				data.setAddress(rs.getString(7));
				data.setOpenHours(rs.getString(8));
				data.setCity(rs.getString(9));
				data.setTown(rs.getString(10));
				data.setCoordinate(rs.getString(11));
				data.setPhoto(rs.getString(12));
				list.add(data);
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		return list;
		
	}
	
	
	public List<gift> check2(String city){
		String sql = "select * from gift WHERE SalePlace LIKE '%"+city+"%'";
		ResultSet rs = null;
		List<gift> list = new ArrayList<>();
		
		try {
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				gift gift = new gift();
				gift.setID(rs.getString(1));
				gift.setGid(rs.getString(2));
				gift.setName(rs.getString(3));
				gift.setFeature(rs.getString(4));
				gift.setSalePlace(rs.getString(5));
				gift.setProduceOrg(rs.getString(6));
				gift.setSpecAndPrice(rs.getString(7));
				gift.setUnit(rs.getString(8));
				gift.setPrice(rs.getString(9));
				gift.setContactTel(rs.getString(10));
				gift.setColumn1(rs.getString(11));
				list.add(gift);
				
			}
			
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return list;
	}
	public List<gift> check3(String ID) {
		String sql = "SELECT * FROM GIFT WHERE ID="+ID+"";
		ResultSet rs = null;
		List<gift> list = new ArrayList<>();
		try {
			rs=stmt.executeQuery(sql);
			while(rs.next()) {
				gift gift = new gift();
				gift.setID(rs.getString(1));
				gift.setGid(rs.getString(2));
				gift.setName(rs.getString(3));
				gift.setFeature(rs.getString(4));
				gift.setSalePlace(rs.getString(5));
				gift.setProduceOrg(rs.getString(6));
				gift.setSpecAndPrice(rs.getString(7));
				gift.setUnit(rs.getString(8));
				gift.setPrice(rs.getString(9));
				gift.setContactTel(rs.getString(10));
				gift.setColumn1(rs.getString(11));
				list.add(gift);		
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return list;
		
	}
	
	
}


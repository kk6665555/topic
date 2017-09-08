package tw.iii.topic;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;



public class Agriculturalarea {
	private Connection conn;
	private Statement stmt;
	private PreparedStatement pstmt;
	public Agriculturalarea() throws Exception{
		Properties prop = new Properties();
		prop.setProperty("user", "root");
		prop.setProperty("password","root");
		
		
		Class.forName("com.mysql.jdbc.Driver");
		conn = DriverManager.getConnection(
				"jdbc:mysql://localhost/attractions?",prop);
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
	public List<data1> check4(String memberID,String productID,String name,String phone,String homephone,String email,String transport,String Pick,
			String location,String payment,String status,int sum,String date){
		String sql = "insert into Memberorder(memberID,productID,name,phone,homephone,email,transport,Pick,location,payment,status,sum,date)"
				+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
		String sql1 = "select * from Memberorder WHERE memberID="+memberID+"";
		ResultSet rs = null;
		List<data1> list = new ArrayList<>();
		try {
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, memberID);
			pstmt.setString(2, productID);
			pstmt.setString(3, name);
			pstmt.setString(4, phone);
			pstmt.setString(5, homephone);
			pstmt.setString(6, email);
			pstmt.setString(7, transport);
			pstmt.setString(8, Pick);
			pstmt.setString(9, location);
			pstmt.setString(10, payment);
			pstmt.setString(11, status);
			pstmt.setInt(12, sum);
			pstmt.setString(13, date);
			pstmt.executeUpdate();
			
			
			rs=stmt.executeQuery(sql1);
			while(rs.next()) {
				data1 date1 = new data1();
				date1.setID(rs.getString(1));
				date1.setMemberID(rs.getString(2));
				date1.setProductID(rs.getString(3));
				date1.setName(rs.getString(4));
				date1.setPhone(rs.getString(5));
				date1.setHomephone(rs.getString(6));
				date1.setEmail(rs.getString(7));
				date1.setTransport(rs.getString(8));
				date1.setPick(rs.getString(9));
				date1.setLocation(rs.getString(10));
				date1.setPayment(rs.getString(11));
				date1.setStatus(rs.getString(12));
				date1.setSum(rs.getInt(13));
				date1.setDate(rs.getString(14));
				list.add(date1);
			}
			System.out.println("ok");
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		return list;
		
	}
	
	
}


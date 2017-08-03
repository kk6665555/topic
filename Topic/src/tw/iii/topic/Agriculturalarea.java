package tw.iii.topic;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.Statement;
import java.util.Properties;

public class Agriculturalarea {
	private String ID,gid,Name,Tel,Introduction
		,TrafficGuidelines,Address,OpenHours,City
			,Town,Coordinate,Photo;
	
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
	}
	
	public String getID() {
		return ID;
	}

	public void setID(String iD) {
		ID = iD;
	}

	public String getGid() {
		return gid;
	}

	public void setGid(String gid) {
		this.gid = gid;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getTel() {
		return Tel;
	}

	public void setTel(String tel) {
		Tel = tel;
	}

	public String getIntroduction() {
		return Introduction;
	}

	public void setIntroduction(String introduction) {
		Introduction = introduction;
	}

	public String getTrafficGuidelines() {
		return TrafficGuidelines;
	}

	public void setTrafficGuidelines(String trafficGuidelines) {
		TrafficGuidelines = trafficGuidelines;
	}

	public String getAddress() {
		return Address;
	}

	public void setAddress(String address) {
		Address = address;
	}

	public String getOpenHours() {
		return OpenHours;
	}

	public void setOpenHours(String openHours) {
		OpenHours = openHours;
	}

	public String getCity() {
		return City;
	}

	public void setCity(String city) {
		City = city;
	}

	public String getTown() {
		return Town;
	}

	public void setTown(String town) {
		Town = town;
	}

	public String getCoordinate() {
		return Coordinate;
	}

	public void setCoordinate(String coordinate) {
		Coordinate = coordinate;
	}

	public String getPhoto() {
		return Photo;
	}

	public void setPhoto(String photo) {
		Photo = photo;
	}
	
	
	
	
}


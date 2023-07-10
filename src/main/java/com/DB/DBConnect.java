package com.DB;
/*
import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
 private static Connection conn;
 public static Connection getConn() 
 {
	 try {
		
		 Class.forName("com.mysql.cj.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ebook-app","root","Gudiya@1234");		

	 }catch(Exception e) {
		 e.printStackTrace();
	 }
	 return conn;
 }
}

*/

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {

	private static Connection conn;

	private static final String DRIVER_PATH = "com.mysql.cj.jdbc.Driver";
	public static final String DATABASE_URL = "jdbc:mysql://localhost:3306/ebook-app";
	public static final String USERNAME = "root";
	public static final String PASSWORD = "Gudiya@1234";

	public static Connection getConn() throws SQLException {

		try {
			Class.forName(DRIVER_PATH);
			conn = DriverManager.getConnection(DATABASE_URL, USERNAME, PASSWORD);

		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}
}

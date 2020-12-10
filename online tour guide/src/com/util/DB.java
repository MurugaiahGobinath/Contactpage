package com.util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DB {
	
	public static Connection createConnection() {
		Connection con = null;
		String url = "jdbc:sqlserver://localhost:1433;/databaseName=master";
		String username = "admin";
		String password = "1234";
		
		try {
			try {
				Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
			
			con = DriverManager.getConnection(url, username, password);
			System.out.println("Printing Connection Object " + con);
		} catch(Exception e) {
			e.printStackTrace();
		}
		
		return con;

 }
}

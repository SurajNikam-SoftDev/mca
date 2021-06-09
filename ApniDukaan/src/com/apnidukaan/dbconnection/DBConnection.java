package com.apnidukaan.dbconnection;

import java.sql.Connection;

import java.sql.DriverManager;

public class DBConnection {
	public static Connection getConnection()
	{
		Connection con = null;
		
		try
		{
//			Class.forName("com.mysql.cj.jdbc.Driver");
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost/apnidukaan?user=root&password=&useLegacyDatetimeCode=false&serverTimezone=UTC");
//			System.out.println("Connection successfully");
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		return con;
	} 
	
	/*
	 * public static void main(String args[]) throws SQLException { Connection con =
	 * null;
	 * 
	 * try {
	 * 
	 * 
	 * con = DriverManager.getConnection(
	 * "jdbc:mysql://localhost/apnidukaan?user=root&password=&useLegacyDatetimeCode=false&serverTimezone=UTC"
	 * ); System.out.println("Connection successfully");
	 * 
	 * } catch(Exception e) { e.printStackTrace(); }
	 * 
	 * con.close(); }
	 */
}

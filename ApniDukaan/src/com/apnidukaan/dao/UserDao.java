package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.apnidukaan.bean.UserBean;
import com.apnidukaan.dbconnection.DBConnection;
import com.apnidukaan.features.AES256;

public class UserDao {
	public static int save(UserBean ub)
	{
		int status = 0;
		try{
			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("insert into user(username, emailid, userpassword, contact) values(?,?,?,?)");
			 ps.setString(1, ub.getName().toUpperCase());
			 ps.setString(2, ub.getEmailid());
			 ps.setString(3, AES256.encrypt(ub.getUserpassword()));
			 ps.setString(4, ub.getContact());
			 
			 status = ps.executeUpdate();
			 
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static int login(String emailid, String password)
	{
		int status = 0;
			
		try{
			 
			 Connection con = DBConnection.getConnection();

			 PreparedStatement ps = con.prepareStatement("select userpassword from user where emailid = ?");
			 ps.setString(1, emailid);
			 
			 
			 ResultSet rs = ps.executeQuery();
			 if(rs.next()) 
			 {	

				 if(AES256.decrypt(rs.getString("userpassword")).equals(password)) {
					 status = 1;
				 }
				 else {
					 status = 0;
				 }
			 }
			 else {
				 status = 0;
			 }
			 
			 rs.close();
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
}

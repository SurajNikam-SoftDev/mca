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
	 
	public static UserBean getAllRecordsById(String emailid)
	{
//		System.out.println("emailid ::"+emailid);
		UserBean ub= new UserBean();
		try {
			Connection con = DBConnection.getConnection();
//	 			
			PreparedStatement ps= con.prepareStatement("select username, shopname, shopphoto, contact, about, prepaiddiscount from user where emailid = ? AND status = 1");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 ub.setName(rs.getString("username"));
				 ub.setShopname(rs.getString("shopname"));  
		         ub.setShopphoto(rs.getString("shopphoto"));
		         ub.setContact(rs.getString("contact"));
		         ub.setAbout(rs.getString("about"));
		         ub.setPrepaiddiscount(rs.getString("prepaiddiscount")); 
/*				System.out.println(rs.getString("username") + " :: " + rs.getString("shopname") + " :: "
						+ rs.getString("shopphoto") + " :: " + rs.getString("contact") + " :: " + rs.getString("about")
						+ " :: " + rs.getString("prepaiddiscount"));
*/			} 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return ub;
	}
	
	public static String getUserIdByEmail(String emailid)
	{
//		System.out.println("emailid ::"+emailid);
		String userid = null;
		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps= con.prepareStatement("select userid from user where emailid = ? AND status = 1");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				userid = rs.getString("userid");
//				System.out.println("user id :: "+userid);
			} 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return userid;
	}
	
	public static String getUserNameByEmail(String emailid)
	{

		String username = null;
		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps= con.prepareStatement("select username from user where emailid = ? AND status = 1");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				username = rs.getString("username");
			} 
			 
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return username;
	}
	
	public static UserBean getSenderDetailsById(String senderuserid)
	{
		
		UserBean ub= new UserBean();
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select username, shopname, contact  from user where userid = ? AND status = 1");
			ps.setString(1, senderuserid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				
				 ub.setName(rs.getString("username"));
				 ub.setShopname(rs.getString("shopname"));
				 ub.setContact(rs.getString("contact"));
				 
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return ub;
	}
	
	public static String getReceipantNameById(String receipantuserid)
	{
		String username = null;
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select username  from user where userid = ? AND status = 1");
			ps.setString(1, receipantuserid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				 username = rs.getString("username");
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return username;
	}
	
	public static String getReceipantContactById(String receipantuserid)
	{
		String contact = null;
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select contact  from user where userid = ? AND status = 1");
			ps.setString(1, receipantuserid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				contact = rs.getString("contact");
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return contact;
	}
	
	public static UserBean getShopDetailById(String userid)
	{
		
		UserBean ub= new UserBean();
		try {
			Connection con = DBConnection.getConnection();
 			
			PreparedStatement ps= con.prepareStatement("select username, shopname  from user where userid = ? AND status = 1");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			 
			while(rs.next())
			{
				
				 ub.setName(rs.getString("username"));
				 ub.setShopname(rs.getString("shopname"));  
				 
//				 System.out.println("Name ::" +  rs.getString("username") +" Shop Name :: "+ rs.getString("shopname"));
			} 
			  
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return ub;
	}
	
	public static int update(UserBean ub)
	{
		 int status=0;  
		 
		 try{

			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("update user set username = ?, shopname = ?, shopphoto = ?, contact = ?, about = ?, prepaiddiscount = ?  where emailid = ?");
			 ps.setString(1, ub.getName());
			 ps.setString(2, ub.getShopname());
			 ps.setString(3, ub.getShopphoto());
			 ps.setString(4, ub.getContact());
			 ps.setString(5, ub.getAbout());
			 ps.setString(6, ub.getPrepaiddiscount());
			 ps.setString(7, ub.getEmailid());
			 
			 status = ps.executeUpdate();
			// System.out.println(status);
			 ps.close();
			 con.close(); 
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		 return status;
	}
}

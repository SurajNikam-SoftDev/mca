package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.apnidukaan.bean.SellerBean;
import com.apnidukaan.dbconnection.DBConnection;
import com.apnidukaan.features.AES256;

public class SellerDao {
	public static int save(SellerBean sb)
	{
		int status = 0;
		try{
			 
			 Connection con = DBConnection.getConnection();
//			 System.out.println("insert into shop(shopname, ownername, shopphoto, shopcontact, prepaiddiscount, about) values('"+sb.getShopname()+"','"+sb.getOwnername()+"','"+sb.getPhoto()+"','"+sb.getShopcontact()+"','"+sb.getPrepaiddiscount()+"','"+sb.getAbout()+"')");
			 PreparedStatement ps = con.prepareStatement("insert into shop(shopname, shopphoto, ownername, shopemail, shoppassword, shopcontact) values(?,?,?,?,?,?)");
			 ps.setString(1, sb.getShopname().toUpperCase());
			 ps.setString(2, sb.getPhoto());
			 ps.setString(3, sb.getOwnername().toUpperCase());
			 ps.setString(4, sb.getEmailid());
			 ps.setString(5, AES256.encrypt(sb.getPassword()));
			 ps.setString(6, sb.getContact());
			 
			 status = ps.executeUpdate();
//			 System.out.println("Insert Successfully");
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
//			 System.out.println("insert into shop(shopname, ownername, shopphoto, shopcontact, prepaiddiscount, about) values('"+sb.getShopname()+"','"+sb.getOwnername()+"','"+sb.getPhoto()+"','"+sb.getShopcontact()+"','"+sb.getPrepaiddiscount()+"','"+sb.getAbout()+"')");
			 PreparedStatement ps = con.prepareStatement("select shoppassword from shop where shopemail = ?");
			 ps.setString(1, emailid);
			 
			 
			 ResultSet rs = ps.executeQuery();
			 if(rs.next())
			 {
				 if(AES256.decrypt(rs.getString("shoppassword")).equals(password)) {
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

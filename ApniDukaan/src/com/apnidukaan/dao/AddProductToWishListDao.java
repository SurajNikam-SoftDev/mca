package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.apnidukaan.dbconnection.DBConnection;

public class AddProductToWishListDao {
	public static int save(String pid, String userid)
	{
		int status = 0;
		try{
			if(checkWishList(userid, pid) == 1)
			{
//			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("insert into wishlist(pid, userid) values(?,?)");
			 ps.setString(1, pid);
			 ps.setString(2, userid);
			 status = ps.executeUpdate();
			 
			 ps.close();
			 con.close();
			}
			else
			{
				status = 1;
			}
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static int delete(String id)
	{
		 int status=0;  
		
		 try{
			 
			 Connection con = DBConnection.getConnection();
//			 System.out.println("delete from cart where cid = '"+id+"'");
			 PreparedStatement ps = con.prepareStatement("delete from wishlist where wid = ?");
			 ps.setString(1, id);
			 
			 status = ps.executeUpdate();
			 //System.out.println("delete Successfully");
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		 return status;
	}
	
	public static int checkWishList(String userid, String pid)
	{
		int status = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select wid from wishlist where userid = ? AND pid = ?");
			ps.setString(1, userid);
			ps.setString(2, pid);
			
			ResultSet rs = ps.executeQuery(); 
			
			if(rs.next())
			{
				status = 0;
			}
			else
			{
				status = 1;
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return status;
	}
}

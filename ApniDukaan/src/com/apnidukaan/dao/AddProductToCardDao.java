package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaan.bean.AddressBean;
import com.apnidukaan.dbconnection.DBConnection;

public class AddProductToCardDao {
	public static int save(String pid, String userid)
	{
		int status = 0;
		try{
			
			if(checkCart(userid, pid) == 1)
			{ 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("insert into cart(pid, userid) values(?,?)");
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
			 PreparedStatement ps = con.prepareStatement("delete from cart where cid = ?");
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
	
	public static int checkCart(String userid, String pid)
	{
		int status = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select cid from cart where userid = ? AND pid = ?");
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

package com.apnidukaan.dao;

import java.awt.List;
import java.sql.Connection;
import java.sql.PreparedStatement;

import com.apnidukaan.bean.ShopBean;
import com.apnidukaan.dbconnection.DBConnection;

public class ShopDao {
	
	
	public static int save(ShopBean sb) throws Exception {
		
		int status=0;  
		
		try{
			 
			 Connection con = DBConnection.getConnection();
//			 System.out.println("insert into shop(shopname, ownername, shopphoto, shopcontact, prepaiddiscount, about) values('"+sb.getShopname()+"','"+sb.getOwnername()+"','"+sb.getPhoto()+"','"+sb.getShopcontact()+"','"+sb.getPrepaiddiscount()+"','"+sb.getAbout()+"')");
			 PreparedStatement ps = con.prepareStatement("insert into shop(shopname, ownername, shopphoto, shopcontact, prepaiddiscount, about) values(?,?,?,?,?,?)");
			 ps.setString(1, sb.getShopname());
			 ps.setString(2, sb.getOwnername());
			 ps.setString(3, sb.getPhoto());
			 ps.setString(4, sb.getShopcontact());
			 ps.setInt(5, sb.getPrepaiddiscount());
			 ps.setString(6, sb.getAbout());
			 
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
	
	

}

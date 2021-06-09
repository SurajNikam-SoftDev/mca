package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

import com.apnidukaan.bean.BankBean;
import com.apnidukaan.dbconnection.DBConnection;
import com.apnidukaan.features.AES256;

public class BankDao {
	public static int save(BankBean bb)
	{
		 int status=0;  
		 
		 try{
			 //	, , ,  
			 Connection con = DBConnection.getConnection();//mobileno, housebuilding, roadarea, city, state, lankmark, pincode, userid
			 PreparedStatement ps = con.prepareStatement("insert into bank(accountno, holdername, ifsccode, userid)values(?,?,?,?)");
			 ps.setString(1, AES256.encrypt(bb.getAccountno()));
			 ps.setString(2, AES256.encrypt(bb.getHoldername()));
			 ps.setString(3, AES256.encrypt(bb.getIFSCCode()));
			 ps.setString(4, bb.getUserid());
			 
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

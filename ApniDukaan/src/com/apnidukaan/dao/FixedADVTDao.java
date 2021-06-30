package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaan.bean.FixedADVTBean;
import com.apnidukaan.dbconnection.DBConnection;


public class FixedADVTDao {
	
	public static List<FixedADVTBean> getFixedADVT()
	{
		List<FixedADVTBean> lsab = new ArrayList<FixedADVTBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select faid, rank, photoimage from fixedadvt");
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				FixedADVTBean sab= new FixedADVTBean();
				sab.setFaid(rs.getString("faid"));
				sab.setRank(rs.getString("rank"));
				sab.setPhotoimage(rs.getString("photoimage"));    
				lsab.add(sab); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lsab;
	}
}

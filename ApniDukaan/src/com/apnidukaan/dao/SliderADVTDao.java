package com.apnidukaan.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaan.bean.SliderADVTBean;
import com.apnidukaan.dbconnection.DBConnection;


public class SliderADVTDao {
	
	public static List<SliderADVTBean> getSliderADVT()
	{
		List<SliderADVTBean> lsab = new ArrayList<SliderADVTBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select said, rank, advtimage from slideradvt");
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				SliderADVTBean sab= new SliderADVTBean();
				sab.setSaid(rs.getString("said"));
				sab.setRank(rs.getString("rank"));
				sab.setAdvtimage(rs.getString("advtimage"));
		        
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

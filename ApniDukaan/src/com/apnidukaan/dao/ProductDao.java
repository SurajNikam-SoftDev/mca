package com.apnidukaan.dao;

import java.io.File;
import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.apnidukaan.bean.ProductBean;
import com.apnidukaan.dbconnection.DBConnection;

public class ProductDao {
	
	@SuppressWarnings("unused")
	private static final String UPLOAD_DIRECTORY = "C:/xampp/htdocs/uploads";
	
	public static int save(ProductBean pb, List<String> imgfilename)
	{
		int status = 0;
		
		try{

			/*
			 * productname, productsubtitle, productprice, category, cashondelivery,
			 * allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock,
			 * returnperiod, proddesc, prodimg1, prodimg2, prodimg3, prodimg4, prodimg5,
			 * prodimg6, prodimg7, prodimg8, prodimg9, prodimg10, prodratings, userid
			 */			
	
			Connection con = DBConnection.getConnection();
			
			String sql = null;
			
			int length = imgfilename.size();
			
			switch(length)
			{
			case 1 :	
				System.out.println(length); // 1
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ pb.getUserid() + "')";
				
				
						break;
			case 2 :	
				System.out.println(length);	// 2
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + pb.getUserid() + "')";
				
				 
						break;		
			case 3 :	
				System.out.println(length);	//	3
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + pb.getUserid() + "')";
				
				
						break;
			case 4 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ pb.getUserid() + "')";
				
				
						break;
			
			case 5 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','"  + pb.getUserid() + "')";
				
				
						break;
						
			case 6 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','" + imgfilename.get(5) + "','"  + pb.getUserid() + "')";
				
				
						break;
						
			case 7 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','" + imgfilename.get(5) + "','" + imgfilename.get(6) + "','" 
					+ pb.getUserid() + "')";
				
				
						break;
						
			case 8 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','" + imgfilename.get(5) + "','" + imgfilename.get(6) + "','" 
					+ imgfilename.get(7) + "','"  + pb.getUserid() + "')";
				
				
						break;
						
						
			case 9 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','" + imgfilename.get(5) + "','" + imgfilename.get(6) + "','" 
					+ imgfilename.get(7) + "','" + imgfilename.get(8) + "','"  + pb.getUserid() + "')";
				
				
						break;
						
						
			case 10 :	
				System.out.println(length);	//	4
				sql = "insert into products(productname, productsubtitle, productprice, category, cashondelivery, "
					+ "allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, "
					+ "prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10, userid)"
					+ " values('" + pb.getProductname() + "','" + pb.getProductsubtitle() + "','"
					+ pb.getProductprice()+".00" + "','" + pb.getCategory() + "','" + pb.getCashondelivery() + "','"
					+ pb.getAllowreturn() + "','" + pb.getHeight() + "','" + pb.getWeight() + "','"
					+ pb.getWidth() + "','" + pb.getLength() + "','" + pb.getStock() + "','"
					+ pb.getReturnperiod() + "','" + pb.getDescription() + "','" + imgfilename.get(0) + "','" 
					+ imgfilename.get(1) + "','" + imgfilename.get(2) + "','" + imgfilename.get(3) + "','" 
					+ imgfilename.get(4) + "','" + imgfilename.get(5) + "','" + imgfilename.get(6) + "','" 
					+ imgfilename.get(7) + "','" + imgfilename.get(8) + "','" + imgfilename.get(9) + "','" 
					+ pb.getUserid() + "')";
				
				
						break;
						
			
			default: break;
			
			}
			
			System.out.println(sql);
			
		
			
			PreparedStatement ps = con.prepareStatement(sql);			
			status = ps.executeUpdate();
			
			ps.close();
			
			con.close();
		}
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static int deleteUploadingFiles(String uploadfile, List<String> imgfilename)
	{
		int status = 0;
		
		for (String object: imgfilename) {
		    
		    File file = new File(uploadfile+File.separator+object);
		    if(file.delete())  
	        {
	           System.out.println(file.getName() + " file deleted.");  
	           status = 1;
	        }
	        else  
	        {  
	           System.out.println("failed");
	           status = 0;
	        }
		}
		
		return status;
	}
	
	public static List<ProductBean> getAllRecords(String emailid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select * from products where emailid = ?");
			ps.setString(1, emailid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
//				 pb.setCuid(rs.getString("cuid")); 
//				 pb.setName(rs.getString("name"));  
//		         pb.setEmail(rs.getString("email"));
//		         pb.setBranch_id(rs.getString("branch_id"));
		             
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	
	public static List<ProductBean> getAllRecordsByEmailId(String emailid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select pid, prodimg1, productname, productprice  from products where userid = ?");
			ps.setString(1, UserDao.getUserIdByEmail(emailid));
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
					
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static int getProductCountByCategory(String category, String search)
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
			String query = null;
			
			if(category.equalsIgnoreCase("All") && search.length() == 0)
			{
				System.out.println("select COUNT(pid) FROM products");
				query = "select COUNT(pid) FROM products";
			}	
			else if(category.length() != 0 && search.length() == 0)
			{
				System.out.println("select COUNT(pid)  from products where category = '"+category+"'");
				query = "select COUNT(pid)  from products where category = '"+category+"'";
			}
			else if(search.length() != 0)
			{
				System.out.println("select COUNT(pid) from products where productname LIKE '%"+search+"%' OR productsubtitle LIKE '%"+search+"%' AND category = '"+category+"'");
				query= "select COUNT(pid) from products where productname LIKE '%"+search+"%' OR productsubtitle LIKE '%"+search+"%' AND category = '"+category+"'";
			}
			
			PreparedStatement ps= con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				count = rs.getInt("count(pid)");
//				System.out.println("count :: "+count);
			} 
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		return count;
	}
	
	public static List<ProductBean> getWishListProduct(String emailid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select pid from wishlist where userid = '"+ UserDao.getUserIdByEmail(emailid) +"'");
			PreparedStatement ps= con.prepareStatement("select wid, pid from wishlist where userid = ?");
			ps.setString(1, UserDao.getUserIdByEmail(emailid));
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
//				System.out.println("select pid, prodimg1, productname, productprice  from products where pid = '" + rs.getString("pid") + "'");
				String query = "select pid, prodimg1, productname, productprice  from products where pid = '" + rs.getString("pid") + "'";
				PreparedStatement ps2= con.prepareStatement(query);
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
						
					 ProductBean pb= new ProductBean();
					 pb.setWid(rs.getString("wid"));
			         pb.setPid(rs2.getInt("pid"));
//			         System.out.println(rs2.getInt("pid"));
			         pb.setProdimg1(rs2.getString("prodimg1"));
			         pb.setProductname(rs2.getString("productname"));
			         pb.setProductprice(rs2.getString("productprice"));
//			         System.out.println(rs2.getInt("pid") + " :: " + rs2.getString("prodimg1") + " :: " + rs2.getString("productname") + " :: " + rs2.getString("productprice"));
			         lpb.add(pb); 
				}
				 
			}
			
			
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static List<ProductBean> getCartProduct(String emailid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select pid from wishlist where userid = '"+ UserDao.getUserIdByEmail(emailid) +"'");
			PreparedStatement ps= con.prepareStatement("select cid, pid from cart where userid = ?");
			ps.setString(1, UserDao.getUserIdByEmail(emailid));
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
//				System.out.println("select pid, prodimg1, productname, productprice  from products where pid = '" + rs.getString("pid") + "'");
				String query = "select pid, prodimg1, productname, productprice  from products where pid = '" + rs.getString("pid") + "'";
				PreparedStatement ps2= con.prepareStatement(query);
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
						
					 ProductBean pb= new ProductBean();
					 pb.setCid(rs.getString("cid"));
			         pb.setPid(rs2.getInt("pid"));
//			         System.out.println(rs2.getInt("pid"));
			         pb.setProdimg1(rs2.getString("prodimg1"));
			         pb.setProductname(rs2.getString("productname"));
			         pb.setProductprice(rs2.getString("productprice"));
//			         System.out.println(rs2.getInt("pid") + " :: " + rs2.getString("prodimg1") + " :: " + rs2.getString("productname") + " :: " + rs2.getString("productprice"));
			         lpb.add(pb); 
				}
				 
			}
			
			
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static List<ProductBean> getProductsByCategory(String category)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select pid, prodimg1, productname, productprice  from products where category = ? ORDER BY prodratings desc");
			ps.setString(1, category);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
					
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static List<ProductBean> getProductsForTopRating()
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("SELECT pid, prodimg1, productname, productprice FROM products ORDER BY prodratings DESC LIMIT 10");
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
					
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static List<ProductBean> getProductsByCategoryStartEnd(String category, int start, int end, String search)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();  

			String query = null; 
			
			if(category.equalsIgnoreCase("All") && search.length() == 0)
			{
//				System.out.println("select pid, prodimg1, productname, productprice  from products ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ");
				query = "select pid, prodimg1, productname, productprice  from products ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ";
			}	
			else if(category.length() != 0 && search.length() == 0) 
			{ 
//				System.out.println("select pid, prodimg1, productname, productprice  from products where category = '"+category+"' ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ");
				query = "select pid, prodimg1, productname, productprice  from products where category = '"+category+"' ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ";
			}
			else if(search.length() != 0) 
			{  		
//				System.out.println("select pid, prodimg1, productname, productprice  from products where productname LIKE '%"+search+"%' OR productsubtitle LIKE '%"+search+"%' AND category = '"+category+"' ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ");
				query= "select pid, prodimg1, productname, productprice  from products where productname LIKE '%"+search+"%' OR productsubtitle LIKE '%"+search+"%' AND category = '"+category+"' ORDER BY prodratings desc LIMIT "+ (start-1) +", "+ (end-1) +" ";
			}
			
			
			
			
			PreparedStatement ps= con.prepareStatement(query);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
					
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static List<ProductBean> getProductsByPlaceOrder(String userid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select pid, prodimg1, productname, productprice  from products where userid = ?");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
					
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpb;
	}
	
	public static ProductBean getAllRecordsById(String id)
	{
			ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();
//	SELECT pid, productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc FROM products;
			PreparedStatement ps= con.prepareStatement("select productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc  from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				/*
				 * productname, productsubtitle, productprice, category, cashondelivery,
				 * allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock,
				 * returnperiod, proddesc
				 */				
				pb.setProductname(rs.getString("productname"));
		        pb.setProductsubtitle(rs.getString("productsubtitle"));
		        pb.setProductprice(rs.getString("productprice"));
		        pb.setCategory(rs.getString("category"));
		        pb.setCashondelivery(rs.getString("cashondelivery"));
		        pb.setAllowreturn(rs.getString("allowreturn"));
		        pb.setHeight(rs.getString("prodheight"));
		        pb.setWeight(rs.getString("prodweight"));
		        pb.setWidth(rs.getString("prodwidth"));
		        pb.setLength(rs.getString("prodlenght"));
		        pb.setStock(rs.getString("stock"));
		        pb.setReturnperiod(rs.getString("returnperiod"));
		        pb.setDescription(rs.getString("proddesc"));
		       
		        //	rating, prodimg1
//		        System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static ProductBean getSenderProductDataById(String productid)
	{
			ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();

			PreparedStatement ps= con.prepareStatement("select prodheight, prodweight, prodwidth, prodlenght, stock, userid  from products where pid = ?");
			ps.setString(1, productid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				pb.setUserid(rs.getString("userid"));
				pb.setHeight(rs.getString("prodheight"));
		        pb.setWeight(rs.getString("prodweight"));
		        pb.setWidth(rs.getString("prodwidth"));
		        pb.setLength(rs.getString("prodlenght"));
		        pb.setStock(rs.getString("stock"));	       
//		        System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));	         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static ProductBean getProductPlaceOrderRecordById(String id)
	{
			ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();
//	SELECT pid, productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc FROM products;
			PreparedStatement ps= con.prepareStatement("select productname, productsubtitle, productprice, cashondelivery, allowreturn, stock, returnperiod, prodratings, prodimg1 from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				/*
				 * productname, productsubtitle, productprice, cashondelivery, 
				 * allowreturn, stock, returnperiod, prodratings, prodimg1
				 */				
				pb.setProductname(rs.getString("productname"));
		        pb.setProductsubtitle(rs.getString("productsubtitle"));
		        pb.setProductprice(rs.getString("productprice"));
		        pb.setCashondelivery(rs.getString("cashondelivery"));
		        pb.setAllowreturn(rs.getString("allowreturn"));
		        pb.setStock(rs.getString("stock"));
		        pb.setReturnperiod(rs.getString("returnperiod"));
		        pb.setRatings(rs.getString("prodratings"));
		        pb.setProdimg1(rs.getString("prodimg1"));
		       
		        //	rating, prodimg1
//		        System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static String getProductNameById(String id)
	{
			String productname = null;
		
		try {
			Connection con = DBConnection.getConnection();
//	SELECT pid, productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc FROM products;
			PreparedStatement ps= con.prepareStatement("select productname, productsubtitle from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				productname = rs.getString("productsubtitle").equals("undefined")?rs.getString("productname"):rs.getString("productname")+" - "+rs.getString("productsubtitle");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return productname;
	}
	
	public static String getProductImageById(String id)
	{
			String prodimg1 = null;
		
		try {
			Connection con = DBConnection.getConnection();
//	SELECT pid, productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc FROM products;
			PreparedStatement ps= con.prepareStatement("select prodimg1 from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				prodimg1 = rs.getString("prodimg1");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return prodimg1;
	}
	
	public static ProductBean getProductDetailsById(String id)
	{
		ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();
			PreparedStatement ps= con.prepareStatement("select productname, productsubtitle, productprice, category, cashondelivery, allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock, returnperiod, proddesc, prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10, userid  from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				/*
				 * productname, productsubtitle, productprice, category, cashondelivery,
				 * allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock,
				 * returnperiod, proddesc
				 */			 	
				pb.setProductname(rs.getString("productname"));
		        pb.setProductsubtitle(rs.getString("productsubtitle"));
		        pb.setProductprice(rs.getString("productprice"));
		        pb.setCategory(rs.getString("category"));
		        pb.setCashondelivery(rs.getString("cashondelivery"));
		        pb.setAllowreturn(rs.getString("allowreturn"));
		        pb.setHeight(rs.getString("prodheight"));
		        pb.setWeight(rs.getString("prodweight"));
		        pb.setWidth(rs.getString("prodwidth"));
		        pb.setLength(rs.getString("prodlenght"));
		        pb.setStock(rs.getString("stock"));
		        pb.setReturnperiod(rs.getString("returnperiod"));
		        pb.setDescription(rs.getString("proddesc"));
		        pb.setProdimg1(rs.getString("prodimg1"));
				pb.setProdimg2(rs.getString("prodimg2"));
				pb.setProdimg3(rs.getString("prodimg3"));
				pb.setProdimg4(rs.getString("prodimg4"));
				pb.setProdimg5(rs.getString("prodimg5"));
				pb.setProdimg6(rs.getString("prodimg6"));
				pb.setProdimg7(rs.getString("prodimg7"));
				pb.setProdimg8(rs.getString("prodimg8"));
				pb.setProdimg9(rs.getString("prodimg9"));
				pb.setProdimg10(rs.getString("prodimg10"));
				pb.setUserid(rs.getString("userid"));
				
	//			System.out.println("user Id :: "+rs.getString("userid"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static ProductBean getAllPhotoById(String id) {
		ProductBean pb= new ProductBean();
		
		try {
			Connection con = DBConnection.getConnection();
//		SELECT prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10 FROM products ;
			PreparedStatement ps= con.prepareStatement("select prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10 from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			if(rs.next())
			{
				/*
				 * prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, 
				 * prodimg6, prodimg7, prodimg8, prodimg9, prodimg10
				 */				
				pb.setProdimg1(rs.getString("prodimg1"));
				pb.setProdimg2(rs.getString("prodimg2"));
				pb.setProdimg3(rs.getString("prodimg3"));
				pb.setProdimg4(rs.getString("prodimg4"));
				pb.setProdimg5(rs.getString("prodimg5"));
				pb.setProdimg6(rs.getString("prodimg6"));
				pb.setProdimg7(rs.getString("prodimg7"));
				pb.setProdimg8(rs.getString("prodimg8"));
				pb.setProdimg9(rs.getString("prodimg9"));
				pb.setProdimg10(rs.getString("prodimg10"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return pb;
	}
	
	public static int update(ProductBean pb, List<String> imgfilename)
	{
		int status = 0;
		
		try{

			/*
			 * productname, productsubtitle, productprice, category, cashondelivery,
			 * allowreturn, prodheight, prodweight, prodwidth, prodlenght, stock,
			 * returnperiod, proddesc, prodimg1, prodimg2, prodimg3, prodimg4, prodimg5,
			 * prodimg6, prodimg7, prodimg8, prodimg9, prodimg10, prodratings, userid
			 */			
	
			Connection con = DBConnection.getConnection();
			
			String sql = null;
			
			int length = imgfilename.size();
			
			switch(length)
			{
			case 1 :	
				System.out.println(length); // 1
				
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory() +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn() +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight()+"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength() +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod() +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + imgfilename.get(0) +"' , "
						 +"where pid = '"+ pb.getPid() +"'";
					
						break;
			case 2 :	
				System.out.println(length);	// 2
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory() +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn() +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight()+"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength() +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod() +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + imgfilename.get(0)  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"' where pid = '"+ pb.getPid() +"'";
					
				 
						break;		
			case 3 :	
				System.out.println(length);	//	3
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + imgfilename.get(0)  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2) +"' "
						 +"where pid = '"+ pb.getPid() +"'";
				
						break;
			case 4 :	
				System.out.println(length);	//	4
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + imgfilename.get(0)  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + pb.getProdimg4() +"' where pid = '"+ pb.getPid() +"'";
				
				
						break;
			
			case 5 :	
				System.out.println(length);	//	5
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + imgfilename.get(0)  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"where pid = '"+ pb.getPid() +"'";
				
						break;
						
			case 6 :	
				System.out.println(length);	//	6
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + pb.getProdimg1()  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"prodimg6 = '" + imgfilename.get(5) +" where pid = '"+ pb.getPid() +"'";
				
				
						break;
						
			case 7 :	
				System.out.println(length);	//	7
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + pb.getProdimg1()  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"prodimg6 = '" + imgfilename.get(5) +"', prodimg7 = '" + imgfilename.get(6)  +"' , "	
						 +"where pid = '"+ pb.getPid() +"'";
				
						break;
						
			case 8 :	
				System.out.println(length);	//	8
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + pb.getProdimg1()  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"prodimg6 = '" + imgfilename.get(5) +"', prodimg7 = '" + imgfilename.get(6)  +"' , "	
						 +"prodimg8 = '" + imgfilename.get(7) +" where pid = '"+ pb.getPid() +"'";
				
				
						break;
						
						
			case 9 :	
				System.out.println(length);	//	9
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + pb.getProdimg1()  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"prodimg6 = '" + imgfilename.get(5) +"', prodimg7 = '" + imgfilename.get(6)  +"' , "	
						 +"prodimg8 = '" + imgfilename.get(7) +"', prodimg9 = '" + imgfilename.get(8)  +"' , "
						 +"where pid = '"+ pb.getPid() +"'";
				
				
						break;
						
						
			case 10 :	
				System.out.println(length);	//	10
				sql = "update products set productname = '"+pb.getProductname()+"', productsubtitle ='"+ pb.getProductsubtitle() +"', "
						 +"productprice = '" + pb.getProductprice() +"', category  = '" + pb.getCategory()  +"' , "
						 +"cashondelivery = '" + pb.getCashondelivery() +"', allowreturn  = '" + pb.getAllowreturn()  +"' , "
						 +"prodheight = '" + pb.getHeight() +"', prodweight  = '" + pb.getWeight() +"' , "
						 +"prodwidth = '" + pb.getWidth() +"', prodlenght  = '" + pb.getLength()  +"' , "
						 +"stock = '" + pb.getStock() +"', returnperiod  = '" + pb.getReturnperiod()  +"' , "
						 +"proddesc = '" + pb.getDescription() +"', prodimg1  = '" + pb.getProdimg1()  +"' , "
						 +"prodimg2 = '" + imgfilename.get(1) +"', prodimg3 = '" + imgfilename.get(2)  +"' , "
						 +"prodimg4 = '" + imgfilename.get(3) +"', prodimg5 = '" + imgfilename.get(4) +"' , "
						 +"prodimg6 = '" + imgfilename.get(5) +"', prodimg7 = '" + imgfilename.get(6)  +"' , "	
						 +"prodimg8 = '" + imgfilename.get(7) +"', prodimg9 = '" + imgfilename.get(8)  +"' , "
						 +"prodimg10 = '" + imgfilename.get(9) +" where pid = '"+ pb.getPid() +"'";
				
						break;
						
			
			default: break;
			
			}
			
//			System.out.println(sql);
			
		
			
			PreparedStatement ps = con.prepareStatement(sql);			
			status = ps.executeUpdate();
			
			ps.close();
			
			con.close();
		}
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static int delete(String id)
	{
		 int status=0;  
		 
		 List<String> imgname = getPhotoById(id);
		 
		 try{
			 
			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("delete from products where pid = ?");
			 ps.setString(1, id);
			 
			 status = ps.executeUpdate();
			 
			 if(status == 1)
			 {
				 for (int i = 0; i < 10; i++) {
					 
					 if(imgname.get(i).contentEquals("undefined"))
					 {
						 
					 }
					 else { 
//						 System.out.println(UPLOAD_DIRECTORY+"/"+imgname.get(i));
						 File file = new File(UPLOAD_DIRECTORY+"/"+imgname.get(i));
						 if(file.delete())  
					     {
					     
							 System.out.println(file.getName() + " file deleted.");  
					         status = 1;
					     }
					     else  
					     {  
					         System.out.println("failed");
					         status = 0;
					     }
					 }
					    
				}
			 }
			 
			 //System.out.println("delete Successfully");
			 ps.close();
			 con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		 return status;
	}
	
	public static List<String> getPhotoById(String id) {
		List<String> imgname = new ArrayList<String>();
		
		try {
			Connection con = DBConnection.getConnection();
//		SELECT prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10 FROM products ;
			PreparedStatement ps= con.prepareStatement("select prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, prodimg6, prodimg7, prodimg8, prodimg9, prodimg10 from products where pid = ?");
			ps.setString(1, id);
			ResultSet rs = ps.executeQuery(); 
			
			if(rs.next())
			{
				/*
				 * prodimg1, prodimg2, prodimg3, prodimg4, prodimg5, 
				 * prodimg6, prodimg7, prodimg8, prodimg9, prodimg10
				 */				
				imgname.add(rs.getString("prodimg1"));
				imgname.add(rs.getString("prodimg2"));
				imgname.add(rs.getString("prodimg3"));
				imgname.add(rs.getString("prodimg4"));
				imgname.add(rs.getString("prodimg5"));
				imgname.add(rs.getString("prodimg6"));
				imgname.add(rs.getString("prodimg7"));
				imgname.add(rs.getString("prodimg8"));
				imgname.add(rs.getString("prodimg9"));
				imgname.add(rs.getString("prodimg10"));
		         
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return imgname;
	}
	
	public static List<ProductBean> getAllRecordsProductsById(String userid)
	{
		List<ProductBean> lpb = new ArrayList<ProductBean>();
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			PreparedStatement ps= con.prepareStatement("select pid, prodimg1, productname, productprice, productsubtitle from products where userid = ? AND status = 1");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 ProductBean pb= new ProductBean();
		         pb.setPid(rs.getInt("pid"));
		         pb.setProdimg1(rs.getString("prodimg1"));
		         pb.setProductname(rs.getString("productname"));
		         pb.setProductsubtitle(rs.getString("productsubtitle"));
		         pb.setProductprice(rs.getString("productprice"));
//		         System.out.println(rs.getInt("pid") + " :: " + rs.getString("prodimg1") + " :: " + rs.getString("productname") + " :: " + rs.getString("productprice"));
		         lpb.add(pb);  
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return lpb;
	}
	
	public static int getCountOfProductById(String userid)
	{
		int count = 0;
		
		try {
			Connection con = DBConnection.getConnection();
//			System.out.println("select pid, prodimg1, productname, productprice  from products where userid = '"+userid+"'");
			PreparedStatement ps= con.prepareStatement("select count(pid) from products where userid = ? AND status = 1");
			ps.setString(1, userid);
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				 count = rs.getInt("count(pid)");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		return count;
	}

}

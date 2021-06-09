package com.apnidukaan.dao;

import java.sql.Connection;



import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Random;

import com.apnidukaan.bean.OrderBean;
import com.apnidukaan.bean.PlaceOrderBean;
import com.apnidukaan.bean.ProductBean;
import com.apnidukaan.bean.PurchaseOrderBean;
import com.apnidukaan.bean.UserBean;
import com.apnidukaan.dbconnection.DBConnection;

public class PlaceOrderDao {
	
	public static String OrderIdGenerate()
	{
		String code = "";
		Random random = new Random();
        int nextInt = random.nextInt(9000000);
        nextInt=nextInt+1000000;
        
        Calendar c = Calendar.getInstance();
        int year=c.get(Calendar.YEAR);
        int month=c.get(Calendar.MONTH)+1;
        int day=c.get(Calendar.DAY_OF_MONTH);
        int hh=c.get(Calendar.HOUR_OF_DAY);
        int mi=c.get(Calendar.MINUTE);
        int ss=c.get(Calendar.SECOND);
        
        
        code = year+""+month+""+day+""+hh+""+mi+""+ss+""+nextInt;
        
        
        return code;
	}
	
	public static int preserve(String key, String qtyprice, String qty, String paymentcategory, String receipantaddress, String receipantuserid)
	{
		int status = 0;
		PlaceOrderBean pob = new PlaceOrderBean();
		
		pob.setReferenceno(OrderIdGenerate());
		
		//	Product Data Of Shop
		ProductBean pb = ProductDao.getSenderProductDataById(key);
		String senderuserid = pb.getUserid();
		pob.setProdweight(pb.getWeight());
		pob.setProdheight(pb.getHeight());
		pob.setProdwidth(pb.getWidth());
		pob.setProdlength(pb.getLength());
		
		
		// Sender Data
		
//		System.out.println("Sender User Id"+senderuserid);
		UserBean sub = UserDao.getSenderDetailsById(senderuserid);
		String sendername = sub.getShopname().equals("undefined")? sub.getName(): sub.getName()  + " - " + sub.getShopname();
		pob.setSenderid(senderuserid);
		pob.setSendername(sendername);
		pob.setSendercontact(sub.getContact());
		pob.setSenderaddress(AddressDao.getSenderAddressContactById(senderuserid));
		
		
		//	Receipant Data
		pob.setReceipantid(receipantuserid);
		pob.setReceipantname(UserDao.getReceipantNameById(receipantuserid));
		pob.setReceipantaddress(receipantaddress);
		pob.setReceipantcontact(UserDao.getReceipantContactById(receipantuserid));
		
		pob.setPrice(qtyprice);					//	Product Price * Total Quantity
		pob.setQty(qty);						//	Qty
		pob.setPaymentstatus("Pending");	//	Cash On Delivery
		pob.setPaymenttype(paymentcategory);		//	Payment Pending
		pob.setType("Delivery");				//	Deliver Or PickUp Parcel
		pob.setPid(key);						//	Product Id
		pob.setOpstatus("Pending");	//	ApnaCMS Accept Parcel For Deliver	
		
		status = save(pob);
		
		return status;
	}
	
	public static int save(PlaceOrderBean pob)
	{
		int status = 0;
		try{
//	insert into orderparcel(referenceno, senderid, sendername, senderaddress, sendercontact, receipantid, receipantname, receipantaddress, receipantcontact, type, prodweight, prodheight, prodwidth, prodlength, price, qty, paymenttype, paymentstatus, opstatus, pid) values('2021681137492396791', 'SURAJ GAJANAN NIKAM', '9898989898, asdfghjk, S\dz, Pune, Maharashtra, asfd, 411002', '9855898558', 'AKSHAY GAJANAN NIKAM', 'sadashiv peth, tilak road, sp college, Maharashtra, Pune, 411002', '7666023919, Delivery', '1', 'undefined', 'undefined', 'undefined', '349.00', '1', 'Pending', 'Cash On Delivery', 'Pending', '17')			
			System.out.println("insert into orderparcel(referenceno, senderid, sendername, senderaddress, sendercontact, receipantid, receipantname, receipantaddress, receipantcontact, type, prodweight, prodheight, prodwidth, prodlength, price, qty, paymenttype, paymentstatus, opstatus, pid) values('" + pob.getReferenceno() + "', '" + pob.getSendername() + "', '" +	pob.getSenderaddress() + "', '" + pob.getSendercontact() + "', '" + pob.getReceipantname() + "', '" + pob.getReceipantaddress() + "', '" + pob.getReceipantcontact() + ", " +	pob.getType() + "', '" + pob.getProdweight() + "', '" + pob.getProdheight() + "', '" + pob.getProdwidth() + "', '" + pob.getProdlength() + "', '" + pob.getPrice() + "', '" + pob.getQty() + "', '" + pob.getPaymenttype() + "', '" + pob.getPaymentstatus() + "', '" + pob.getOpstatus() + "', '" + pob.getPid() +"')");
			Connection con = DBConnection.getConnection();
			PreparedStatement ps = con.prepareStatement("insert into orderparcel(referenceno, senderid, sendername, senderaddress, sendercontact, receipantid, receipantname, receipantaddress, receipantcontact, type, prodweight, prodheight, prodwidth, prodlength, price, qty, paymenttype, paymentstatus, opstatus, pid) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			ps.setString(1, pob.getReferenceno());
			ps.setString(2, pob.getSenderid());
			ps.setString(3, pob.getSendername());
			ps.setString(4, pob.getSenderaddress());
			ps.setString(5, pob.getSendercontact());
			ps.setString(6, pob.getReceipantid());
			ps.setString(7, pob.getReceipantname());
			ps.setString(8, pob.getReceipantaddress());
			ps.setString(9, pob.getReceipantcontact());
			ps.setString(10, pob.getType());
			ps.setString(11, pob.getProdweight());
			ps.setString(12, pob.getProdheight());
			ps.setString(13, pob.getProdwidth());
			ps.setString(14, pob.getProdlength());
			ps.setString(15, pob.getPrice());
			ps.setString(16, pob.getQty());
			ps.setString(17, pob.getPaymenttype());
			ps.setString(18, pob.getPaymentstatus());
			ps.setString(19, pob.getOpstatus());
			ps.setString(20, pob.getPid());
			
			status = ps.executeUpdate();
			
			ps.close();
			con.close();
		 }
		 catch (Exception e) {
			 e.printStackTrace();
		}
		
		return status;
	}
	
	public static List<PurchaseOrderBean> getPurchaseOrderRecordById(String userid)
	{
		List<PurchaseOrderBean> lpob=new ArrayList<PurchaseOrderBean>(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
			System.out.println("select parcelid, pid, price, paymenttype, opstatus from orderparcel where receipantid = '"+ userid +"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, pid, price, paymenttype, opstatus from orderparcel where receipantid = ?");
			ps.setString(1, userid);
			
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next()) 
			{
/*				System.out.println(rs.getString("parcelid"));
				System.out.println(rs.getString("pid"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("paymenttype"));
				System.out.println(rs.getString("opstatus"));
*/				
				PreparedStatement ps2= con.prepareStatement("select productname, productsubtitle, prodimg1 from products where pid = ?");
				ps2.setString(1, rs.getString("pid"));
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
					PurchaseOrderBean pob = new PurchaseOrderBean();
					
/*					System.out.println(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					System.out.println(rs2.getString("prodimg1"));
					*/
					pob.setParcelid(rs.getString("parcelid"));
					pob.setPid(rs.getString("pid"));
					pob.setPrice(rs.getString("price"));
					pob.setPaymenttype(rs.getString("paymenttype"));
					pob.setOpstatus(rs.getString("opstatus"));
					pob.setProducttitle(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					pob.setProdimg1(rs2.getString("prodimg1"));
					
					lpob.add(pob);
				}
				
				
				//purchaseorder.add(""); 
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lpob;
	}
	
	public static PurchaseOrderBean getPurchaseOrderRecordByUserIdAndPid(String userid, String pid)
	{
		PurchaseOrderBean pob = new PurchaseOrderBean();
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select parcelid, pid, price, paymenttype, opstatus from orderparcel where senderid = '"+userid+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, pid, referenceno, price, paymenttype, opstatus from orderparcel where senderid = ? AND pid = ?");
			ps.setString(1, userid); 
			ps.setString(2, pid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				System.out.println(rs.getString("referenceno"));
/*				System.out.println(rs.getString("pid"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("paymenttype"));
				System.out.println(rs.getString("opstatus"));*/
				
				PreparedStatement ps2= con.prepareStatement("select productname, productsubtitle, prodimg1 from products where pid = ?");
				ps2.setString(1, rs.getString("pid"));
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
/*					System.out.println(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					System.out.println(rs2.getString("prodimg1"));
					*/
					pob.setReferenceno(rs.getString("referenceno"));
					pob.setParcelid(rs.getString("parcelid"));
					pob.setPid(rs.getString("pid"));
					pob.setPrice(rs.getString("price"));
					pob.setPaymenttype(rs.getString("paymenttype"));
					pob.setOpstatus(rs.getString("opstatus"));
					pob.setProducttitle(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					pob.setProdimg1(rs2.getString("prodimg1"));
	
				}
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	
	public static PurchaseOrderBean getPurchaseOrderRecordByReceipantIdAndPid(String userid, String pid)
	{
		PurchaseOrderBean pob = new PurchaseOrderBean();
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select parcelid, pid, price, paymenttype, opstatus from orderparcel where senderid = '"+userid+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, pid, referenceno, price, paymenttype, opstatus from orderparcel where receipantid = ? AND parcelid = ?");
			ps.setString(1, userid); 
			ps.setString(2, pid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				System.out.println(rs.getString("referenceno"));
/*				System.out.println(rs.getString("pid"));
				System.out.println(rs.getString("price"));
				System.out.println(rs.getString("paymenttype"));
				System.out.println(rs.getString("opstatus"));*/
				
				PreparedStatement ps2= con.prepareStatement("select productname, productsubtitle, prodimg1 from products where pid = ?");
				ps2.setString(1, rs.getString("pid"));
				
				ResultSet rs2 = ps2.executeQuery(); 
				
				if(rs2.next())
				{
/*					System.out.println(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					System.out.println(rs2.getString("prodimg1"));
					*/
					pob.setReferenceno(rs.getString("referenceno"));
					pob.setParcelid(rs.getString("parcelid"));
					pob.setPid(rs.getString("pid"));
					pob.setPrice(rs.getString("price"));
					pob.setPaymenttype(rs.getString("paymenttype"));
					pob.setOpstatus(rs.getString("opstatus"));
					pob.setProducttitle(rs2.getString("productsubtitle").equals("undefined")?rs2.getString("productname"):rs2.getString("productname") +" - "+rs2.getString("productsubtitle"));
					pob.setProdimg1(rs2.getString("prodimg1"));
	
				}
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	

	public static List<OrderBean> getOrderRecordById(String userid)
	{
		List<OrderBean> lob=new ArrayList<OrderBean>(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select parcelid, receipantname, receipantcontact, pid, price, qty from orderparcel where senderid = '"+userid+"'");
			PreparedStatement ps= con.prepareStatement("select parcelid, receipantname, receipantcontact, pid, price, qty, date_created, opstatus, referenceno from orderparcel where senderid = ? AND opstatus != 'Decline By Seller' ORDER BY date_created desc");
			ps.setString(1, userid); 
			 
			ResultSet rs = ps.executeQuery(); 
			
			while(rs.next())
			{
				OrderBean ob = new OrderBean();
				ob.setPid(rs.getString("pid")); 
				ob.setOrderid(rs.getString("parcelid"));
				ob.setReferenceno(rs.getString("referenceno"));
				ob.setReceipantname(rs.getString("receipantname"));
				ob.setMobileno(rs.getString("receipantcontact"));
				ob.setProductname(ProductDao.getProductNameById(rs.getString("pid")));
				ob.setPrice(rs.getString("price"));
				ob.setQty(rs.getString("qty"));
				ob.setDate_created(rs.getString("date_created"));
				ob.setOpstatus(rs.getString("opstatus"));  
//	System.out.println(rs.getString("parcelid") + " :: " + rs.getString("receipantname") + " :: " + rs.getString("receipantcontact") + " :: " + ProductDao.getProductNameById(rs.getString("pid")) + " :: " + rs.getString("price") + " :: " + rs.getString("qty"));				
				lob.add(ob);
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return lob;
	}
	
	public static PlaceOrderBean getOrderDetailByUserIdAndPId(String referenceno, String pid)
	{
		PlaceOrderBean pob = new PlaceOrderBean(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = '"+referenceno+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = ? AND pid = ?");
			ps.setString(1, referenceno); 
			ps.setString(2, pid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				pob.setReceipantname(rs.getString("receipantname"));
				pob.setReceipantaddress(rs.getString("receipantaddress"));
				pob.setReceipantcontact(rs.getString("receipantcontact"));
			}
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	
	public static PlaceOrderBean getOrderDetailByUserIdAndOrderId(String referenceno, String orderid)
	{
		PlaceOrderBean pob = new PlaceOrderBean(); 
		
		try {
			Connection con = DBConnection.getConnection();
			
//			System.out.println("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = '"+referenceno+"' AND pid = '"+pid+"'");
			PreparedStatement ps= con.prepareStatement("select receipantname, receipantaddress, receipantcontact from orderparcel where referenceno = ? AND parcelid = ?");
			ps.setString(1, referenceno); 
			ps.setString(2, orderid);
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				pob.setReceipantname(rs.getString("receipantname"));
				pob.setReceipantaddress(rs.getString("receipantaddress"));
				pob.setReceipantcontact(rs.getString("receipantcontact"));
			}
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return pob;
	}
	
	public static int orderApprovedBySender(String key)
	{
		int status = 0;
		
		try{

			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("update orderparcel set opstatus = ? where parcelid = ?");
			 ps.setString(1, "Approved By Seller");
			 ps.setString(2, key);
			 
			 
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
	
	public static int orderDeclineBySender(String key)
	{
		int status = 0;
		
		try{

			 Connection con = DBConnection.getConnection();
			 PreparedStatement ps = con.prepareStatement("update orderparcel set opstatus = ? where parcelid = ?");
			 ps.setString(1, "Decline By Seller");
			 ps.setString(2, key);
			 
			 
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
	
	public static String getShopNameByOrderId(String orderid)
	{
		String shopname = null;
		
		try {
			Connection con = DBConnection.getConnection();
			
			PreparedStatement ps= con.prepareStatement("select sendername from orderparcel where parcelid = ?");
			ps.setString(1, orderid); 
			   
			ResultSet rs = ps.executeQuery(); 
			 
			if(rs.next())
			{
				shopname = rs.getString("sendername");
			}
			
			ps.close();
			con.close();
		}
		catch (Exception e) {
			e.printStackTrace();
		}	
		
		return shopname;
	}
	
}

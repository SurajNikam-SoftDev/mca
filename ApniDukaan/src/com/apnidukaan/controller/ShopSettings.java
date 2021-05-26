package com.apnidukaan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaan.bean.ShopBean;
import com.apnidukaan.dao.ShopDao;

/**
 * Servlet implementation class ShopSettings
 */
@WebServlet("/ShopSettings")
public class ShopSettings extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ShopSettings() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("shopsettings.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
		// TODO Auto-generated method stub
		
		
		/*
		 * String shopname = request.getParameter("shopname"); String ownername =
		 * request.getParameter("ownername"); String shopcontact =
		 * request.getParameter("shopcontact"); int prepaiddiscount =
		 * Integer.parseInt(request.getParameter("prepaiddiscount")); String about =
		 * request.getParameter("about"); String photo = "Photo";
		 * 
		 * ShopBean sb = new ShopBean(); sb.setShopname(shopname);
		 * sb.setOwnername(ownername); sb.setShopcontact(shopcontact);
		 * sb.setPrepaiddiscount(prepaiddiscount); sb.setAbout(about);
		 * sb.setPhoto(photo);
		 * 
		 * int status; try {
		 * 
		 * status = ShopDao.save(sb); if(status == 1) { //save //
		 * request.getSession(true).setAttribute("error", 1);
		 * System.out.println("Data Is Inserted"); response.sendRedirect("Shop");
		 * 
		 * } else { //is not save // request.getSession(true).setAttribute("error", 2);
		 * System.out.println("Data Is Not Inserted"); response.sendRedirect("Shop"); }
		 * } catch (Exception e) { // TODO Auto-generated catch block
		 * e.printStackTrace(); }
		 */
			
		
		
	}

}

package com.apnidukaan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apnidukaan.dao.AddressDao;
import com.apnidukaan.dao.PlaceOrderDao;
import com.apnidukaan.dao.UserDao;

/**
 * Servlet implementation class PlaceOrder
 */
@WebServlet("/PlaceOrder")
public class PlaceOrder extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PlaceOrder() {
        super();
        // TODO Auto-generated constructor stub
    }

	/** 
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("placeorder.jsp").forward(request, response); 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String key = request.getParameter("key") != null || request.getParameter("key") != ""
				? request.getParameter("key")
				: "undefined";
		key = key.isEmpty() ? "undefined" : key; 
		
		
		String qtyprice = request.getParameter("qtyprice") != null
				|| request.getParameter("qtyprice") != "" ? request.getParameter("qtyprice")
						: "undefined";
		qtyprice = qtyprice.isEmpty() ? "undefined" : qtyprice;
		
		
		String qty = request.getParameter("qty") != null || request.getParameter("qty") != ""
				? request.getParameter("qty")
				: "undefined";
		qty = qty.isEmpty() ? "undefined" : qty;
		
		
		String paymentcategory = request.getParameter("paymentcategory") != null || request.getParameter("paymentcategory") != ""
				? request.getParameter("paymentcategory")
				: "undefined";
		paymentcategory = paymentcategory.isEmpty() ? "undefined" : paymentcategory;
		
		
		String address = request.getParameter("address") != null || request.getParameter("address") != ""
				? request.getParameter("address")
				: "undefined";
		
		HttpSession session=request.getSession(false); 
		String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
		System.out.println(key +" :: "+qtyprice +" :: "+qty +" :: "+paymentcategory +" :: "+address +" :: "+userid);
//		16 :: 399.00 :: 1 :: Cash On Delivery :: sadashiv peth, tilak road, sp college, Maharashtra, Pune, 411002 :: 4
		
		
		int status = PlaceOrderDao.preserve(key, qtyprice, qty, paymentcategory, address, userid);
		
		if (status == 1) {
			response.sendRedirect("./Home");
		} else {
			response.sendRedirect("./PlaceOrder?key="+key); 
		}
		 
	}

}

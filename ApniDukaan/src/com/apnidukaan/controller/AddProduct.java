package com.apnidukaan.controller;

import java.io.IOException;


import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apnidukaan.bean.ProductBean;
import com.apnidukaan.dao.ProductDao;
import com.apnidukaan.dao.UserDao;





/**
 * Servlet implementation class AddProduct
 */
@WebServlet("/AddProduct")
@MultipartConfig
public class AddProduct extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProduct() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("addproduct.jsp").forward(request, response);
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		 
		/*
		  	productname productsubtitle productprice category cashondelivery allowreturn
		 	height weight width length stock returnperiod description files
		*/
		 
		
		String productname = request.getParameter("productname") != null || request.getParameter("productname") != ""
				? request.getParameter("productname")
				: "undefined";
		productname = productname.isEmpty() ? "undefined" : productname; 

		String productsubtitle = request.getParameter("productsubtitle") != null || request.getParameter("productsubtitle") != ""
				? request.getParameter("productsubtitle")
				: "undefined";
		productsubtitle = productsubtitle.isEmpty() ? "undefined" : productsubtitle;

		String productprice = request.getParameter("productprice") != null || request.getParameter("productprice") != ""
				? request.getParameter("productprice")
				: "undefined";
		productprice = productprice.isEmpty() ? "undefined" : productprice;

		String category = request.getParameter("category") != null
				|| request.getParameter("category") != "" ? request.getParameter("category")
						: "undefined";
		category = category.isEmpty() ? "undefined" : category;

		String cashondelivery = request.getParameter("cashondelivery") != null || request.getParameter("cashondelivery") != ""
				? request.getParameter("cashondelivery")
				: "undefined";
		cashondelivery = cashondelivery.isEmpty() ? "undefined" : cashondelivery;
		
		String allowreturn = request.getParameter("allowreturn") != null || request.getParameter("allowreturn") != ""
				? request.getParameter("allowreturn")
				: "undefined";
		allowreturn = allowreturn.isEmpty() ? "undefined" : allowreturn;
		
		String height = request.getParameter("height") != null || request.getParameter("height") != ""
				? request.getParameter("height")
				: "undefined";
		height = height.isEmpty() ? "undefined" : height; 

		String weight = request.getParameter("weight") != null || request.getParameter("weight") != ""
				? request.getParameter("weight")
			: "undefined";
				weight = weight.isEmpty() ? "undefined" : weight;

		String width = request.getParameter("width") != null || request.getParameter("width") != ""
				? request.getParameter("width")
				: "undefined"; 
		width = width.isEmpty() ? "undefined" : width;

		String length = request.getParameter("length") != null
				|| request.getParameter("length") != "" ? request.getParameter("length")
						: "undefined";
		length = length.isEmpty() ? "undefined" : length;

		String stock = request.getParameter("stock") != null || request.getParameter("stock") != ""
				? request.getParameter("stock")
				: "undefined";
		stock = stock.isEmpty() ? "undefined" : stock;
		
		String returnperiod = request.getParameter("returnperiod") != null || request.getParameter("returnperiod") != ""
				? request.getParameter("returnperiod")
				: "undefined";
		returnperiod = returnperiod.isEmpty() ? "undefined" : returnperiod;
		
		String description = request.getParameter("description") != null || request.getParameter("description") != ""
				? request.getParameter("description")
				: "undefined";
		description = description.isEmpty() ? "undefined" : description;
		 
		 
//		System.out.println(productname + " :: " +productsubtitle+ " :: " +productprice+ " :: " +category+ " :: " +cashondelivery+ " :: " +allowreturn+ " :: " +height+ " :: " +weight+ " :: " +width+ " :: " +length+ " :: " +stock+ " :: " +returnperiod+ " :: " +description);
		
		/*
		 * productname + " :: " +productsubtitle+ " :: " +productprice+ " :: "
		 * +category+ " :: " +cashondelivery+ " :: " +allowreturn+ " :: " +height+
		 * " :: " +weight+ " :: " +width+ " :: " +length+ " :: " +stock+ " :: "
		 * +returnperiod+ " :: " +description
		 */
		
		ProductBean pb = new ProductBean();
 		pb.setProductname(productname);
		pb.setProductsubtitle(productsubtitle);
		pb.setProductprice(productprice);
		pb.setCategory(category);
		pb.setCashondelivery(cashondelivery);
		pb.setAllowreturn(allowreturn);
		pb.setHeight(height);
		pb.setWeight(weight);
		pb.setWidth(width);
		pb.setLength(length);
		pb.setStock(stock);
		pb.setReturnperiod(returnperiod);
		pb.setDescription(description);
		
		HttpSession session=request.getSession(false); 
//		System.out.println(session.getAttribute("emailid").toString());
		String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
		pb.setUserid(userid);

		
		session.setAttribute("ProductBeanDetails", pb); 
		//System.out.println("session set succesfully");
		response.sendRedirect("./ProductImageUpload");
		
	}
	
	

}

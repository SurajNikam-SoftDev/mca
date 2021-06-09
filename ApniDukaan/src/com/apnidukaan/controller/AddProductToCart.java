package com.apnidukaan.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apnidukaan.dao.AddProductToCardDao;
import com.apnidukaan.dao.AddressDao;
import com.apnidukaan.dao.UserDao;

/**
 * Servlet implementation class AddProductToCart
 */
@WebServlet("/AddProductToCart")
public class AddProductToCart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddProductToCart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String key = request.getParameter("key") != null || request.getParameter("key") != ""
				? request.getParameter("key")
				: "undefined";
		key = key.isEmpty() ? "undefined" : key; 

		HttpSession session2=request.getSession(false); 
		String userid = UserDao.getUserIdByEmail(session2.getAttribute("emailid").toString());
		System.out.println("User id :: "+userid);
		int status = AddProductToCardDao.save(key, userid);
		
		if (status == 1) {
			response.sendRedirect("./AddToCart");
		} else {
			response.sendRedirect("./Home");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

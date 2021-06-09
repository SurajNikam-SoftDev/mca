package com.apnidukaan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.apnidukaan.bean.UserBean;
import com.apnidukaan.dao.UserDao;

/**
 Servlet implementation class ShopSettings
 */
@WebServlet("/ShopSettings")
public class ShopSettings extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 @see HttpServlet#HttpServlet()
	 */
	public ShopSettings() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("shopsettings.jsp").forward(request, response);
	}

	/**
	 @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	      response)
	 */ 
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub

		String shopname = request.getParameter("shopname") != null || request.getParameter("shopname") != ""
				? request.getParameter("shopname")
				: "undefined";
		shopname = shopname.isEmpty() ? "undefined" : shopname; 

		String ownername = request.getParameter("ownername") != null || request.getParameter("ownername") != ""
				? request.getParameter("ownername")
				: "undefined";
		ownername = ownername.isEmpty() ? "undefined" : ownername;

		String contactno = request.getParameter("contactno") != null || request.getParameter("contactno") != ""
				? request.getParameter("contactno")
				: "undefined";
		contactno = contactno.isEmpty() ? "undefined" : contactno;

		String prepaiddiscount = request.getParameter("prepaiddiscount") != null
				|| request.getParameter("prepaiddiscount") != "" ? request.getParameter("prepaiddiscount")
						: "undefined";
		prepaiddiscount = prepaiddiscount.isEmpty() ? "undefined" : prepaiddiscount;

		String about = request.getParameter("about") != null || request.getParameter("about") != ""
				? request.getParameter("about")
				: "undefined";
		about = about.isEmpty() ? "undefined" : about;
		
		String emailid = request.getParameter("emailid") != null || request.getParameter("emailid") != ""
				? request.getParameter("emailid")
				: "undefined";
		emailid = emailid.isEmpty() ? "undefined" : emailid;

		String photo = "undefined";

		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		UserBean ub = new UserBean();
		ub.setShopname(shopname);
		ub.setName(ownername);
		ub.setContact(contactno);
		ub.setPrepaiddiscount(prepaiddiscount);
		ub.setAbout(about);
		ub.setEmailid(emailid);
		ub.setShopphoto(photo);
		
		
		int status = UserDao.update(ub);

		if (status == 1) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Inserted');");
			out.println("</script>");
			response.sendRedirect("./ShopSettings");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data Is Not Inserted');");
			out.println("</script>");
			response.sendRedirect("./ShopSettings");
		}
		 

	}

}

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
 * Servlet implementation class SignUp
 */
@WebServlet("/SignUp")
public class SignUp extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUp() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("signup.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		response.setContentType("text/html;charset=UTF-8");
		PrintWriter out = response.getWriter();
		
		String firstname = request.getParameter("first_name");
		String middlename = request.getParameter("middle_name");
		String lastname = request.getParameter("last_name");
		String emailid = request.getParameter("email_id");
		String contactnumber = request.getParameter("contact_number");
		String password = request.getParameter("confirm_password");

		System.out.println(firstname + " :: " + middlename + " :: " + lastname + " :: " + emailid + " :: "
				+ contactnumber + " :: " + password);

		UserBean ub = new UserBean();
		ub.setName(firstname + " " + middlename + " " + lastname);
		ub.setEmailid(emailid);
		ub.setUserpassword(password);
		ub.setContact(contactnumber);

		int status = UserDao.save(ub);
		if (status == 1) {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data is Inserted');");
			out.println("</script>");
			response.sendRedirect("LogIn");
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Data is Not Inserted');");
			out.println("</script>");
			response.sendRedirect("SignUp");
		}
		
	}
	

}

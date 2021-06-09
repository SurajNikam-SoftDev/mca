package com.apnidukaan.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.apnidukaan.bean.BankBean;
import com.apnidukaan.dao.BankDao;
import com.apnidukaan.dao.UserDao;

/**
 * Servlet implementation class BankDetail
 */
@WebServlet("/BankDetail")
public class BankDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BankDetail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.getRequestDispatcher("bankdetail.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		/*
		 * 
		 * 	accountno confirmaccountnumber accountholdername ifsccode
		 */
		String accountno = request.getParameter("accountno") != null || request.getParameter("accountno") != ""
				? request.getParameter("accountno")
				: "undefined";
		accountno = accountno.isEmpty() ? "undefined" : accountno; 
		
		String accountholdername = request.getParameter("accountholdername") != null || request.getParameter("accountholdername") != ""
				? request.getParameter("accountholdername")
				: "undefined";
		accountholdername = accountholdername.isEmpty() ? "undefined" : accountholdername; 
		
		String ifsccode = request.getParameter("ifsccode") != null || request.getParameter("ifsccode") != ""
				? request.getParameter("ifsccode")
				: "undefined";
		ifsccode = ifsccode.isEmpty() ? "undefined" : ifsccode; 
		
		HttpSession session=request.getSession(false); 
		String userid = UserDao.getUserIdByEmail(session.getAttribute("emailid").toString());
		
		BankBean bb = new BankBean();
		bb.setAccountno(accountno);
		bb.setHoldername(accountholdername);
		bb.setIFSCCode(ifsccode);
		bb.setUserid(userid);
		
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		
		int status = BankDao.save(bb) ;
		if (status == 1) {
			//out.println("Data Inserted");
			out.println("<script type='text/javascript'>");
		    out.println("alert('Data Is Inserted');");
		    out.println("</script>");
			response.sendRedirect("./Account");
		} else {
			out.println("<script type='text/javascript'>");
		    out.println("alert('Data Is Not Inserted');");
		    out.println("</script>");
			response.sendRedirect("./BankDetail");
		}
	}

}

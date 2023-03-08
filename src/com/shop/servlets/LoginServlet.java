package com.shop.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Customer;
import dao.CustomerDao;

//@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public LoginServlet() {
        super();     
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");				
		
		String email = request.getParameter("txt_email");
		String password = request.getParameter("txt_pwd");
		
		Customer customer = new Customer();
		customer.setEmail(email);		
		
		CustomerDao customer_dao = new CustomerDao();
		Customer cust = customer_dao.checkCustomerLogin(customer); 
			if(cust != null && cust.getEmail() != null && cust.getPassword().equals(password)) {
				//HttpSession session = request.getSession();
				//session.setAttribute("email",cust.getEmail());
				//session.setAttribute("password",cust.getPassword());
				response.sendRedirect("Welcome.jsp");
			}else {
				//out.println("Login Failed");
				request.setAttribute("login_fail"," Enter Correct UserName / Password. ");
				request.getRequestDispatcher("index.jsp").forward(request, response);
		}		
	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

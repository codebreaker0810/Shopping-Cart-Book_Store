package com.shop.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Customer;
import dao.CustomerDao;


//@WebServlet("/AddCustomerServlet")
public class AddCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    public AddCustomerServlet() {
        super();
      
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String mobile = request.getParameter("txt_mobile");
		String password = request.getParameter("txt_pwd");
		String email = request.getParameter("txt_email");
		String address = request.getParameter("txt_address");
		String city = request.getParameter("txt_city");
		String pin = request.getParameter("txt_pin");
		
		Customer customer = new Customer(0, mobile, password, email, address, city, pin);
		
		CustomerDao customer_dao = new CustomerDao(); 
				
		if(customer_dao.addCustomer(customer) != 0) {
			String msg="Registration success with email id " + email;
			request.setAttribute("register_msg", msg);
			request.getRequestDispatcher("index.jsp").include(request, response);
		}else {
			out.println("Error ! Adding Customer");
		} 
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}

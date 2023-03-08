package com.shop.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Order;
import dao.OrderDao;

//@WebServlet("/ConfirmOrderServlet")
public class ConfirmOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ConfirmOrderServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		
		String btn_name = request.getParameter("btn_confirm");
		if(btn_name.equals("Confirm")) {
			int book_id = Integer.parseInt(request.getParameter("txt_id"));
			int book_quantity  = Integer.parseInt(request.getParameter("txt_qty"));
			
			String customer_name = request.getParameter("txt_cname");
			String customer_address = request.getParameter("txt_address");
			String phone = request.getParameter("txt_phone");	
			
			DateFormat sdf  = new SimpleDateFormat("dd-MM-yyyy");
			
			Date date= new Date();
			String order_date = sdf.format(date);
			
			Order order = new Order(1, customer_name, phone, customer_address, book_quantity, book_id, order_date);
			OrderDao order_dao = new OrderDao();
			if(order_dao.addOrder(order)!= 0) {
				response.sendRedirect("Order_Success.jsp");
			}else {
				out.println("Order Not Placed");
			}
			
		}else {
			response.sendRedirect("Welcome.jsp");
		}
		
		
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
		doGet(request, response);
	}

}

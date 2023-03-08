package com.shop.servlets;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Book;
import dao.BookDao;

//@WebServlet("/PurchaseOrderServlet")
public class PurchaseOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public PurchaseOrderServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String btn_name = request.getParameter("purchase");

		if (btn_name.equals("Purchase")) {
			int book_id = Integer.parseInt(request.getParameter("txt_id"));
			// int book_qty = Integer.parseInt(request.getParameter("txt_qty"));

			BookDao book_dao = new BookDao();
			Book book = book_dao.getBookById(book_id);

			request.setAttribute("book_info", book);
			request.getRequestDispatcher("OrderDetails.jsp").forward(request, response);
		} else {
			response.sendRedirect("Welcome.jsp");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}

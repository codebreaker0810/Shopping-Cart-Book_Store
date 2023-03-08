<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Book" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order</title>
<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div class="container-fluid">
<%
	Book book = (Book)request.getAttribute("book_info");	
	if(book != null)
	{
		int book_qty = Integer.parseInt(request.getParameter("txt_qty"));	
%>
	<div class="col-sm-5">
		<div class="panel panel-primary">
			<div class="panel-heading text-center">
				<b class="text-uppercase">Customer Details</b>
			</div>
			<div class="panel-body">
				<form action="./order">
				<input type="hidden" value="<%= book.getB_id() %>" name="txt_id"/>
				<input type="hidden" value="<%= book_qty %>" name="txt_qty"/>
					<div class="form-group">
						<label>Customer Name</label>
						<input type="text" class="form-control" name="txt_cname"/>
					</div>
					<div class="form-group">
						<label>Customer Address</label>
						<textarea class="form-control" cols="10" rows="3" name="txt_address"></textarea>
					</div>
					<div class="form-group">
						<label>phone</label>
						<input type="text" class="form-control" name="txt_phone"/>
					</div>
					<center><button class="btn btn-success" value="Confirm" name="btn_confirm">Confirm</button> 
					<button class="btn btn-danger">Cancel</button></center>
				</form>
			</div>
		</div>
	</div>	
	
	<div class="col-sm-7">
		<div class="panel panel-primary">
			<div class="panel-heading text-center">
				<b class="text-uppercase">Order Details</b>
			</div>
			<div class="panel-body">
				<table class="table table-bordered table-hover table-responsive">
					<tr class="bg-success">
						<th>Book Name</th>
						<th>Author Name</th>
						<th>Book Price</th>
						<th>Book Quantity</th>
						<th>Total Price</th>
					</tr>
					<tr>
						<td><%= book.getB_name() %></td>
						<td><%= book.getB_author() %></td>
						<td><%= book.getB_price() %></td>
						<td><%= book_qty %></td>
						<th class="bg-info text-danger text-center"><%= book.getB_price()*book_qty %></th>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<% } %>
</div>
</body>
</html>
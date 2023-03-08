<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="bean.Book" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Purchase</title>
<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<%
	Book book = (Book)request.getAttribute("book_info");
	if(book != null){
%>
<div class="container-fluid">
	<div class="col-sm-4">
		<div class="panel panel-primary">
			<div class="panel-heading text-center">
				<b class="text-uppercase">Purchase Details</b>
			</div>
			<div class="panel-body">
				<form action="./confirm">
					<input type="hidden" value="<%= book.getB_id() %>" name="txt_id"/>
					<div class="form-group bg-info">
						<label class="text-danger">Book Name : </label>
						<label class="text-success"><%= book.getB_name() %></label>
					</div>
					<div class="form-group bg-warning">
						<label class="text-danger">Author : </label>
						<label class="text-success"><%= book.getB_author() %></label>
					</div>
					<div class="form-group bg-info">
						<label class="text-danger">Book Price : </label>
						<label class="text-success"><%= book.getB_price() %></label>
					</div>
					<div class="form-group bg-warning">
						<label class="text-danger">Quantity : </label>
						<input type="number" placeholder="Enter Quantity" name="txt_qty" class="form-control" required/>						
					</div>
					<center><button class="btn btn-success" value="Purchase" name="purchase">Purchase</button> 
					<button class="btn btn-danger">Cancel</button></center>
				</form>
			</div>
		</div>
	</div>
</div>
<% 		
	}
%>
</body>
</html>
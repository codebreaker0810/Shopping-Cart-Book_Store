<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="dao.BookDao,java.util.*,bean.Book" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link href="bootstrap/css/bootstrap.min.css" type="text/css" rel="stylesheet"/>
<style>
img:hover{
	opacity:0.2px;
}
.book{
	background-color: cadetblue;
}
.book:hover{
	background-color:green;
}
</style>
</head>
<body class="bg-warning">
<div class="container-fluid">
	<!--  <table class="table table-bordered table-responsive table-hover">
		<tr>
			<th>Book ID</th>
			<th>Book Name</th>
			<th>Author</th>
			<th>Book Price</th>
		</tr> -->
		<%
			if(session != null){
				out.println("ID : " + session.getId());
				String names[] = session.getValueNames();
				for(String nm : names){
					out.println("names : " + nm);
				}
		%>
		<div class="col-sm-12">
		<h3 style="background-color: green;color:white;padding:2px;" class="text-capitalize text-center">Welcome to online shopping cart</h3>
		</div>
		<%
			BookDao book = new BookDao();
			List<Book> book_list = book.getAllBookList();
			for(Book bk : book_list){
				%>
					<div class="col-sm-4" style="border:1px solid white;padding-left: 0px;padding-right: 0px;">
						<center><img src="bookImg/Desert.jpg" class="img-responsive img-rounded" style="height:150px;width:150px;"/></center>
							<div class="col-sm-6 text-justify text-nowrap" style="padding-left: 10px;color: crimson;font-family: monospace;">							
							<%= bk.getB_author() %>
							</div>
							<div class="col-sm-6" style="text-align:right;color: crimson;">
							<b>Rs. <%= bk.getB_price() %></b>
							</div>
						<hr style="margin-bottom: 0px;padding-right: 10px;"/>
						<div class="col-sm-12 book" style="padding:8px;color:white;border-radius: 20px;">						
						<center><a style="color:white;font-weight: bold;font-family: -webkit-body;" href="./cart?bk_id=<%= bk.getB_id() %>"><%= bk.getB_name() %></a></center>
						</div>
					</div>							
				<% 
			}			
		%>
	<%
			}else{
				out.println("Please Login First");
				//response.sendRedirect("index.jsp");
			}
	%>
	
</div>
</body>
</html>
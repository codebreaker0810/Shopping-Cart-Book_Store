 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>!Home</title>
<link href="bootstrap/css/bootstrap.min.css" type="text/css"
	rel="stylesheet" />
<script src="bootstrap/js/jquery.min.js" type="text/javascript"></script>
<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
<style>
.panel {
background-color: transparent;
margin-bottom: 0px;
}
.panel-primary {
border-color: white;
}
</style>
</head>
<body>
	<div class="container-fluid">
		<div class="navbar navbar-default" style="margin-bottom: 4px;">
			<div class="navbar-header">
				<a href="#" class="navbar-brand">BookStore</a>
				<button class="navbar-toggle" data-toggle="collapse"
					data-target="#mynav">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="mynav">
				<ul class="nav navbar-nav">
					<li class="active"><a href="#"><span
							class="glyphicon glyphicon-home"></span> Home</a></li>
					<li><a href="#">AboutUs</a></li>
					<li><a href="#">Services</a></li>
					<li><a href="#">ContactUs</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#login" data-toggle="modal"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="#register" data-toggle="modal"><span class="glyphicon glyphicon-user"></span>
							Register</a></li>
				</ul>
			</div>
		</div>
		<div class="carousel slide" data-ride="carousel" id="mycar">
		
		<ol class="carousel-indicators">
			<li class="active" data-target="#mycar" data-slide-to="0"></li>
			<li data-target="#mycar" data-slide-to="1"></li>
			<li data-target="#mycar" data-slide-to="2"></li>
			<li data-target="#mycar" data-slide-to="3"></li>
			<li data-target="#mycar" data-slide-to="4"></li>
		</ol>
		<div class="carousel-inner">
			<div class="item active">
				<img src="bookImg/b2.jpg" class="img-responsive" style="width:100%;height:400px"/>
			</div>
			<div class="item">
				<img src="bookImg/b3.jpg" class="img-responsive" style="width:100%;height:400px"/>
			</div>
			<div class="item">
				<img src="bookImg/n1.jpg" class="img-responsive" style="width:100%;height:400px"/>
			</div>
			<div class="item">
				<img src="bookImg/n2.jpg" class="img-responsive" style="width:100%;height:400px"/>
			</div>
			<div class="item">
				<img src="bookImg/n3.jpg" class="img-responsive" style="width:100%;height:400px"/>
			</div>
		</div>
		<a class="left carousel-control" data-slide="prev" href="#mycar">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" data-slide="next" href="#mycar">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a>
		</div>
	</div>

	<div class="modal fade" id="login">
		<div class="modal-dialog">
			<div class="modal-content" style="background-image:url('bookImg/login.jpg');opacity: 0.8;">
				<div class="modal-body">
					<div class="col-sm-12">
					<% 
					  String register_msg = (String)request.getAttribute("register_msg");
					  String Login_msg = (String)request.getAttribute("login_fail");
					if(register_msg != null){
					%>
					<script>
					$(document).ready(function(){
						$("#login").modal('show');
					});					
					</script>
						<b class="text-center text-uppercase" style="color:white"><%= register_msg %></b>
					<% }else if(Login_msg != null){
						%>
						<script>
						$(document).ready(function(){
							$("#login").modal('show');
						});					
					</script>
						<b class="text-center text-uppercase" style="color:white"><%= Login_msg %></b>
					<% }%>
						<div class="panel panel-primary">							
							<div class="panel-body">
							<div class="col-sm-2"></div>
								<div class="col-sm-8">
								<div class="col-sm-12">
									<div class="col-sm-4"></div>
									<div class="col-sm-4">
										<img src="bookImg/login_logo.png" style="border-radius: 50%;height: 125px;width: 125px;"/>
										<center><b style="color:white;font-size: 22px;">User Login</b></center>
									</div>
									<div class="col-sm-4"></div>
								</div>
									<form action="./login">
										<div class="input-group form-group">
											<span class="input-group-addon">
											 <span class="glyphicon glyphicon-user"></span>
											</span> <input type="email" name="txt_email"  required class="form-control"	placeholder="Enter Email" />
										</div>
										<div class="input-group form-group">
											<span class="input-group-addon"> 
											<span class="glyphicon glyphicon-lock"></span>
											</span><input type="password" name="txt_pwd" required class="form-control" placeholder="Enter Password" />
										</div>
										<center><button class="btn btn-success">Login</button>
										<button class="btn btn-danger" data-dismiss="modal">Close</button></center>
									</form>
								</div>
								<div class="col-sm-2"></div>								
							</div>
							
						</div>

					</div>
				</div>
				<div class="modal-footer" style="border-top: none;"></div>
			</div>
		</div>

	</div>
	
	<div class="modal fade" id="register">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-body">
					<div class="panel-primary">
						<div class="panel-body">
							<div class="col-sm-12">
								<form class="form-horizontal" action="./addCustomer">
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">Mobile</label>											
										</div>
										<div class="col-sm-8">
											<input type="text" name="txt_mobile" class="form-control"/>											
										</div>										
									</div>
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">Password</label>											
										</div>
										<div class="col-sm-8">
											<input type="text" name="txt_pwd" class="form-control"/>											
										</div>										
									</div>
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">email</label>											
										</div>
										<div class="col-sm-8">
											<input type="email" name="txt_email" class="form-control"/>											
										</div>										
									</div>
									
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">City</label>											
										</div>
										<div class="col-sm-8">
											<input type="text" name="txt_city" class="form-control"/>											
										</div>										
									</div>
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">Pin</label>											
										</div>
										<div class="col-sm-8">
											<input type="text" name="txt_pin" class="form-control"/>											
										</div>										
									</div>
									<div class="form-group">
										<div class="col-sm-4">
											<label class="control-label">Address</label>											
										</div>
										<div class="col-sm-8">
											<textarea name="txt_address" cols="10" rows="3" class="form-control"></textarea>											
										</div>										
									</div>
									<center><button class="btn btn-primary">Register</button>
									<button class="btn btn-danger" data-dismiss="modal">Close</button>
									</center>
									
								</form>
							</div>
						</div>					
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
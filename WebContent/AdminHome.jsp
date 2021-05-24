<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>

 <%
		if(admin!=null && admin.getAdminId()>0){
%>
    <%@ include file="cache_control.jsp"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid">
	
		<!-- <div class="d-flex flex-column jumbotron justify-content-center align-items-center bg-info" style="height:8vh">
			<h3>Admin Home</h3>
		</div> -->
		<div >
		<div class="row align-items-center bg-info" style="height:12vh">
			<div class="col-8 text-light" style="font-size:32px;font-weight: bolder;">Bus Reservation System</div>
			<div class="col-3 text-light" style="font-size:22px;font-weight: bold;">Admin Home</div>
			 <a href="Logout.jsp" class="btn btn-danger my-2 my-sm-0" style="font-size: 1 rem">Logout</a>
   			</div>
		
		<div class="row" style="background:url(images/bus1.jpg)center no-repeat;background-size:cover;height:88vh;width:102%" >
			
			<div class="col-md-3 col-12">
				 
			</div>
			
			<div class="col-md-6 col-12">
			
				
				<div class="row justify-content-center" style="margin-top: 80px">
					
					<div class="col-4 row justify-content-center">
						<a class="btn btn-lg btn-success" href="AddBusForm.jsp" style="text-decoration: none;">Add Buses</a>
					</div>
					
					<div class="col-4 row justify-content-center">
						<a class="btn btn-lg btn-success" href="#" style="text-decoration: none;">User Details</a>
					</div>
					
					
					<div class="col-4 row justify-content-center">
						<a class="btn btn-lg btn-success" href="ListBusForm.jsp" style="text-decoration: none;">Show Buses</a>
					</div>
					
				</div>

			</div>
			
			<div class="col-md-3 col-12 justify-content-end align-items-end">
				
			</div> 
			
		</div>
</div>	
</body>
</html>
<%
		}else{
			response.sendRedirect("AdminLogin.jsp");
		}
%>

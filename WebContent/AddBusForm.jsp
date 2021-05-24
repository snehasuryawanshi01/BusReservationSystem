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
<title>Add Buses</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>

	<div class="container-fluid">
	
		<div class="row d-flex justify-content-center align-items-center bg-info" style="height: 12vh">
			<h2 style="color: white">ADD BUSES</h2>
		</div>
		
		<div class="row">
			
			<div class="col-3">
				<td><a class="btn btn-dark btn-md mt-4" href="AdminHome.jsp">Back</a></td>
			</div>
			
			<div class="col-6">
					<form action="AddBus.jsp">
	
				  		<div class="form-group">
				    		
				    		<input type="hidden" class="form-control" name="busId" id="formGroupExampleInput" placeholder="Enter Id" disabled>
				  		</div>
				  		
				  		<div class="form-group">
				    		<label for="formGroupExampleInput2">From : </label>
				    		<input type="text" class="form-control" name="source" id="formGroupExampleInput2" placeholder="Enter Source">
				 		</div>
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">To : </label>
				    		<input type="text" class="form-control" name="destination" id="formGroupExampleInput2" placeholder="Enter Destination">
				 		</div>
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">Date : </label>
				    		<input type="text" class="form-control" name="date" id="formGroupExampleInput2" placeholder="YYYY-MM-DD">
				 		</div> 		
				 		
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">Time : </label>
				    		<input type="text" class="form-control" name="time" id="formGroupExampleInput2" placeholder="HH:MM ">
				 		</div>
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">No of Available Seats : </label>
				    		<input type="number" class="form-control" name="availableSeats" id="formGroupExampleInput2" placeholder="Enter Available Seats">
				 		</div>
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">Booked Seats : </label>
				    		<input type="number" class="form-control" name="bookedSeats" id="formGroupExampleInput2" placeholder="Enter Booked Seats">
				 		</div>
				 		
				 		<div class="form-group">
				    		<label for="formGroupExampleInput2">Amount : </label>
				    		<input type="number" class="form-control" name="amount" id="formGroupExampleInput2" placeholder="Enter amount">
				 		</div>
				 		
				 		<button type="submit" class="btn btn-primary">Submit</button>
 		
					</form>
			</div>
			
			<div class="col-3 ">
				<div class=" row mr-1 mt-4 justify-content-end">
					<a href="Logout.jsp" class="btn btn-danger my-2 my-sm-0 " style="font-size: 1 rem">Logout</a>
					</div>
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
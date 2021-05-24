<%@page import="com.dto.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
            <jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

 <%
		if(user!=null && user.getUserId()>0){
%>
     <%@ include file="cache_control.jsp"  %>
    
    
<%
	int busId = Integer.parseInt(request.getParameter("BusId"));
	int prevBookedSeats = Integer.parseInt(request.getParameter("BookedSeats"));
	int prevAvailableSeats = Integer.parseInt(request.getParameter("AvailableSeats"));
	System.out.println(prevBookedSeats);
	System.out.println("available "+prevAvailableSeats);
	
%>
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Seats</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
 <div class="container-fluid">
	<div class="row">
	<div class="container-fluid">
	<div class="jumbotron d-flex justify-content-center align-items-center bg-info" style="height:12vh">
		<h1 style="color: white">BUS BOOKING FORM</h1>
	</div>
	<a class="btn btn-dark btn-md ml-4 mb-4" href="BusSearch.jsp">Back</a>
		<div class="col">
			<form action="Book.jsp" method="post">
				<div class="form-group">
		    		<label for="formGroupExampleInput">Bus Id :</label>
		    		<input type="number" class="form-control" value="<%=busId%>" name="busId" id="formGroupExampleInput" placeholder="Enter Bus Id" readonly>
		  		</div>
				
				
		  		<div class="form-group">
		    		<label for="formGroupExampleInput">Enter No Of Seats :</label>
		    		<input type="number" class="form-control" name="bookedSeats" id="formGroupExampleInput" placeholder="Enter no of seats">
		  		</div>
		  		
		  		<div class="form-group">
		    		<input type="hidden" class="form-control" name="prevBookedSeats" value="<%=prevBookedSeats%>"  id="formGroupExampleInput" placeholder="Enter no of seats" readonly>
		  		</div>
		  		<div class="form-group">
		    		<input type="hidden" class="form-control" name="prevAvailableSeats" value="<%=prevAvailableSeats%>"  id="formGroupExampleInput" placeholder="Enter no of seats" readonly>
		  		</div>
  		
  		
  			<button type="submit" class="btn btn-primary">Submit</button>
 		
		</form>
		</div>
	</div>
  </div>
	
</body>
</html>

<%
		}else{
			response.sendRedirect("UserLoginForm.jsp");
		}
%>
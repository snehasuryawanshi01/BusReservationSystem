<%@page import="com.dto.BusDetails"%>
<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <jsp:useBean id="admin" class="com.dto.Admin" scope="session"></jsp:useBean>

 <%
		if(admin!=null && admin.getAdminId()>0){
%>
    <%@ include file="cache_control.jsp"  %> 

<%
	int busId = Integer.parseInt(request.getParameter("BusId"));
	System.out.println(busId);
	BusService busService=new BusServiceImple();
	BusDetails b=busService.getbusUpdateInfo(busId);
	
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Form</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
<div class="container">
<div class="jumbotron d-flex justify-content-center align-items-center bg-info" style="height:12vh">
		<h1 style="color: white">UPDATE FORM</h1>
	</div>
	<td><a class="btn btn-dark btn-md mb-2" href="ListBusForm.jsp">Back</a></td>
	<div class="col" style="height:88vh">
	<form action="UpdateBus.jsp">
	
  		<div class="form-group">
    		<label for="formGroupExampleInput">Bus Id: </label>
    		<input type="number" class="form-control" name="busId" value="<%=b.getBusId() %>" id="formGroupExampleInput" placeholder="Enter Bus Id" readonly>
  		</div>
  		
  		<div class="form-group">
    		<label for="formGroupExampleInput2">Source: </label>
    		<input type="text" class="form-control" name="source" id="formGroupExampleInput2" value="<%=b.getSource() %>" placeholder="Enter Source">
 		</div>
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Destination: </label>
    		<input type="text" class="form-control" name="destination" id="formGroupExampleInput2" value="<%=b.getDestination() %>" placeholder="Enter Destination">
 		</div>
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Date : </label>
    		<input type="text" class="form-control" name="date" id="formGroupExampleInput2" value="<%=b.getDate() %>" placeholder="YYYY-MM-DD">
 		</div> 		
 		
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Time : </label>
    		<input type="text" class="form-control" name="time" id="formGroupExampleInput2" value="<%=b.getTime() %>" placeholder="HH:MM AM/PM">
 		</div>
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Available Seats : </label>
    		<input type="number" class="form-control" name="availableSeats" id="formGroupExampleInput2" value="<%=b.getAvailableSeats() %>" placeholder="Enter Available Seats">
 		</div>
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Booked Seats : </label>
    		<input type="number" class="form-control" name="bookedSeats" id="formGroupExampleInput2" value="<%=b.getBookedSeats() %>" placeholder="Enter Booked Seats">
 		</div>
 		
 		<div class="form-group">
    		<label for="formGroupExampleInput2">Amount : </label>
    		<input type="number" class="form-control" name="amount" id="formGroupExampleInput2" value="<%=b.getAmount() %>" placeholder="Amount">
 		</div>
 		
 		<button type="submit" class="btn btn-primary">Update</button>
 		
	</form>
	</div>
	</div>
</body>
</html>

<%
		}else{
			response.sendRedirect("AdminLogin.jsp");
		}
%>

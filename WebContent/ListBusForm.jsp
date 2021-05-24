<%@page import="com.dto.BusDetails"%>
<%@page import="java.util.ArrayList"%>
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
BusService busService=new BusServiceImple();
ArrayList<BusDetails> list=busService.showBus();
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Buses</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid">
	<div class="d-flex justify-content-center align-items-center bg-info" style="height:12vh">
		<h1 style="color: white">ALL BUSES</h1>
	</div>
	
	<div class="row justify-content-between mt-4">
	<a class="btn btn-dark btn-md ml-4 " href="AdminHome.jsp">Back</a>
	<a href="Logout.jsp" class="btn btn-danger my-2 my-sm-0 justify-content-end mr-4 " style="font-size: 1 rem">Logout</a>
	</div>
	
		<div class="row justify-content-center align-items-center mt-5">
			<div class="col-10">
				<table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th >Bus Id</th>
      <th >Source</th>
      <th >Destination</th>
      <th >Date</th>
      <th >Time</th>
      <th >Available Seats</th>
      <th >Booked Seats</th>
      <th >Amount</th>
      <th >Update</th>
      <th >Delete</th>
    </tr>
  </thead>
  <tbody>
  
  <% for(BusDetails b : list){ %>
    <tr>
     
      <td><%=b.getBusId() %></td>
      <td><%=b.getSource()%></td>
      <td><%=b.getDestination() %></td>
      <td><%=b.getDate() %></td>
      <td><%=b.getTime() %></td>
      <td><%=b.getAvailableSeats() %></td>
      <td><%=b.getBookedSeats()%></td>
      <td><%=b.getAmount() %></td>
      <td><a class="btn btn-info btn-sm" href="UpdateBusForm.jsp?BusId=<%=b.getBusId()%>">Update</a></td>
      <td><a class="btn btn-danger btn-sm" href="deleteBus.jsp?BusId=<%=b.getBusId()%>">Delete</a></td>
      
      
      </tr>
    <%} %>
  </tbody>
</table>			
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

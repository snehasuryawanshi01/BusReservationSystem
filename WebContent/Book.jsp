
<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>
<%@page import="com.dto.BusDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<jsp:useBean id="busDetails" class="com.dto.BusDetails" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="busDetails"/>

<%
BusService busService=new BusServiceImple();
int prevBookedSeats = Integer.parseInt(request.getParameter("prevBookedSeats"));
int prevAvailableSeats = Integer.parseInt(request.getParameter("prevAvailableSeats"));
int totalAvailableSeats=prevAvailableSeats-busDetails.getBookedSeats();
int totalBookedSeats= prevBookedSeats + busDetails.getBookedSeats();
busService.UpdateBookedSeats(busDetails.getBusId(), totalBookedSeats,totalAvailableSeats);


//System.out.println(prevAvailableSeats);
//System.out.println(totalAvailableSeats);

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Booking Confirmed</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" 
integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
</head>
<body>
	<div class="container-fluid ">
		<div class="row justify-content-center align-items-center" style="margin-top:150px" >
			<div class="col">
				<div class="d-flex flex-column justify-content-center align-items-center">
				<div style="background:url(images/greenTick.png)center no-repeat;height:100px;width:100px" ></div>
					<div class="jumbotron-fluid d-flex justify-content-center align-items-center">
						 
						<h1>Booking Confirmed</h1>
					</div>
				<a href="UserHome.jsp" style="margin-top: 100px" class="col-6 btn-lg btn btn-primary btn-block" role="button">Go to Home Page</a>
				</div>
			</div>
		</div>
	</div>
	

</body>
</html>
	<%@page import="java.util.ArrayList"%>
<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>
<%@page import="com.dto.BusDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <jsp:useBean id="user" class="com.dto.User" scope="session"></jsp:useBean>

 <%
		if(user!=null && user.getUserId()>0){
%>
     <%@ include file="cache_control.jsp"  %>
    <%
    	BusService busService=new BusServiceImple();
    	ArrayList<BusDetails> busSource =busService.getSource();
    	ArrayList<BusDetails> busDestination=busService.getDestination();
    
    %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User home Page</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">

</head>
<body>
	<div class="container-fluid">
		<div class="row mt-3">
			<div class="col-3"></div>
			<div class="col-3"></div>
			<div class="col-3"></div>
			<div class="col-3 d-flex justify-content-center align-item-center ">
			<button class="btn btn-danger"><a href="UserLogout.jsp" style="font-size: 1 rem;text-decoration: none;color:white">Logout</a></button>
			</div>
		</div>
		
		<div class=" row mt-3 d-flex flex-column justify-content-center align-items-center" >
		
		
		<div class="jumbotron text-light bg-info d-flex justify-content-center align-items-center vw-100" style="height:10vh">
		<h1>BUS SEARCH</h1>
		
		</div>
		
		
		
		
		<form action="BusSearch.jsp" class="d-flex justify-content-center align-items-center" style="width: 90vw; border:5px double black">
			<div class="row d-flex justify-content-center align-items-center" style="height: 30vh; width:80%;">
			
			
			
			<div class="col">
				<div class="input-group mb-3">
				
	  				<div class="input-group-prepend">
	    				<label class="input-group-text" for="inputGroupSelect01">Choose Source </label>
					</div>
					
					<select class="custom-select" name="source" id="inputGroupSelect01">
					    <option selected>Choose...</option>
					    <% for(BusDetails b: busSource) {%>
					    <option  value="<%=b.getSource()%>"><%=b.getSource()%></option>
					    <%} %>
					 </select> 
					 
				</div>
			
			</div>
			
			
			<div class="col">
				<div class="input-group mb-3">
				
	  				<div class="input-group-prepend">
	    				<label class="input-group-text" for="inputGroupSelect01">Choose Destination </label>
					</div>
					
					<select class="custom-select" name="destination" id="inputGroupSelect01">
					    <option selected>Choose...</option>
					    <% for(BusDetails b: busDestination) {%>
					    <option value="<%=b.getDestination()%>"><%=b.getDestination()%></option>
					    <%} %>
					 </select> 
					 
				</div>
			</div>
			
			
			<div class="col">
				<div class="input-group mb-3">
				
	  				<div class="input-group-prepend">
	    				<label class="input-group-text" for="inputGroupSelect01">Choose Date </label>
					</div>
					
					<input type="text" placeholder="YYYY/MM/DD" name="date">
				</div>
				
			</div>
		
		</div>
		
		<button type="submit" class="col-2  p-2 btn-sm mb-3 btn-block btn-success">SEARCH</button>
		
		</form>

		</div>
		
			
	</div>
</body>
</html>

<%
		}else{
			response.sendRedirect("UserLoginForm.jsp");
		}
%>

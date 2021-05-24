<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>

<%

int busId = Integer.parseInt(request.getParameter("BusId"));
BusService busService=new BusServiceImple();
busService.deleteBus(busId);
response.sendRedirect("ListBusForm.jsp");

%>
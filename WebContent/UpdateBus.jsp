<%@page import="com.sun.nio.sctp.SendFailedNotification"%>
<%@page import="com.dto.BusDetails"%>
<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>
<jsp:useBean id="busDetails" class="com.dto.BusDetails" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="busDetails"/>

<% 
BusService busService=new BusServiceImple();
busService.updateBusDetails(busDetails);
response.sendRedirect("ListBusForm.jsp");

%>
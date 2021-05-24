<%@page import="com.service.BusServiceImple"%>
<%@page import="com.service.BusService"%>

<jsp:useBean id="busDetails" class="com.dto.BusDetails" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="busDetails"/>

<%

BusService busService =new BusServiceImple();
int b=busService.addBus(busDetails);
response.sendRedirect("AdminHome.jsp");

%>
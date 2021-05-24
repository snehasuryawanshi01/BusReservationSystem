<%@page import="com.service.AdminServiceImple"%>
<%@page import="com.service.AdminService"%>
<jsp:useBean id="admin" class="com.dto.Admin" scope="page"></jsp:useBean>
<jsp:setProperty property="*" name="admin"/>

<% 

AdminService adminService=new AdminServiceImple();
adminService.register(admin);
response.sendRedirect("AdminLogin.jsp");
System.out.println(admin.toString());

%>